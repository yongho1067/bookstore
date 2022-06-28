
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'총,균,쇠',
'국내서적',
'역사',
'2005/12/19',
'재레드 다이아몬드',
'문학사상',
 25200,
9.1,
11,
'인류문명의 불균형은 총, 균, 쇠 때문이다!',
'"image/book3.png"'
);-- 국내역사 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'축의 시대',
'국내서적',
'역사',
'2010/12/20',
'카렌 암스트롱',
'교양인',
28800,
9.2,
10,
'인간 창조성이 가장 뜨겁게 폭발했던 경이로운 시대, 축의 시대!',
'"image/book9.png"'
);-- 국내역사 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'메트로폴리스',
'국내서적',
'역사',
'2021/03/08',
'벤 윌슨',
'매일경제신문사',
24300,
9.4,
12,
'인간의 가장 위대한 발명품, 도시의 역사로 보는 인류문명사
,문명의 창조, 발전, 교류에 관한 황홀하고 위대한 서사!',
'"image/book14.png"'
);-- 국내역사 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'신의지문',
'국내서적',
'역사',
'2017/01/20',
'그레이엄 핸콕',
'까치',
20700,
9.2,
11,
'사라진 문명의 흔적을 찾아서!',
'"image/book11.png"'
);-- 국내역사 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'최초의 역사 수메르',
'국내서적',
'역사',
'2021/12/27',
'김산해',
'휴머니스트',
29700,
9.5,
14,
'세상 모든 만물의 시작, 수메르
모래바람에 뒤덮여 있던 최초의 역사가 되살아난다.',
'"image/book17.png"'
);-- 국내역사 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'세종의 허리 가우디의 뼈',
'국내서적',
'역사',
'2021/09/23',
'이지환',
'부키',
15120,
10.0,
15,
' 나는 역사 속 위인들을 진찰하는 의사입니다
의학과 추리의 눈으로 바라본 뜻밖의 인물사',
'"image/book18.png"'
);-- 국내역사 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'수메르 혹은 신들의 고향',
'국내서적',
'역사',
'2009/11/25',
'제카리아 시친',
'이근영',
19800,
9.5,
14,
'우리는 현존하는 모든 종교와 신들의 정체는 물론, 
그 계보와 각국 신화들로의 번안 과정, 그리고 신과 인간의 관계를 
둘러싼 모든 의문에 대한 상세하고도 지적인 해답을 얻을 수 있다.',
'"image/book8.png"'
);-- 국내역사 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'역사의 종말',
'국내서적',
'역사',
'1922/11/15',
'이상훈',
'한마음사',
15300,
9.5,
16,
'세계의 학계와 매스컴에 격렬한 논쟁을 불러일으킨 화제의 책.',
'"image/book20.png"'
);-- 국내역사 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'현대화와 민속문화',
'국내서적',
'역사',
'2020/12/30',
'강정원',
'민속원',
18000,
0.0,
18,
'서울대학교 비교문화연구소 한국인류학총서',
'"image/book15.png"'
);-- 국내역사 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'인류학의 거장들',
'국내서적',
'역사',
'2016/12/20',
'체리 무어',
'한길사',
19800,
9.5,
20,
'인류학에 관심은 있지만 무슨 책부터 읽어야 할지 모르는 
사람들에게는 이보다 좋은 길잡이!',
'"image/book13.png"'
);-- 국내역사 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'식인문화의 수수께끼',
'국내서적',
'역사',
'2019/07/05',
'마빈 해리스',
'한길사',
18000,
10.0,
9,
'식인풍습이 만연했던 지역의 지형, 기후, 동식물의 생태계, 농업활동 여부, 경제규모 등을 바탕으로 인간고기를
‘먹을 수밖에 없었던’ 또는 ‘먹게 된’ 이유를 규명',
'"image/book19.png"'
);-- 국내역사 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'인구의 힘',
'국내서적',
'역사',
'2020/08/21',
'폴 폴런드',
'미래의창',
16200,
9.6,
8,
'인구는 언제나 중요했다.',
'"image/book1.png"'
);-- 국내역사 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'왜 서양이 지배하는가',
'국내서적',
'역사',
'2013/05/27',
'이언 모리스',
'글항아리',
37800,
9.7,
7,
'유사 이래 경쟁해온 동서양 문명을 비교·분석하다!',
'"image/book6.png"'
);-- 국내역사 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'민족의 인종적 기원',
'국내서적',
'역사',
'2018/02/10',
'앤서니 D. 스미스',
'그린비',
26100,
9.3,
6,
'오늘날 세계질서의 기본 단위로 자리잡은 민족과 
민족국가의 기원과 형성과정을 추적하고 있는 책',
'"image/book2.png"'
);-- 국내역사 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'마르탱 게르의 귀향',
'국내서적',
'역사',
'2000/03/04',
'나탈리 제먼 데이비스',
'지식의 풍경',
10800,
9.5,
5,
'1540년 말 피레네 산맥 근처 프랑스의 한 마을에 한 농민이 부인과 아들을 남겨두고 집을 떠난다. 
오랜 시간 후 그는 돌아와 다시 가족과 함께 살고 딸까지 낳는다. 
그런데 어느날 부인은 그 남자가 자신의 남편이 아니라고 고소를 한다. 과연 ?',
'"image/book10.png"'
);-- 국내역사 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'왜 나쁜 역사는 반복되는가',
'국내서적',
'역사',
'2017/05/20',
'제니퍼 웰시',
'산처럼',
13500,
0.0,
4,
'자유민주주의 국가들이 직면한 이런 위기들을 극복하기 위해 역사를 다시 읽으며, 
국내외적인 문제에 어떻게 대처하고 무엇을 배울 것인가를 생각해야 한다',
'"image/book7.png"'
);-- 국내역사 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'역사에 대해 생각하기',
'국내서적',
'역사',
'2019/05/30',
'사라 마자',
'책과함께',
18000,
10,
3,
'역사의식을 바탕으로, 지난 수십 년 동안 역사학에 
제기된 질문과 논쟁에 따라 과거라는 개념이 
얼마나 역동적으로 변화해 왔는지를 보여준다',
'"image/book16.png"'
);-- 국내역사 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'지성사란 무엇인가?',
'국내서적',
'역사',
'2020/04/07',
'리처드 왓모어',
'오월의봄',
17100,
9.4,
2,
'역사 속 사상과 언어를
가장 풍부하게 다루는 사유의 방법,
‘지성사 연구’를 만나다',
'"image/book4.png"'
);-- 국내역사 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'문명과 물질',
'국내서적',
'역사',
'2021/05/07',
'스티븐 L. 사스',
'위즈덤하우스',
17100,
5.0,
1,
'우연히 발견한 물질이 인류의 문명을 이끌었다
편리하고 쓸모 있게 진화하는 물질의 흥미로운 연대기',
'"image/book5.png"'
);-- 국내역사 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'기후, 문명의 지도를 바꾸다',
'국내서적',
'역사',
'2021/05/03',
'브라이언 페이건',
'씨마스21',
19800,
10.0,
0,
'인류의 운명을 결정하는 힘, 기후!',
'"image/book12.png"'
);-- 국내역사 20

SELECT * FROM book_table; 

DELETE FROM book_table;



