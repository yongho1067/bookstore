CREATE TABLE book_table ( -- å���̺�
bo_id NUMBER(5) PRIMARY KEY, -- å�� ���̵� (������)
bo_name VARCHAR2(20) NOT NULL, -- å���̸� 
bo_cc VARCHAR2(10) NOT NULL, -- å�Ǻз� ex) �������� ,�ؿܼ���
bo_janre VARCHAR2(10) NOT NULL, -- å���帣 ex)  �Ҽ�, ����, ��ȭ
bo_date DATE  DEFAULT SYSDATE, -- �Ⱓ�� ���ε��� �ð����� 
bo_author VARCHAR2(10) NOT NULL, -- �۰�
bo_pb VARCHAR2(10) NOT NULL, -- å���ǻ�
bo_price VARCHAR2(10) NOT NULL, -- å�� ����
bo_grade NUMBER(5), -- å�� ���� 
bo_count NUMBER(5) NOT NULL -- å�� ���
);

CREATE TABLE mem_table( -- ȸ�� ���̺�
mem_id_num NUMBER(5) PRIMARY KEY, -- ȸ���� ������
mem_name VARCHAR2(10) NOT NULL, -- ȸ���̸�
mem_bd DATE NOT NULL, -- ȸ�� �������
mem_email VARCHAR2(10) NOT NULL, -- ȸ�� �̸��� 
mem_pn1 NUMBER(5) NOT NULL, -- 010 �κ�
mem_pn2 NUMBER(5) NOT NULL, -- ��ȭ��ȣ ���ڸ�
mem_pn3 NUMBER(5) NOT NULL, -- ��ȭ��ȣ ���ڸ�
mem_pw VARCHAR2(10) NOT NULL, -- ȸ����й�ȣ
mem_pw_ck VARCHAR2(10) NOT NULL -- ȸ����й�ȣ Ȯ��
);

CREATE TABLE grade_table( -- ���� ��� ���̺�
mem_id_num NUMBER(5) PRIMARY KEY,
bo_grade NUMBER(5),
comment VARCHAR2(10) -- ��� 
);