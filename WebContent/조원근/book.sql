
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
mem_bd VARCHAR2(20) NOT NULL, -- 회원 생년월일
mem_email VARCHAR2(50) NOT NULL, -- 회원 이메일 
mem_pn VARCHAR2(20) NOT NULL, -- 회원 전화번호 
mem_pw VARCHAR2(10) NOT NULL -- 회원 비밀번호
);

INSERT INTO mem_table
VALUES(
1,
'아이디',
'북적',
'19961111',
'bookstore',
'01022223333',
'password'
);


SELECT * FROM book_table; 

SELECT * FROM book_table where rownum <=3 order by bo_grade desc ; 

DELETE FROM book_table;


drop table grade_table;
CREATE TABLE grade_table( -- 평점 댓글 테이블
mem_id_num NUMBER(5) , -- 회원번호
bo_id number(5) PRIMARY KEY, -- 책번호
bo_grade NUMBER(5), -- 평점
comment_ VARCHAR2(10), -- 댓글
foreign key (bo_id) REFERENCES book_table(bo_id),
foreign key (mem_id_num) REFERENCES mem_table(mem_id_num)

);

INSERT INTO grade_table
VALUES(
1,
1,
3,
'보통'
);

SELECT * FROM grade_table; 

DROP TABLE basket_table;
CREATE TABLE basket_table( -- 장바구니 테이블
bas_order NUMBER GENERATED ALWAYS as IDENTITY(START with 1 INCREMENT by 1), 
PRIMARY KEY(bas_order) , -- 주문번호
bas_count NUMBER(5), -- 갯수
bas_total NUMBER(20), -- 갯수

bas_address_1 VARCHAR2(200), -- 주소

bas_address_2 VARCHAR2(200), -- 주소
bo_id NUMBER(5),
mem_id_num NUMBER(5) ,
foreign key (bo_id) REFERENCES book_table(bo_id),
foreign key (mem_id_num) REFERENCES mem_table(mem_id_num)
);
ALTER TABLE basket_table add unique (bo_id , mem_id_num);



SELECT * FROM basket_table;



DROP SEQUENCE mem_seq ;
CREATE SEQUENCE mem_seq
START WITH 1
INCREMENT BY 1;


SELECT
    * FROM mem_table;
    
    
    
    commit;
    

    
    
    
    
    
    