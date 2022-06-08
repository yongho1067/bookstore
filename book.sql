CREATE TABLE book_table ( -- 책테이블
bo_id NUMBER(5) PRIMARY KEY, -- 책의 아이디 (고유값)
bo_name VARCHAR2(20) NOT NULL, -- 책의이름 
bo_cc VARCHAR2(10) NOT NULL, -- 책의분류 ex) 국내서적 ,해외서적
bo_janre VARCHAR2(10) NOT NULL, -- 책의장르 ex)  소설, 역사, 만화
bo_date DATE  DEFAULT SYSDATE, -- 출간일 업로드한 시간으로 
bo_author VARCHAR2(10) NOT NULL, -- 작가
bo_pb VARCHAR2(10) NOT NULL, -- 책출판사
bo_price VARCHAR2(10) NOT NULL, -- 책의 가격
bo_grade NUMBER(5), -- 책의 평점 
bo_count NUMBER(5) NOT NULL -- 책의 재고
);

CREATE TABLE mem_table( -- 회원 테이블
mem_id_num NUMBER(5) PRIMARY KEY, -- 회원의 고유값
mem_name VARCHAR2(10) NOT NULL, -- 회원이름
mem_bd DATE NOT NULL, -- 회원 생년월일
mem_email VARCHAR2(10) NOT NULL, -- 회원 이메일 
mem_pn1 NUMBER(5) NOT NULL, -- 010 부분
mem_pn2 NUMBER(5) NOT NULL, -- 전화번호 앞자리
mem_pn3 NUMBER(5) NOT NULL, -- 전화번호 뒷자리
mem_pw VARCHAR2(10) NOT NULL, -- 회원비밀번호
mem_pw_ck VARCHAR2(10) NOT NULL -- 회원비밀번호 확인
);

CREATE TABLE grade_table( -- 평점 댓글 테이블
mem_id_num NUMBER(5) PRIMARY KEY,
bo_grade NUMBER(5),
comment VARCHAR2(10) -- 댓글 
);