
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
bo_ex VARCHAR2(1000) -- å����
);


DROP TABLE mem_table;
CREATE TABLE mem_table( -- ȸ�� ���̺�
mem_id_num NUMBER(5) PRIMARY KEY, -- ȸ���� ������
mem_id VARCHAR2(20) UNIQUE NOT NULL, -- ȸ���� ���̵�
mem_name VARCHAR2(10) NOT NULL, -- ȸ���̸�
mem_bd VARCHAR2(20) NOT NULL, -- ȸ�� �������
mem_email VARCHAR2(50) NOT NULL, -- ȸ�� �̸��� 
mem_pn VARCHAR2(20) NOT NULL, -- ȸ�� ��ȭ��ȣ 
mem_pw VARCHAR2(10) NOT NULL -- ȸ�� ��й�ȣ
);




SELECT * FROM book_table; 

DELETE FROM book_table;



CREATE TABLE grade_table( -- ���� ��� ���̺�
mem_id_num NUMBER(5) ,
bo_grade NUMBER(5),
comment_ VARCHAR2(10) -- ��� 
);

DROP TABLE basket_table;
CREATE TABLE basket_table( -- ��ٱ��� ���̺�
bas_order NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
PRIMARY KEY(bas_order) , -- �ֹ���ȣ
bas_count NUMBER(5), -- ����
bas_total NUMBER(5), -- ����
bo_id NUMBER(5) REFERENCES book_table(bo_id),
mem_id_num NUMBER(5)  REFERENCES mem_table(mem_id_num)
);




SELECT * FROM basket_table;



DROP SEQUENCE mem_seq ;
CREATE SEQUENCE mem_seq
START WITH 1
INCREMENT BY 1;


SELECT
    * FROM mem_table;
    
    
    
    
    

    
    
    
    
    
    