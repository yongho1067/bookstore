
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Selfish Gene',
'외국서적',
'과학',
'2016/08/01',
'Richard Dawkins',
'Oxford University Press',
 16000,
9.5,
11,
'과학계의 고전으로 꼽히는 리처드의 도킨스의 대표작!',
'book10.png'
);-- 외국과학 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'How the World Really Works',
'외국서적',
'과학',
'2022/05/10',
'Smil Vaclav',
'Viking',
  29750,
9.6,
19,
'Vaclav Smil is my favorite author.Bill Gates',
'book14.png'
);-- 외국과학 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'How To',
'외국서적',
'과학',
'2019/09/03',
'Munroe Randall',
'Riverhead Books',
 14210,
9.2,
17,
'상상만 했던 일들이 과학적으로 가능하다면?
기상천외한 질문들에 과학적으로 답변하다!',
'book7.png'
);-- 외국과학 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Right/Wrong',
'외국서적',
'과학',
'2021/09/14',
'Enriquez Juan',
'MIT Press',
20860,
9.7,
11,
'윤리적 변동이 전 세계 곳곳에서 일어나는 지금,
가장 논쟁적인 주제, 그래서 더욱 지적인 대화들',
'book13.png'
);-- 외국과학 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Introduction to Quantum Mechanics',
'외국서적',
'과학',
'2018/08/16',
'Griffiths David J.',
'Cambrige University Press',
 45000,
10.0,
16,
'3판까지 출판되는 전 세계적으로 인기 있는 양자역학 교재',
'book20.png'
);-- 외국과학 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Mathematics for Machine Learning',
'외국서적',
'과학',
'2020/01/31',
'Deisenroth',
'Cambridge University Press',
48510,
8.8,
15,
'The fundamental mathematical tools needed to understand machine learning include linear algebra, analytic geometry, matrix decompositions, 
vector calculus, optimization, probability and statistics',
'book9.png'
);-- 외국과학 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'An Introduction to Quantum Field Theory',
'외국서적',
'과학',
'1995/10/02',
'Peskin Michael E.',
'Westview Press',
67000,
8.8,
13,
'An Introduction to Quantum Field Theory is a textbook intended for the graduate physics course covering relativistic quantum mechanics, 
quantum electrodynamics, and Feynman diagrams',
'book6.png'
);-- 외국과학 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Rise of the Robots',
'외국서적',
'과학',
'2016/07/15',
'Ford Martin',
'Basic Books',
7000,
10.0,
14,
'Winner of the 2015 FT and McKinsey Business Book of the Year Award
A New York Times Bestseller',
'book19.png'
);-- 외국과학 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Experience on Demand',
'외국서적',
'과학',
'2019/02/12',
'Bailenson Jeremy',
'W.W. Northon and Company',
16400,
8.9,
14,
'An in-depth look at virtual reality and how it can be harnessed to 
improve our everyday lives',
'book1.png'
);-- 외국과학 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Topology',
'외국서적',
'과학',
'2014/01/01',
'James Munkres',
'Pearson',
55000,
8.3,
 20,
'For a senior undergraduate or first year graduate-level course in 
Introduction to Topology',
'book16.png'
);-- 외국과학 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Alcamo is Microbes and Society',
'외국서적',
'과학',
'2015/07/01',
'Jeffrey C. Pommerville',
'JONES BARTLETT',
40000,
0.0,
14,
'미생물학의 기초적이고 전반적인 내용을 확인할 수 있도록 구성',
'book18.png'
);-- 외국과학 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Modern Organic Synthesis',
'외국서적',
'과학',
'2017/07/01',
'George S. Zweifel',
'Wiley',
65000,
0.0,
8,
'유기 합성의 기초적이고 전반적인 내용을 확인할 수 있도록 구성',
'book17.png'
);-- 외국과학 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Halliday and Resnick is Principles of Physics',
'외국서적',
'과학',
'2020/01/30',
'JEARL WALKER',
'Wiley',
48000,
10.0,
7,
'전세계적으로 유명한 Halliday, Resnick, Walker의 Principles of Physics, 
11th edition의 한국어판',
'book12.png'
);-- 외국과학 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Short History of Nearly Everything',
'외국서적',
'과학',
'2004/09/14',
'Bill Bryson',
'Broadway Books ',
16500,
10.0,
6,
'과학에 대한 거의 모든 이야기',
'book8.png'
);-- 외국과학 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Organic Chemistry',
'외국서적',
'과학',
'2012/01/01',
'Lesile Craine',
'BROOKS/COLE',
33750,
10.0,
5,
'The only textbook designed specifically for the 
one-semester short course in organic chemistry',
'book5.png'
);-- 외국과학 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Linear Algebra and Its Applicationsr',
'외국서적',
'과학',
'2005/07/01',
'Gilbert Strang',
'Brooks/Cole',
41000,
7.5,
4,
'his book is written in an informal and 
personal style and teaches real mathematics',
'book3.png'
);-- 외국과학 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Fundamentals of Analytical Chemistry',
'외국서적',
'과학',
'2015/11/01',
'Skoog Douglas A.',
'ThomsonBrooks/Cole',
64000,
10.0,
3,
' Dr. Skoog is the 1999 recipient of the 
American Chemical Society award in analytical chemistry',
'book4.png'
);-- 외국과학 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Black Holes The Reith Lectures',
'외국서적',
'과학',
'2016/05/05',
'Stephen Hawking',
'Transworld Publishers',
3000,
10.0,
2,
'스티븐 호킹이 들려주는 블랙홀과 천체물리학의 핵심',
'book15.png'
);-- 외국과학 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Biochemistry',
'외국서적',
'과학',
'2013/04/01',
'JAMES R. Mckee',
'Oxford USA',
10000,
10.0,
1,
'대학생을 위한 Biochemistry: The Molecular Basis of Life. 생화학에 대한 교재',
'book2.png'
);-- 외국과학 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Mechanics of Materials',
'외국서적',
'과학',
'2017/01/01',
'Barry J. Goodno',
'Cengage Learning',
46000,
10.0,
5,
' SI 재료역학에 대해 다룬 도서',
'book11.png'
);-- 외국과학 20

SELECT * FROM book_table ORDER BY bo_id;

DELETE FROM book_table;
