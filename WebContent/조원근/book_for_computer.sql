
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Deep Learning',
'�ܱ�����',
'��ǻ��',
'2016/12/09',
'Goodfellow',
'MIT Press',
 72750,
9.5,
11,
'���� �н��� �پ��� ������ �Ұ��ϴ� ���� �н�'
);-- �ܱ���ǻ�� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Book of Why',
'�ܱ�����',
'��ǻ��',
'2019/05/02',
'Pearl, Judea',
'Penguin Books Ltd',
 12750,
9.6,
19,
'Wonderful ... Illuminating ... 
Fun to read Daniel Kahneman, author of Thinking, Fast and Slow'
);-- �ܱ���ǻ�� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Foundations of 3D Computer Graphics ',
'�ܱ�����',
'��ǻ��',
'2013/01/01',
'Gortler',
'MIT Press',
47000,
9.2,
17,
'3D ��ǻ�� �׷��� ��������'
);-- �ܱ���ǻ�� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Reinforcement Learning',
'�ܱ�����',
'��ǻ��',
'2018/11/13',
'Sutton Richard S.',
'Bradford Book',
59000,
9.7,
11,
'The significantly expanded and updated new edition of a widely used text on reinforcement learning, 
one of the most active research areas in artificial intelligence.'
);-- �ܱ���ǻ�� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Cracking the Coding Interview',
'�ܱ�����',
'��ǻ��',
'2015/07/01',
'McDowell',
'Careercup',
 35000,
10.0,
16,
'�������� ������ ��õǾ��� ������ �Ǿ���. 
�ְ��� ȸ����� �������� �ϴ� ������ �ݿ��Ͽ� 
���� ������ ����ϰ� �غ��� �� ���� ��'
);-- �ܱ���ǻ�� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Trustworthy Online Controlled Experiments',
'�ܱ�����',
'��ǻ��',
'2020/03/31',
'Kohavi Ron',
'Cambridge University Press',
41850,
8.8,
15,
'This practical guide by experimentation leaders at Google, LinkedIn, and Microsoft will teach you how to accelerate 
innovation using trustworthy online controlled experiments, or A/B tests'
);-- �ܱ���ǻ�� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Data Warehouse Toolkit',
'�ܱ�����',
'��ǻ��',
'2013/07/01',
'John Wiley and Sons',
'John Wiley and Sons Inc',
70070,
8.8,
13,
'DW/BI ���� ������ �������� �� ���� ��� ������� ����'
);-- �ܱ���ǻ�� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Automate the Boring Stuff with Python',
'�ܱ�����',
'��ǻ��',
'2019/10/15',
'Al Sweigart',
'No Starch Press',
39000,
10.0,
14,
'���� �ܼ� �ݺ� �۾��� ���̽����� ��ġ���'
);-- �ܱ���ǻ�� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Machine Learning with R',
'�ܱ�����',
'��ǻ��',
'2019/04/15',
'Lantz Brett',
'Packt Publishing',
44000,
8.9,
14,
'������ �����͸� ����� ����� ���Ӱ� �����ϰ� �ֽ� ������ ������ ����'
);-- �ܱ���ǻ�� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The History of the Future',
'�ܱ�����',
'��ǻ��',
'2019/11/12',
'Harris Blake J.',
'Dey Street Books',
18380,
8.3,
  20,
'The dramatic, larger-than-life true story behind the founding of 
Oculus and its quest for virtual reality, 
by the bestselling author of Console Wars'
);-- �ܱ���ǻ�� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Just for Fun',
'�ܱ�����',
'��ǻ��',
'2002/06/04',
'Torvalds Linus',
'Harper Collins',
18850,
0.0,
14,
'Ten years ago, college student 
Linus Torvalds retreated to his own computer to write code'
);-- �ܱ���ǻ�� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Modern Wireless Communication',
'�ܱ�����',
'��ǻ��',
'2003/12/08',
'Simon Haykin',
'Prentice-Hall',
10000,
0.0,
8,
'For courses in Wireless Communication'
);-- �ܱ���ǻ�� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Real Analysis',
'�ܱ�����',
'��ǻ��',
'2017/02/23',
'Royden Halsey',
'Pearson',
62000,
10.0,
7,
'���ؼ��� ����'
);-- �ܱ���ǻ�� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Software Architecture in Practice',
'�ܱ�����',
'��ǻ��',
'2021/07/27',
'Len Bass',
'Pearson',
79000,
10.0,
6,
'��Ű���� ����Ʈ���� ���� ����'
);-- �ܱ���ǻ�� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Algorithms for Optimization',
'�ܱ�����',
'��ǻ��',
'2019/03/01',
'Mykel J. Kochenderfer',
'The MIT Press',
69000,
10.0,
5,
'����ȭ ������ Ǫ�� �� ������ �˰����� �������ϰ� �Ұ�'
);-- �ܱ���ǻ�� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Probabilistic Machine Learning',
'�ܱ�����',
'��ǻ��',
'2022/02/01',
'Murphy Kevin P.',
'MIT Press',
137000,
7.5,
4,
'A detailed and up-to-date introduction to machine learning, 
presented through the unifying lens of probabilistic modeling 
and Bayesian decision theory'
);-- �ܱ���ǻ�� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Computational Thinking',
'�ܱ�����',
'��ǻ��',
'2019/04/23',
'Denning Peter J.',
'MIT Press(MA)',
19500,
10.0,
3,
'An introduction to computational thinking that 
traces a genealogy beginning centuries before the digital computer'
);-- �ܱ���ǻ�� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Advanced Programming in the Unix Environment',
'�ܱ�����',
'��ǻ��',
'2013/06/07',
'Stevens W Richard',
'Addison-Wesley Professional',
69000,
10.0,
2,
'���н� ���α׷����� �������̰� �������� ������ �н��� �� �ֵ��� ����'
);-- �ܱ���ǻ�� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'C Programming',
'�ܱ�����',
'��ǻ��',
'2008/12/08',
'King K. N.',
'W. W. Northon and Company',
40000,
8.3,
1,
'The first edition of C Programming: A Modern Approach was popular with students and faculty alike 
because of its clarity and comprehensiveness as well as its trademark QnA sections.'
);-- �ܱ���ǻ�� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Master Algorithm',
'�ܱ�����',
'��ǻ��',
'2018/02/13',
'Domingos Pedro',
'Basic Books',
15380,
10.0,
5,
'Wonderfully erudite, humorous, and easy to read'
);-- �ܱ���ǻ�� 20

SELECT * FROM book_table; 

DELETE FROM book_table;

commit;
