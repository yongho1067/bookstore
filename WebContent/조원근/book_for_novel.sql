
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Pachinko',
'�ܱ�����',
'�Ҽ�',
'2017/11/14',
'Lee Min Jin',
'Grand Central Publishing',
 12290,
9.5,
11,
'�ѱ��� 1.5���� �̱� �۰� �̹����� ����Ҽ� ����ģ�ڡ� ��1��',
'book5.png'
);-- �ܱ��Ҽ� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Midnight Library',
'�ܱ�����',
'�Ҽ�',
'2021/04/27',
'Haig Matt',
'Cannongate',
  9900,
9.6,
19,
'�� 12��, �ױ� �ٷ� ������ ������ ������ ����������
�λ��� �� ��° ��ȸ�� �帳�ϴ�',
'book17.png'
);-- �ܱ��Ҽ� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Tuesdays with Morrie',
'�ܱ�����',
'�Ҽ�',
'2006/01/01',
'Mitchh Albom',
'Anchor Books',
 5800,
9.8,
17,
'��� ����� ������ ��ġ�� �ϱ���� å',
'book19.png'
);-- �ܱ��Ҽ� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Animal Farm',
'�ܱ�����',
'�Ҽ�',
'1996/04/01',
'George Orwell',
'Signet Book',
6950,
10.0,
11,
'1944�� ���þ� ����� ��Ż���� ����� ǳ���� ��ġ��ȭ �Ҽ�',
'book3.png'
);-- �ܱ��Ҽ� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Normal People',
'�ܱ�����',
'�Ҽ�',
'2019/05/01',
'Rooney Sally',
'Faber and Faber',
 9700,
9.5,
16,
'���� �� ����, �з��Ͼ� ������ ����� �Ҿ��� ������ ��Ƴ�
���� ���� �߰ſ� �Ǻ�Ŀ�� �ĺ���!',
'book18.png'
);-- �ܱ��Ҽ� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Book Lovers',
'�ܱ�����',
'�Ҽ�',
'2022/05/03',
'Henny Emily',
'Berkley',
9860,
0.0,
15,
'One of my favorite authors.
-Colleen Hoover',
'book15.png'
);-- �ܱ��Ҽ� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The House on Mango Street',
'�ܱ�����',
'�Ҽ�',
'1991/04/03',
'Cisneros Sandra',
'Vintage Books USA',
9200,
10.0,
13,
'Few other books in our time have touched so many readers',
'book1.png'
);-- �ܱ��Ҽ� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Old Man and the Sea',
'�ܱ�����',
'�Ҽ�',
'1955/05/05',
'Ernest Hemingway',
'Scribner Book Company',
8900,
9.7,
14,
'The Old Man and the Sea is one of Hemingway most enduring works',
'book4.png'
);-- �ܱ��Ҽ� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Lord of the Flies',
'�ܱ�����',
'�Ҽ�',
'2006/10/01',
'Golding William',
'Penguin Books',
7600,
9.9,
18,
'Lord of the Flies has established itself as a true classic.',
'book20.png'
);-- �ܱ��Ҽ� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'To Kill a Mockingbird',
'�ܱ�����',
'�Ҽ�',
'1988/10/11',
'Lee Harper',
'�Ѻ��̵��',
49500,
9.7,
 20,
'�÷������� ���ƿ� �Ƹ��� �ΰ����� �о� �ε��� 1�� ����',
'book6.png'
);-- �ܱ��Ҽ� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Dead Poets Society',
'�ܱ�����',
'�Ҽ�',
'2006/07/12',
'Kleinbaum Nancy H',
'Disney_Hyperion',
5500,
9.5,
14,
'�������� �ǹ̸� �������ִ� ���� ��Ŭ�� �����Ҽ� 
<���� ������ ��ȸ>�� ���� �״���� �������� ����������!',
'book14.png'
);-- �ܱ��Ҽ� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'It Ends with Us',
'�ܱ�����',
'�Ҽ�',
'2016/08/02',
'Hoover Colleen',
'Simon and Schuster (UK)',
10050,
10.0,
8,
'SOMETIMES THE ONE WHO LOVES YOU IS 
THE ONE WHO HURTS YOU THE MOST',
'book16.png'
);-- �ܱ��Ҽ� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'1984 (Signet Classics)',
'�ܱ�����',
'�Ҽ�',
'1950/07/01',
'George Orwell',
'Signet Book',
7010,
9.5,
7,
'������ ��ȸ�ǽİ� �ü��� ǳ�������� ������ ���� ������ ��ǥ���� �Ҽ�',
'book11.png'
);-- �ܱ����� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Klara and the Sun',
'�ܱ�����',
'�Ҽ�',
'2022/03/03',
'Kazuo Ishiguro',
'Faber and Faber',
12440,
0.0,
6,
'�뺧���л� ���� ���� ó������ ��ǥ�ϴ� ���� ����� �̽ñ����� ����Ҽ�',
'book2.png'
);-- �ܱ��Ҽ� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Notebook',
'�ܱ�����',
'�Ҽ�',
'2014/06/24',
'Nicholas Sparks',
'Grand Central Publishing',
6900,
9.4,
5,
'������ ����� ���� �� ����� ����� ��ư� ����� ����� ��, �������̸� ���� �ɷ� ������ ����� 
������ ����� �ٸ����� �׵��� ������� ����� ����� ��Ʈ���� �о��ش�',
'book12.png'
);-- �ܱ��Ҽ� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Ugly Love',
'�ܱ�����',
'�Ҽ�',
'2014/08/05',
'Hoover Colleen',
'Atria Books',
20830,
0.0,
4,
'�̱��� ������ ������� �۰� �ݸ� �Ĺ��� ���� �θǽ�!',
'book13.png'
);-- �ܱ��Ҽ� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Alchemist',
'�ܱ�����',
'�Ҽ�',
'2006/10/01',
'Paulo Coelho',
'Harper',
5700,
9.4,
3,
'� ���� ���� ������ ���� ������ ����!',
'book8.png'
);-- �ܱ��Ҽ� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Thing Around Your Neck',
'�ܱ�����',
'�Ҽ�',
'2010/06/01',
'Adichie Chimamanda Ngozi',
'Anchor Books',
13350,
0.0,
2,
'A dazzling story collection from the best-selling author of Americanah
and We Should All Be Feminists.',
'book9.png'
);-- �ܱ��Ҽ� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Cursed Bunny',
'�ܱ�����',
'�Ҽ�',
'2021/07/15',
'Bora Chung',
'Honford Star Ltd',
15300,
10.0,
1,
'2022 ��Ŀ�� ���� �ĺ� ������!
�ѱ� ȣ�� SF/��Ÿ�� ��ǥ�۰� ������ ��ǥ��',
'book10.png'
);-- �ܱ��Ҽ� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'THE GREAT GATSBY',
'�ܱ�����',
'�Ҽ�',
'2005/11/01',
'Fitzgerald',
'Penguin Classic',
6200,
9.8,
0,
'������ ���� �߸��� ������ �Ƹ޸�ĭ �帲�� ���!',
'book7.png'
);-- �ܱ��Ҽ� 20


SELECT * FROM book_table ORDER BY bo_id;

DELETE FROM book_table;
