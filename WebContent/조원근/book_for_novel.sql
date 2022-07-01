
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Pachinko',
'외국서적',
'소설',
'2017/11/14',
'Lee Min Jin',
'Grand Central Publishing',
 12290,
9.5,
11,
'한국계 1.5세인 미국 작가 이민진의 장편소설 『파친코』 제1권',
'book5.png'
);-- 외국소설 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Midnight Library',
'외국서적',
'소설',
'2021/04/27',
'Haig Matt',
'Cannongate',
  9900,
9.6,
19,
'밤 12시, 죽기 바로 전에만 열리는 마법의 도서관에서
인생의 두 번째 기회를 드립니다',
'book17.png'
);-- 외국소설 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Tuesdays with Morrie',
'외국서적',
'소설',
'2006/01/01',
'Mitchh Albom',
'Anchor Books',
 5800,
9.8,
17,
'삶과 사랑의 진정한 가치를 일깨우는 책',
'book19.png'
);-- 외국소설 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Animal Farm',
'외국서적',
'소설',
'1996/04/01',
'George Orwell',
'Signet Book',
6950,
10.0,
11,
'1944년 러시아 혁명과 스탈린의 배신을 풍자한 정치우화 소설',
'book3.png'
);-- 외국소설 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Normal People',
'외국서적',
'소설',
'2019/05/01',
'Rooney Sally',
'Faber and Faber',
 9700,
9.5,
16,
'지금 이 순간, 밀레니얼 세대의 사랑과 불안을 오롯이 담아낸
가장 젊고 뜨거운 맨부커상 후보작!',
'book18.png'
);-- 외국소설 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Book Lovers',
'외국서적',
'소설',
'2022/05/03',
'Henny Emily',
'Berkley',
9860,
0.0,
15,
'One of my favorite authors.
-Colleen Hoover',
'book15.png'
);-- 외국소설 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The House on Mango Street',
'외국서적',
'소설',
'1991/04/03',
'Cisneros Sandra',
'Vintage Books USA',
9200,
10.0,
13,
'Few other books in our time have touched so many readers',
'book1.png'
);-- 외국소설 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Old Man and the Sea',
'외국서적',
'소설',
'1955/05/05',
'Ernest Hemingway',
'Scribner Book Company',
8900,
9.7,
14,
'The Old Man and the Sea is one of Hemingway most enduring works',
'book4.png'
);-- 외국소설 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Lord of the Flies',
'외국서적',
'소설',
'2006/10/01',
'Golding William',
'Penguin Books',
7600,
9.9,
18,
'Lord of the Flies has established itself as a true classic.',
'book20.png'
);-- 외국소설 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'To Kill a Mockingbird',
'외국서적',
'소설',
'1988/10/11',
'Lee Harper',
'한빛미디어',
49500,
9.7,
 20,
'컬러판으로 돌아온 아마존 인공지능 분야 부동의 1위 도서',
'book6.png'
);-- 외국소설 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Dead Poets Society',
'외국서적',
'소설',
'2006/07/12',
'Kleinbaum Nancy H',
'Disney_Hyperion',
5500,
9.5,
14,
'참교육의 의미를 가르쳐주는 가슴 뭉클한 교육소설 
<죽은 시인의 사회>를 원문 그대로의 감동으로 만나보세요!',
'book14.png'
);-- 외국소설 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'It Ends with Us',
'외국서적',
'소설',
'2016/08/02',
'Hoover Colleen',
'Simon and Schuster (UK)',
10050,
10.0,
8,
'SOMETIMES THE ONE WHO LOVES YOU IS 
THE ONE WHO HURTS YOU THE MOST',
'book16.png'
);-- 외국소설 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'1984 (Signet Classics)',
'외국서적',
'소설',
'1950/07/01',
'George Orwell',
'Signet Book',
7010,
9.5,
7,
'예리한 사회의식과 냉소적 풍자정신이 빛나는 조지 오웰의 대표적인 소설',
'book11.png'
);-- 외국서적 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Klara and the Sun',
'외국서적',
'소설',
'2022/03/03',
'Kazuo Ishiguro',
'Faber and Faber',
12440,
0.0,
6,
'노벨문학상 수상 이후 처음으로 발표하는 거장 가즈오 이시구로의 장편소설',
'book2.png'
);-- 외국소설 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Notebook',
'외국서적',
'소설',
'2014/06/24',
'Nicholas Sparks',
'Grand Central Publishing',
6900,
9.4,
5,
'육신의 기능을 거의 다 상실한 노년의 노아가 한평생 사랑해 온, 알츠하이머 병에 걸려 과거의 기억을 
완전히 상실한 앨리에게 그들의 한평생의 사랑의 기록인 노트북을 읽어준다',
'book12.png'
);-- 외국소설 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Ugly Love',
'외국서적',
'소설',
'2014/08/05',
'Hoover Colleen',
'Atria Books',
20830,
0.0,
4,
'미국과 유럽을 사로잡은 작가 콜린 후버의 핫한 로맨스!',
'book13.png'
);-- 외국소설 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Alchemist',
'외국서적',
'소설',
'2006/10/01',
'Paulo Coelho',
'Harper',
5700,
9.4,
3,
'삶에 대한 깊은 통찰을 담은 현대의 고전!',
'book8.png'
);-- 외국소설 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Thing Around Your Neck',
'외국서적',
'소설',
'2010/06/01',
'Adichie Chimamanda Ngozi',
'Anchor Books',
13350,
0.0,
2,
'A dazzling story collection from the best-selling author of Americanah
and We Should All Be Feminists.',
'book9.png'
);-- 외국소설 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Cursed Bunny',
'외국서적',
'소설',
'2021/07/15',
'Bora Chung',
'Honford Star Ltd',
15300,
10.0,
1,
'2022 부커상 최종 후보 지명작!
한국 호러 SF/판타지 대표작가 정보라 대표작',
'book10.png'
);-- 외국소설 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'THE GREAT GATSBY',
'외국서적',
'소설',
'2005/11/01',
'Fitzgerald',
'Penguin Classic',
6200,
9.8,
0,
'성공에 대한 야망과 실패한 아메리칸 드림의 비극!',
'book7.png'
);-- 외국소설 20


SELECT * FROM book_table ORDER BY bo_id;

DELETE FROM book_table;
