
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'구글 엔지니어는 이렇게 일한다',
'국내서적',
'컴퓨터',
'2021/05/10',
'타이터스 원터스',
'한빛미디어',
 40500,
8.9,
11,
'구글은 어떻게 개발하고 코드를 관리하는가!'
);-- 국내컴퓨터 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'혼자 공부하느 머신러닝+딥러닝',
'국내서적',
'컴퓨터',
'2020/12/21',
'박해선',
'한빛미디어',
  23400,
9.7,
19,
'혼자 해도 충분하다! 1:1 과외하듯 배우는 인공지능 자습서'
);-- 국내컴퓨터 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'한 권으로 읽는 컴퓨터 구조와 프로그래밍',
'국내서적',
'컴퓨터',
'2021/04/08',
'조너선 스타인하트',
'책만',
 31500,
9.0,
17,
'커튼 뒤에 감춰진 컴퓨터 구조와 프로그래밍에 대한 
거의 모든 것을 다루는 컴퓨터공학 개론서'
);-- 국내컴퓨터 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'밑바닥부터 시작하는 딥러닝',
'국내서적',
'컴퓨터',
'2017/01/03',
'사이토 고키',
'한빛미디어',
21600,
9.6,
11,
'직접 구현하고 움직여보며 익히는 가장 쉬운 딥러닝 입문서!'
);-- 국내컴퓨터 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'자연어 처리의 정석',
'국내서적',
'컴퓨터',
'2022/05/30',
'제이콥 에어젠슈타인',
'에이콘출판',
 45000,
0.0,
16,
'자연어 처리와 머신러닝/딥러닝을 통합하고 
해당 과정들을 자세하게 설명하는 책.'
);-- 국내컴퓨터 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'딥러닝 파이토치 교과서',
'국내서적',
'컴퓨터',
'2022/03/04',
'서지영',
'길벗',
32400,
10.0,
15,
'기본기에 충실한 딥러닝 파이토치 입문서!'
);-- 국내컴퓨터 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Do it! BERT와 GPT로 배우는 자연어 처리',
'국내서적',
'컴퓨터',
'2021/12/01',
'이기창',
'이지스퍼블리싱',
18000,
10.0,
13,
'사람 말을 알아듣는 AI’를 만들어 보자!
트랜스포머 핵심 원리부터 문서 분류, 기계 독해, 문장 생성 실습까지!.'
);-- 국내컴퓨터 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'머신러닝 딥러닝 문제해결 전략',
'국내서적',
'컴퓨터',
'2022/04/13',
'신백균',
'골든래빗',
34200,
0.0,
14,
'문제해결 방식에 정답은 없어도 패턴은 있습니다.'
);-- 국내컴퓨터 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'클린 아키텍처',
'국내서적',
'컴퓨터',
'2021/11/26',
'톰 홈버그',
'위키북스',
16200,
10.0,
18,
'육각형 아키텍처 스타일의 애플리케이션을 만드는 데 필요한 모든 지식'
);-- 국내컴퓨터 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'핸즈온 머신러닝',
'국내서적',
'컴퓨터',
'2020/05/04',
'오렐리앙 제롱',
'한빛미디어',
49500,
9.7,
 20,
'컬러판으로 돌아온 아마존 인공지능 분야 부동의 1위 도서'
);-- 국내컴퓨터 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'소프트웨어 아키텍처 101',
'국내서적',
'컴퓨터',
'2021/11/01',
'마크 리처즈',
'한빛미디어',
28820,
10.0,
14,
'막막했던 아키텍처가 쉬워지는 실무 지침서'
);-- 국내컴퓨터 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'MLOps 도입 가이드',
'국내서적',
'컴퓨터',
'2022/04/29',
'데이터이쿠',
'한빛미디어',
19800,
10.0,
8,
'MLOps의 개념부터 도입과 활용까지,
성공적인 머신러닝 운영화를 위한 실용 가이드!'
);-- 국내컴퓨터 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'딥러닝을 위한 파이토치 입문',
'국내서적',
'컴퓨터',
'2022/01/20',
'딥러닝호형',
'영진닷컴',
22500,
10.0,
7,
'파이토치로 시작하는 딥러닝 구축과 활용'
);-- 국내컴퓨터 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'파이썬 머신러닝 판다스 데이터 분석',
'국내서적',
'컴퓨터',
'2019/06/15',
'오승환',
'정보문화사',
22500,
9.5,
6,
'데이터 과학자가 되기 위한 첫걸음!'
);-- 국내컴퓨터 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'개발자도 알아야할 소프트웨어 테스팅 실무',
'국내서적',
'컴퓨터',
'2010/09/15',
'권원일',
'STA',
25200,
9.1,
5,
'테스팅을 어려워하는 이들도 실무에 대한 내용을 파악할 수 있도록 
소프트웨어 테스팅에 대한 상세한 정보를 제공'
);-- 국내컴퓨터 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'쉽게 배우는 운영체제',
'국내서적',
'컴퓨터',
'2018/06/30',
'조성호',
'한빛아카데미',
28000,
9.3,
4,
'컴퓨터 관련 학과 학생을 대상으로 운영체제의 구조와 원리를 설명한 책'
);-- 국내컴퓨터 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'텐서플로 2와 머신러닝으로 시작하는 자연어 처리',
'국내서적',
'컴퓨터',
'2022/03/24',
'전창욱',
'위키북스',
32400,
0.0,
3,
'텐서플로 2와 BERT, GPT를 활용해 구현한 한국어 자연어 처리 모델의 성능을 한층 끌어올리는 
퓨샷 러닝과 피-튜닝 기법을 추가했습니다!'
);-- 국내컴퓨터 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'한 걸음씩 따라 하는 NFT 아트',
'국내서적',
'컴퓨터',
'2022/06/01',
'루미블루',
'루비페이퍼',
16200,
0.0,
2,
'현실과 메타버스를 넘나드는 NFT 크리에이터의 모든 것
취미 생활에서 수익 창출까지, 누구나 도전하는 NFT 아트'
);-- 국내컴퓨터 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'클린 아키텍처: 소프트웨어 구조와 설계의 원칙',
'국내서적',
'컴퓨터',
'2019/08/20',
'로버트 C. 마틴',
'인사이트',
26100,
9.6,
1,
'살아있는 전설이 들려주는 실용적인 소프트웨어 아키텍처 원칙'
);-- 국내컴퓨터 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'그림으로 배우는 딥러닝',
'국내서적',
'컴퓨터',
'2022/05/31',
'앤드류 글래스너',
'에이콘출판',
54000,
0.0,
0,
'복잡한 수식과 코드 없이 머신러닝과 딥러닝을 배우는 데 꼭 필요한 이론을 배울 수 있도록 구성'
);-- 국내컴퓨터 20

SELECT * FROM book_table; 

DELETE FROM book_table;










CREATE TABLE grade_table( -- 평점 댓글 테이블
mem_id_num NUMBER(5) ,
bo_grade NUMBER(5),
comment_ VARCHAR2(10) -- 댓글 
);