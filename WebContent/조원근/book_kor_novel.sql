
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'작별인사',
'국내서적',
'소설',
'2022/05/02',
'김영하',
'복복서가',
12600,
9.7,
12,
'누구도 도와줄 수 없는 상황, 혼자 헤쳐나가야 한다
지켜야 할 약속, 붙잡고 싶은 온기',
'"image/book7.png"'
);-- 한국소설 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'불편한 편의점',
'국내서적',
'소설',
'2021/04/20',
'김호연',
'나무옆의자',
12600,
9.8,
11,
'원 플러스 원의 기쁨, 삼각김밥 모양의 슬픔, 만 원에 네 번의 폭소가 터지는 곳!
힘겨운 시대를 살아가는 우리들에게 다가온 조금 특별한 편의점 이야기',
'"image/book17.png"'
);-- 한국소설 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'디 에센셜 한강',
'국내서적',
'소설',
'2022/05/30',
'한강',
'문학동네',
15300,
9.3,
10,
'한강 작가의 장편소설, 단편소설, 시, 산문을 한 권으로 만난다!',
'"image/book6.png"'
);-- 한국소설 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'저만치 혼자서',
'국내서적',
'소설',
'2022/06/01',
'김훈',
'문학동네',
13500,
10.0,
12,
'나는 한 사람의 이웃으로 이 글을 썼다.',
'"image/book3.png"'
);-- 한국소설 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'책들의 부엌',
'국내서적',
'소설',
'2022/05/12',
'김지혜',
'팩토리나인',
13050,
9.6,
13,
'갓 지은 맛있는 책 냄새가 폴폴 풍기는
여기는 ‘소양리 북스 키친’입니다.',
'"image/book10.png"'
);-- 한국소설 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'어서 오세요, 휴남동 서점입니다',
'국내서적',
'소설',
'2022/01/17',
'황보름',
'클레이하우스',
13500,
9.7,
14,
'브런치북 전자책 출판 프로젝트 수상작! 독자 요청 쇄도로 전격 종이책 출간',
'"image/book14.png"'
);-- 한국소설 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'저주토끼',
'국내서적',
'소설',
'2022/04/01',
'정보라',
'아작',
13320,
9.2,
15,
'2022 부커상 최종 후보 지명작!
한국 호러 SF/판타지 대표작가 정보라 대표작',
'"image/book13.png"'
);-- 한국소설 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'애쓰지 않아도',
'국내서적',
'소설',
'2022/04/30',
'최은영',
'마음산책',
13050,
9.6,
16,
'사람의 마음은 좀처럼 지치지를 않나봐요.
자꾸만 노력하려 하고, 다가가려 해요.
나에게도 그 마음이 살아 있어요.',
'"image/book15.png"'
);-- 한국소설 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'달러구트 꿈 백화점',
'국내서적',
'소설',
'2020/07/08',
'이미예',
'팩토리나인',
12420,
9.2,
15,
'잠들어야만 입장 가능한 꿈 백화점에서 일어나는 비밀스럽고도 기묘하며 가슴 뭉클한 판타지 소설',
'"image/book19.png"'
);-- 한국소설 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'모순',
'국내서적',
'소설',
'2013/04/01',
'양귀자',
'쓰다',
11700,
9.8,
14,
'인생은 살아가면서 탐구하는 것!',
'"image/book11.png"'
);-- 한국소설 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'밝은 밤',
'국내서적',
'소설',
'2021/07/27',
'최은영',
'문학동네',
13050,
9.8,
16,
'백 년의 시간을 감싸안으며 이어지는 사랑과 숨의 기록
최은영 첫 장편소설',
'"image/book1.png"'
);-- 한국소설 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'지구 끝의 온실',
'국내서적',
'소설',
'2021/08/18',
'김초엽',
'자이언트북스',
13500,
9.7,
17,
'김초엽 첫 장편소설, 모두가 간절히 기다려온 이야기',
'"image/book8.png"'
);-- 한국소설 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'칵테일, 러브, 좀비',
'국내서적',
'소설',
'2020/04/13',
'조예은',
'안전가옥',
9000,
9.5,
18,
'안전가옥 쇼-트 시리즈의 두 번째 책으로, 조예은 작가의 단편집',
'"image/book9.png"'
);-- 한국소설 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'새의 선물',
'국내서적',
'소설',
'2020/06/03',
'은희경',
'문학동네',
14400,
10.0,
16,
'우리가 열광하고 아꼈던 그때 그 여자아이와 다시 만나다
성장소설의 새로운 클래식 『새의 선물』 100쇄 기념 개정판',
'"image/book20.png"'
);-- 한국소설 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'살인자의 기억법',
'국내서적',
'소설',
'2020/08/28',
'김영하',
'북북서가',
9000,
9.9,
14,
'치밀한 구성과 대담한 문체,
묵직한 주제와 위트로
전 세계 독자를 사로잡은 최고의 심리스릴러',
'"image/book2.png"'
);-- 한국소설 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'작별하지 않는다',
'국내서적',
'소설',
'2020/09/09',
'한강',
'문학동네',
16000,
9.3,
13,
'이곳에 살았던 이들로부터, 이곳에 살아 있는 이들로부터
꿈처럼 스며오는 지극한 사랑의 기억',
'"image/book18.png"'
);-- 한국소설 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'완전한 행복',
'국내서적',
'소설',
'2021/06/08',
'정유정',
'은행나무',
14220,
9.4,
14,
'자기애의 늪에 빠진 삶은 얼마나 위태로운가,
압도적 서사 위 정교하고 서늘한 공포',
'"image/book16.png"'
);-- 한국소설 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'시선으로부터',
'국내서적',
'소설',
'2020/06/05',
'정세랑',
'문학동네',
12600,
9.5,
15,
'한국문학이 당도한 올곧은 따스함, 정세랑 신작 장편소설',
'"image/book12.png"'
);-- 한국소설 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'위저드 베이커리',
'국내서적',
'소설',
'2022/03/27',
'구병모',
'창비',
12600,
9.9,
13,
'50만 부 판매 베스트셀러
위험한 소원이 이루어지는 곳, 위저드 베이커리',
'"image/book4.png"'
);-- 한국소설 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'종의 기원',
'국내서적',
'소설',
'2016/05/16',
'정유정',
'은행나무',
11700,
9.3,
16,
'26년 동안 숨어 있던 내 안의 또 다른 내가 왔다!',
'"image/book5.png"'
);-- 한국소설 20

SELECT * FROM book_table; 

DELETE FROM book_table;

