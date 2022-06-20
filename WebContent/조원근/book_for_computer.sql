
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Deep Learning',
'외국서적',
'컴퓨터',
'2016/12/09',
'Goodfellow',
'MIT Press',
 72750,
9.5,
11,
'심층 학습의 다양한 주제를 소개하는 심층 학습'
);-- 외국컴퓨터 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Book of Why',
'외국서적',
'컴퓨터',
'2019/05/02',
'Pearl, Judea',
'Penguin Books Ltd',
 12750,
9.6,
19,
'Wonderful ... Illuminating ... 
Fun to read Daniel Kahneman, author of Thinking, Fast and Slow'
);-- 외국컴퓨터 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Foundations of 3D Computer Graphics ',
'외국서적',
'컴퓨터',
'2013/01/01',
'Gortler',
'MIT Press',
47000,
9.2,
17,
'3D 컴퓨터 그래픽 전공교재'
);-- 외국컴퓨터 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Reinforcement Learning',
'외국서적',
'컴퓨터',
'2018/11/13',
'Sutton Richard S.',
'Bradford Book',
59000,
9.7,
11,
'The significantly expanded and updated new edition of a widely used text on reinforcement learning, 
one of the most active research areas in artificial intelligence.'
);-- 외국컴퓨터 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Cracking the Coding Interview',
'외국서적',
'컴퓨터',
'2015/07/01',
'McDowell',
'Careercup',
 35000,
10.0,
16,
'면접에서 실제로 출시되었던 문제만 실었다. 
최고의 회사들이 면접에서 하는 질문을 반영하여 
실제 면접과 비슷하게 준비할 수 있을 것'
);-- 외국컴퓨터 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Trustworthy Online Controlled Experiments',
'외국서적',
'컴퓨터',
'2020/03/31',
'Kohavi Ron',
'Cambridge University Press',
41850,
8.8,
15,
'This practical guide by experimentation leaders at Google, LinkedIn, and Microsoft will teach you how to accelerate 
innovation using trustworthy online controlled experiments, or A/B tests'
);-- 외국컴퓨터 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Data Warehouse Toolkit',
'외국서적',
'컴퓨터',
'2013/07/01',
'John Wiley and Sons',
'John Wiley and Sons Inc',
70070,
8.8,
13,
'DW/BI 설계 경험을 바탕으로 한 실제 사례 연구들로 설명'
);-- 외국컴퓨터 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Automate the Boring Stuff with Python',
'외국서적',
'컴퓨터',
'2019/10/15',
'Al Sweigart',
'No Starch Press',
39000,
10.0,
14,
'이제 단순 반복 작업은 파이썬으로 해치운다'
);-- 외국컴퓨터 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Machine Learning with R',
'외국서적',
'컴퓨터',
'2019/04/15',
'Lantz Brett',
'Packt Publishing',
44000,
8.9,
14,
'정돈된 데이터를 만드는 방법을 새롭게 설명하고 최신 버전의 예제를 제공'
);-- 외국컴퓨터 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The History of the Future',
'외국서적',
'컴퓨터',
'2019/11/12',
'Harris Blake J.',
'Dey Street Books',
18380,
8.3,
  20,
'The dramatic, larger-than-life true story behind the founding of 
Oculus and its quest for virtual reality, 
by the bestselling author of Console Wars'
);-- 외국컴퓨터 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Just for Fun',
'외국서적',
'컴퓨터',
'2002/06/04',
'Torvalds Linus',
'Harper Collins',
18850,
0.0,
14,
'Ten years ago, college student 
Linus Torvalds retreated to his own computer to write code'
);-- 외국컴퓨터 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Modern Wireless Communication',
'외국서적',
'컴퓨터',
'2003/12/08',
'Simon Haykin',
'Prentice-Hall',
10000,
0.0,
8,
'For courses in Wireless Communication'
);-- 외국컴퓨터 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Real Analysis',
'외국서적',
'컴퓨터',
'2017/02/23',
'Royden Halsey',
'Pearson',
62000,
10.0,
7,
'실해석학 교재'
);-- 외국컴퓨터 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Software Architecture in Practice',
'외국서적',
'컴퓨터',
'2021/07/27',
'Len Bass',
'Pearson',
79000,
10.0,
6,
'아키텍쳐 소프트웨어 연습 교재'
);-- 외국컴퓨터 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Algorithms for Optimization',
'외국서적',
'컴퓨터',
'2019/03/01',
'Mykel J. Kochenderfer',
'The MIT Press',
69000,
10.0,
5,
'최적화 문제를 푸는 데 유용한 알고리즘을 광범위하게 소개'
);-- 외국컴퓨터 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Probabilistic Machine Learning',
'외국서적',
'컴퓨터',
'2022/02/01',
'Murphy Kevin P.',
'MIT Press',
137000,
7.5,
4,
'A detailed and up-to-date introduction to machine learning, 
presented through the unifying lens of probabilistic modeling 
and Bayesian decision theory'
);-- 외국컴퓨터 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Computational Thinking',
'외국서적',
'컴퓨터',
'2019/04/23',
'Denning Peter J.',
'MIT Press(MA)',
19500,
10.0,
3,
'An introduction to computational thinking that 
traces a genealogy beginning centuries before the digital computer'
);-- 외국컴퓨터 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Advanced Programming in the Unix Environment',
'외국서적',
'컴퓨터',
'2013/06/07',
'Stevens W Richard',
'Addison-Wesley Professional',
69000,
10.0,
2,
'유닉스 프로그래밍의 기초적이고 전반적인 내용을 학습할 수 있도록 구성'
);-- 외국컴퓨터 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'C Programming',
'외국서적',
'컴퓨터',
'2008/12/08',
'King K. N.',
'W. W. Northon and Company',
40000,
8.3,
1,
'The first edition of C Programming: A Modern Approach was popular with students and faculty alike 
because of its clarity and comprehensiveness as well as its trademark QnA sections.'
);-- 외국컴퓨터 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Master Algorithm',
'외국서적',
'컴퓨터',
'2018/02/13',
'Domingos Pedro',
'Basic Books',
15380,
10.0,
5,
'Wonderfully erudite, humorous, and easy to read'
);-- 외국컴퓨터 20

SELECT * FROM book_table; 

DELETE FROM book_table;

commit;
