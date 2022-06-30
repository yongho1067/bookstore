
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Selfish Gene',
'�ܱ�����',
'����',
'2016/08/01',
'Richard Dawkins',
'Oxford University Press',
 16000,
9.5,
11,
'���а��� �������� ������ ��ó���� ��Ų���� ��ǥ��!',
'book10.png'
);-- �ܱ����� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'How the World Really Works',
'�ܱ�����',
'����',
'2022/05/10',
'Smil Vaclav',
'Viking',
  29750,
9.6,
19,
'Vaclav Smil is my favorite author.Bill Gates',
'book14.png'
);-- �ܱ����� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'How To',
'�ܱ�����',
'����',
'2019/09/03',
'Munroe Randall',
'Riverhead Books',
 14210,
9.2,
17,
'��� �ߴ� �ϵ��� ���������� �����ϴٸ�?
���õ���� �����鿡 ���������� �亯�ϴ�!',
'book7.png'
);-- �ܱ����� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Right/Wrong',
'�ܱ�����',
'����',
'2021/09/14',
'Enriquez Juan',
'MIT Press',
20860,
9.7,
11,
'������ ������ �� ���� �������� �Ͼ�� ����,
���� �������� ����, �׷��� ���� ������ ��ȭ��',
'book13.png'
);-- �ܱ����� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Introduction to Quantum Mechanics',
'�ܱ�����',
'����',
'2018/08/16',
'Griffiths David J.',
'Cambrige University Press',
 45000,
10.0,
16,
'3�Ǳ��� ���ǵǴ� �� ���������� �α� �ִ� ���ڿ��� ����',
'book20.png'
);-- �ܱ����� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Mathematics for Machine Learning',
'�ܱ�����',
'����',
'2020/01/31',
'Deisenroth',
'Cambridge University Press',
48510,
8.8,
15,
'The fundamental mathematical tools needed to understand machine learning include linear algebra, analytic geometry, matrix decompositions, 
vector calculus, optimization, probability and statistics',
'book9.png'
);-- �ܱ����� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'An Introduction to Quantum Field Theory',
'�ܱ�����',
'����',
'1995/10/02',
'Peskin Michael E.',
'Westview Press',
67000,
8.8,
13,
'An Introduction to Quantum Field Theory is a textbook intended for the graduate physics course covering relativistic quantum mechanics, 
quantum electrodynamics, and Feynman diagrams',
'book6.png'
);-- �ܱ����� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Rise of the Robots',
'�ܱ�����',
'����',
'2016/07/15',
'Ford Martin',
'Basic Books',
7000,
10.0,
14,
'Winner of the 2015 FT and McKinsey Business Book of the Year Award
A New York Times Bestseller',
'book19.png'
);-- �ܱ����� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Experience on Demand',
'�ܱ�����',
'����',
'2019/02/12',
'Bailenson Jeremy',
'W.W. Northon and Company',
16400,
8.9,
14,
'An in-depth look at virtual reality and how it can be harnessed to 
improve our everyday lives',
'book1.png'
);-- �ܱ����� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Topology',
'�ܱ�����',
'����',
'2014/01/01',
'James Munkres',
'Pearson',
55000,
8.3,
 20,
'For a senior undergraduate or first year graduate-level course in 
Introduction to Topology',
'book16.png'
);-- �ܱ����� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Alcamo is Microbes and Society',
'�ܱ�����',
'����',
'2015/07/01',
'Jeffrey C. Pommerville',
'JONES BARTLETT',
40000,
0.0,
14,
'�̻������� �������̰� �������� ������ Ȯ���� �� �ֵ��� ����',
'book18.png'
);-- �ܱ����� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Modern Organic Synthesis',
'�ܱ�����',
'����',
'2017/07/01',
'George S. Zweifel',
'Wiley',
65000,
0.0,
8,
'���� �ռ��� �������̰� �������� ������ Ȯ���� �� �ֵ��� ����',
'book17.png'
);-- �ܱ����� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Halliday and Resnick is Principles of Physics',
'�ܱ�����',
'����',
'2020/01/30',
'JEARL WALKER',
'Wiley',
48000,
10.0,
7,
'������������ ������ Halliday, Resnick, Walker�� Principles of Physics, 
11th edition�� �ѱ�����',
'book12.png'
);-- �ܱ����� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Short History of Nearly Everything',
'�ܱ�����',
'����',
'2004/09/14',
'Bill Bryson',
'Broadway Books ',
16500,
10.0,
6,
'���п� ���� ���� ��� �̾߱�',
'book8.png'
);-- �ܱ����� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Organic Chemistry',
'�ܱ�����',
'����',
'2012/01/01',
'Lesile Craine',
'BROOKS/COLE',
33750,
10.0,
5,
'The only textbook designed specifically for the 
one-semester short course in organic chemistry',
'book5.png'
);-- �ܱ����� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Linear Algebra and Its Applicationsr',
'�ܱ�����',
'����',
'2005/07/01',
'Gilbert Strang',
'Brooks/Cole',
41000,
7.5,
4,
'his book is written in an informal and 
personal style and teaches real mathematics',
'book3.png'
);-- �ܱ����� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Fundamentals of Analytical Chemistry',
'�ܱ�����',
'����',
'2015/11/01',
'Skoog Douglas A.',
'ThomsonBrooks/Cole',
64000,
10.0,
3,
' Dr. Skoog is the 1999 recipient of the 
American Chemical Society award in analytical chemistry',
'book4.png'
);-- �ܱ����� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Black Holes The Reith Lectures',
'�ܱ�����',
'����',
'2016/05/05',
'Stephen Hawking',
'Transworld Publishers',
3000,
10.0,
2,
'��Ƽ�� ȣŷ�� ����ִ� ��Ȧ�� õü�������� �ٽ�',
'book15.png'
);-- �ܱ����� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Biochemistry',
'�ܱ�����',
'����',
'2013/04/01',
'JAMES R. Mckee',
'Oxford USA',
10000,
10.0,
1,
'���л��� ���� Biochemistry: The Molecular Basis of Life. ��ȭ�п� ���� ����',
'book2.png'
);-- �ܱ����� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Mechanics of Materials',
'�ܱ�����',
'����',
'2017/01/01',
'Barry J. Goodno',
'Cengage Learning',
46000,
10.0,
5,
' SI ��Ὺ�п� ���� �ٷ� ����',
'book11.png'
);-- �ܱ����� 20

SELECT * FROM book_table ORDER BY bo_id;

DELETE FROM book_table;
