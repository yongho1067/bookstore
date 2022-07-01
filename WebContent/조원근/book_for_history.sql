
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Sapiens A Brief History of Humankind',
'외국서적',
'역사',
'2015/04/30',
'Yuval Noah Harari',
'Vintage',
 8700,
9.1,
11,
'이제 우리는 무엇을 인간이라고 할 것인가',
'book16.png'
);-- 외국역사 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Guns, Germs, and Steel',
'외국서적',
'역사',
'2017/03/07',
'Jared Diamond',
'W. W. Northon Company',
  15500,
9.6,
19,
'인류문명의 불균형은 총, 균, 쇠 때문이다!',
'book8.png'
);-- 외국역사 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Homo Deus',
'외국서적',
'역사',
'2017/04/06',
'Yuval Noah Harari',
'Vintage',
 8750,
8.8,
17,
'신이 된 인간, 우리는 어디로 가고 있는가?',
'book18.png'
);-- 외국역사 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Little History of the World',
'외국서적',
'역사',
'2008/09/01',
'Gombirch E H',
'Yale University Press',
9700,
9.7,
11,
'청소년을 위한 <곰브리치 세계사> 제1권.',
'book6.png'
);-- 외국역사 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Night',
'외국서적',
'역사',
'2006/01/16',
'Wiesel Elie',
'Hill and Wang',
 8210,
0.0,
16,
'살아남은 자의 기록',
'book7.png'
);-- 외국역사 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'21 Lessons for the 21st Century',
'외국서적',
'역사',
'2019/08/20',
'Yuval Noah Harari',
'Spiegel and Grau',
10100,
0.0,
15,
'유발 하라리는 예루살렘 히브리 대학교 역사학과 교수다. 
우리 시대 가장 영향력 있는 지성인',
'book15.png'
);-- 외국역사 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Collapse',
'외국서적',
'역사',
'2011/01/04',
'Jared Diamond',
'Penguin Books',
20320,
8.8,
13,
'파괴된 문명의 역사에서 배우는 인류의 미래!',
'book13.png'
);-- 외국역사 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Triumph of the City',
'외국서적',
'역사',
'2012/01/31',
'Glaeser Edward',
'Penguin Books',
15230,
10.0,
14,
'인류 최고의 발명품, 도시!',
'book5.png'
);-- 외국역사 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Little History of Economics',
'외국서적',
'역사',
'2018/02/27',
'Kishtainy',
'Yale University Press',
13880,
8.9,
14,
'간결하면서도 유머러스한 필체로 담아낸 유쾌한 경제학 강의!',
'book1.png'
);-- 외국역사 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Billion Dollar Whale',
'외국서적',
'역사',
'2019/10/22',
'Tom Wright',
'Hachette Book Group ',
10700,
0.0,
 20,
'Named a Best Book of 2018 by the Financial Times and Fortune',
'book11.png'
);-- 외국역사 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Shrimp to Whale',
'외국서적',
'역사',
'2022/05/26',
'Ramon Pacheco Pardo',
'C Hurst',
59720,
0.0,
14,
'South Korea from the Forgotten War to K-Pop!',
'book3.png'
);-- 외국역사 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Short History of the United States',
'외국서적',
'역사',
'2009/12/01',
'Remini',
'Harper Perennial',
17920,
0.0,
8,
'Discovery and Settlement of the New World',
'book4.png'
);-- 외국역사 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Intellectuals',
'외국서적',
'역사',
'2007/05/01',
'Johnson Paul',
'Harper Prernnial',
18280,
0.0,
7,
'지식인의 위선을 날카롭게 해부한 역작
『지식인의 두 얼굴』30주년 기념판',
'book17.png'
);-- 외국역사 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Western Intellectual Tradition',
'외국서적',
'역사',
'2008/05/08',
'Bronowski Jacob',
'Harper Perennial ',
16500,
0.0,
6,
'races the development of thought through historical movements and periods from 1500 to 1830',
'book19.png'
);-- 외국역사 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Fateful Choices',
'외국서적',
'역사',
'2008/06/01',
'Kershaw lan',
'Penguin USA',
24750,
9.4,
5,
'In this Immensely original work with haunting contemporary significance',
'book10.png'
);-- 외국역사 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Battle Hymn of the Tiger Mother',
'외국서적',
'역사',
'2011/12/27',
'Chua, Amy',
'Penguin Books',
14630,
0.0,
4,
'전 세계를 교육 논쟁으로 들끓게 한 에이미 추아의 교육법',
'book12.png'
);-- 외국역사 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Nothing to Envy',
'외국서적',
'역사',
'2010/09/21',
'Demick Barbara',
'Spiegel and Grau',
14330,
10.0,
3,
'A remarkable view into North Korea, 
as seen through the lives of six ordinary citizens',
'book9.png'
);-- 외국역사 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Orientalism',
'외국서적',
'역사',
'1979/10/12',
'Edward W. Said ',
'Vintage',
16240,
0.0,
2,
'리엔탈리즘으로 총칭되는 동양에 대한 서양의 사고, 인식, 
표현의 본질을 깊이있게 파헤치고 있다',
'book14.png'
);-- 외국역사 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Madness and Civilization',
'외국서적',
'역사',
'1988/11/28',
'Michel Foucalt',
'Vintage',
14630,
10.0,
1,
'광기, ‘가장 고독한 고통’에 있는 모든 이들을 위한 필독서!',
'book2.png'
);-- 외국역사 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Out Kids',
'외국서적',
'역사',
'2016/03/29',
'Putnam Robert D.',
'Simon and Schuster',
15380,
9.8,
0,
'아메리칸드림’의 신화는 처참하게 무너졌다!',
'book20.png'
);-- 외국역사 20

SELECT * FROM book_table ORDER BY bo_id;

DELETE FROM book_table;
