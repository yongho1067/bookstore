
DROP TABLE book_table;
CREATE TABLE book_table ( -- 책테이블
bo_id NUMBER(5) PRIMARY KEY, -- 책의 아이디
bo_name VARCHAR2(100) NOT NULL, -- 책의이름 
bo_cc VARCHAR2(20) NOT NULL, -- 책의분류 ex) 국내서적 ,해외서적
bo_janre VARCHAR2(20) NOT NULL, -- 책의장르 ex)  소설, 역사, 만화
bo_date DATE NOT NULL, -- 출간일 
bo_author VARCHAR2(50) NOT NULL, -- 작가
bo_pb VARCHAR2(50) NOT NULL, -- 책출판사
bo_price NUMBER(10) NOT NULL, -- 책의 가격
bo_grade NUMBER(5,2), -- 책의 평점 
bo_count NUMBER(5) NOT NULL, -- 책의 재고
bo_ex VARCHAR2(1000) -- 책설명
);


DROP TABLE mem_table;
CREATE TABLE mem_table( -- 회원 테이블
mem_id_num NUMBER(5) PRIMARY KEY, -- 회원의 고유값
mem_id VARCHAR2(20) UNIQUE NOT NULL, -- 회원의 아이디
mem_name VARCHAR2(10) NOT NULL, -- 회원이름
mem_bd DATE NOT NULL, -- 회원 생년월일
mem_email VARCHAR2(50) UNIQUE NOT NULL, -- 회원 이메일 
mem_pn1 NUMBER(5) NOT NULL, -- 010 부분
mem_pn2 NUMBER(5) NOT NULL, -- 전화번호 앞자리
mem_pn3 NUMBER(5) NOT NULL, -- 전화번호 뒷자리
mem_pw VARCHAR2(10) NOT NULL, -- 회원비밀번호
mem_pw_ck VARCHAR2(10) NOT NULL -- 회원비밀번호 확인
);




SELECT * FROM book_table; 

DELETE FROM book_table;



CREATE TABLE grade_table( -- 평점 댓글 테이블
mem_id_num NUMBER(5) ,
bo_grade NUMBER(5),
comment_ VARCHAR2(10) -- 댓글 
);

DROP TABLE basket_table;
CREATE TABLE basket_table( -- 장바구니 테이블
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
--'홍길동',
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