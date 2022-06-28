
DROP TABLE book_table;
CREATE TABLE book_table ( -- å���̺�
bo_id NUMBER(5) PRIMARY KEY, -- å�� ���̵�
bo_name VARCHAR2(100) NOT NULL, -- å���̸� 
bo_cc VARCHAR2(20) NOT NULL, -- å�Ǻз� ex) �������� ,�ؿܼ���
bo_janre VARCHAR2(20) NOT NULL, -- å���帣 ex)  �Ҽ�, ����, ��ȭ
bo_date DATE NOT NULL, -- �Ⱓ�� 
bo_author VARCHAR2(50) NOT NULL, -- �۰�
bo_pb VARCHAR2(50) NOT NULL, -- å���ǻ�
bo_price NUMBER(10) NOT NULL, -- å�� ����
bo_grade NUMBER(5,2), -- å�� ���� 
bo_count NUMBER(5) NOT NULL, -- å�� ���
bo_ex VARCHAR2(1000), -- å����
bo_img VARCHAR2(50) -- å�̹���(img ��� ����ؼ�, �������� book(����) , ���� Ȯ���ڴ� png�� ) 
);


DROP TABLE mem_table;
CREATE TABLE mem_table( -- ȸ�� ���̺�
mem_id_num NUMBER(5) PRIMARY KEY, -- ȸ���� ������
mem_id VARCHAR2(20) UNIQUE NOT NULL, -- ȸ���� ���̵�
mem_name VARCHAR2(10) NOT NULL, -- ȸ���̸�
mem_bd VARCHAR2(20) NOT NULL, -- ȸ�� �������
mem_email VARCHAR2(50) NOT NULL, -- ȸ�� �̸��� 
mem_pn VARCHAR2(20) NOT NULL, -- ȸ�� ��ȭ��ȣ 
mem_pw VARCHAR2(20) NOT NULL -- ȸ�� ��й�ȣ
);




SELECT * FROM book_table; 

DELETE FROM book_table;


drop table grade_table;
CREATE TABLE grade_table( -- ���� ��� ���̺�
mem_id_num NUMBER(5) , -- ȸ����ȣ
bo_id number(5), -- å��ȣ
bo_grade NUMBER(5), -- ����
comment_ VARCHAR2(10), -- ���
foreign key (bo_id) REFERENCES book_table(bo_id),
foreign key (mem_id_num) REFERENCES mem_table(mem_id_num)

);

DROP TABLE basket_table;
CREATE TABLE basket_table( -- ��ٱ��� ���̺�
bas_order VARCHAR2(100) , -- �ֹ���ȣ
bo_id NUMBER(5),
mem_id_num NUMBER(5) ,
bas_address_1 VARCHAR2(200),-- �ּ� 1
bas_address_2 VARCHAR2(200),-- �ּ� 2
bas_count NUMBER(5), -- ����
primary key(bas_order),
foreign key (bo_id) REFERENCES book_table(bo_id),
foreign key (mem_id_num) REFERENCES mem_table(mem_id_num)
);
ALTER TABLE basket_table add unique (bo_id , mem_id_num);

DROP SEQUENCE bas_seq ;
CREATE SEQUENCE bas_seq
START WITH 1
INCREMENT BY 1;



SELECT * FROM basket_table;


DROP SEQUENCE mem_seq ;
CREATE SEQUENCE mem_seq
START WITH 1
INCREMENT BY 1;


SELECT
    * FROM mem_table;
    
delete  from mem_table;
    
    
INSERT INTO mem_table
VALUES(
MEM_SEQ.nextval,
'a123',
'�达',
'19960523',
'a123@naver.com',
'010-1234-1234',
'a1234'
);
    
    

    
    
    
    
    
    