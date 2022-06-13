
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
mem_bd DATE NOT NULL, -- ȸ�� �������
mem_email VARCHAR2(50) UNIQUE NOT NULL, -- ȸ�� �̸��� 
mem_pn1 NUMBER(5) NOT NULL, -- 010 �κ�
mem_pn2 NUMBER(5) NOT NULL, -- ��ȭ��ȣ ���ڸ�
mem_pn3 NUMBER(5) NOT NULL, -- ��ȭ��ȣ ���ڸ�
mem_pw VARCHAR2(10) NOT NULL, -- ȸ����й�ȣ
mem_pw_ck VARCHAR2(10) NOT NULL -- ȸ����й�ȣ Ȯ��
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
bas_order NUMBER(5) PRIMARY KEY ,
bas_count NUMBER(5),
bas_total NUMBER(5),
bo_id NUMBER(5) REFERENCES book_table(bo_id),
mem_id_num NUMBER(5)  REFERENCES mem_table(mem_id_num)
);

INSERT INTO basket_table VALUES(2,2,15000,21,22);

SELECT * FROM basket_table;


DROP SEQUENCE mem_seq ;
CREATE SEQUENCE mem_seq
START WITH 1
INCREMENT BY 1;
--
--INSERT INTO mem_table VALUES(
--MEM_SEQ.NEXTVAL,
--'ȫ�浿',
--'1996/05/23',
--'s1234@naver.com',
--010,
--1234,
--1234,
--12345,
--12345
--);
--SELECT
--    * FROM mem_table;