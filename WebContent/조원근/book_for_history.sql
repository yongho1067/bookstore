
DROP SEQUENCE num_seq ;
CREATE SEQUENCE num_seq
START WITH 1
INCREMENT BY 1;


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Sapiens A Brief History of Humankind',
'�ܱ�����',
'����',
'2015/04/30',
'Yuval Noah Harari',
'Vintage',
 8700,
9.1,
11,
'���� �츮�� ������ �ΰ��̶�� �� ���ΰ�',
'"image/book16.png"'
);-- �ܱ����� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Guns, Germs, and Steel',
'�ܱ�����',
'����',
'2017/03/07',
'Jared Diamond',
'W. W. Northon Company',
  15500,
9.6,
19,
'�η������� �ұ����� ��, ��, �� �����̴�!',
'"image/book8.png"'
);-- �ܱ����� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Homo Deus',
'�ܱ�����',
'����',
'2017/04/06',
'Yuval Noah Harari',
'Vintage',
 8750,
8.8,
17,
'���� �� �ΰ�, �츮�� ���� ���� �ִ°�?',
'"image/book18.png"'
);-- �ܱ����� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Little History of the World',
'�ܱ�����',
'����',
'2008/09/01',
'Gombirch E H',
'Yale University Press',
9700,
9.7,
11,
'û�ҳ��� ���� <���긮ġ �����> ��1��.',
'"image/book6.png"'
);-- �ܱ����� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Night',
'�ܱ�����',
'����',
'2006/01/16',
'Wiesel Elie',
'Hill and Wang',
 8210,
0.0,
16,
'��Ƴ��� ���� ���',
'"image/book7.png"'
);-- �ܱ����� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'21 Lessons for the 21st Century',
'�ܱ�����',
'����',
'2019/08/20',
'Yuval Noah Harari',
'Spiegel and Grau',
10100,
0.0,
15,
'���� �϶󸮴� ����췽 ���긮 ���б� �����а� ������. 
�츮 �ô� ���� ����� �ִ� ������',
'"image/book15.png"'
);-- �ܱ����� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Collapse',
'�ܱ�����',
'����',
'2011/01/04',
'Jared Diamond',
'Penguin Books',
20320,
8.8,
13,
'�ı��� ������ ���翡�� ���� �η��� �̷�!',
'"image/book13.png"'
);-- �ܱ����� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Triumph of the City',
'�ܱ�����',
'����',
'2012/01/31',
'Glaeser Edward',
'Penguin Books',
15230,
10.0,
14,
'�η� �ְ��� �߸�ǰ, ����!',
'"image/book5.png"'
);-- �ܱ����� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Little History of Economics',
'�ܱ�����',
'����',
'2018/02/27',
'Kishtainy',
'Yale University Press',
13880,
8.9,
14,
'�����ϸ鼭�� ���ӷ����� ��ü�� ��Ƴ� ������ ������ ����!',
'"image/book1.png"'
);-- �ܱ����� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Billion Dollar Whale',
'�ܱ�����',
'����',
'2019/10/22',
'Tom Wright',
'Hachette Book Group ',
10700,
0.0,
 20,
'Named a Best Book of 2018 by the Financial Times and Fortune',
'"image/book11.png"'
);-- �ܱ����� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Shrimp to Whale',
'�ܱ�����',
'����',
'2022/05/26',
'Ramon Pacheco Pardo',
'C Hurst',
59720,
0.0,
14,
'South Korea from the Forgotten War to K-Pop!',
'"image/book3.png"'
);-- �ܱ����� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'A Short History of the United States',
'�ܱ�����',
'����',
'2009/12/01',
'Remini',
'Harper Perennial',
17920,
0.0,
8,
'Discovery and Settlement of the New World',
'"image/book4.png"'
);-- �ܱ����� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Intellectuals',
'�ܱ�����',
'����',
'2007/05/01',
'Johnson Paul',
'Harper Prernnial',
18280,
0.0,
7,
'�������� ������ ��ī�Ӱ� �غ��� ����
���������� �� �󱼡�30�ֳ� �����',
'"image/book17.png"'
);-- �ܱ����� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'The Western Intellectual Tradition',
'�ܱ�����',
'����',
'2008/05/08',
'Bronowski Jacob',
'Harper Perennial ',
16500,
0.0,
6,
'races the development of thought through historical movements and periods from 1500 to 1830',
'"image/book19.png"'
);-- �ܱ����� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Fateful Choices',
'�ܱ�����',
'����',
'2008/06/01',
'Kershaw lan',
'Penguin USA',
24750,
9.4,
5,
'In this Immensely original work with haunting contemporary significance',
'"image/book10.png"'
);-- �ܱ����� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Battle Hymn of the Tiger Mother',
'�ܱ�����',
'����',
'2011/12/27',
'Chua, Amy',
'Penguin Books',
14630,
0.0,
4,
'�� ���踦 ���� �������� ����� �� ���̹� �߾��� ������',
'"image/book12.png"'
);-- �ܱ����� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Nothing to Envy',
'�ܱ�����',
'����',
'2010/09/21',
'Demick Barbara',
'Spiegel and Grau',
14330,
10.0,
3,
'A remarkable view into North Korea, 
as seen through the lives of six ordinary citizens',
'"image/book9.png"'
);-- �ܱ����� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Orientalism',
'�ܱ�����',
'����',
'1979/10/12',
'Edward W. Said ',
'Vintage',
16240,
0.0,
2,
'����Ż�������� ��Ī�Ǵ� ���翡 ���� ������ ���, �ν�, 
ǥ���� ������ �����ְ� ����ġ�� �ִ�',
'"image/book14.png"'
);-- �ܱ����� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Madness and Civilization',
'�ܱ�����',
'����',
'1988/11/28',
'Michel Foucalt',
'Vintage',
14630,
10.0,
1,
'����, ������ ���� ���롯�� �ִ� ��� �̵��� ���� �ʵ���!',
'"image/book2.png"'
);-- �ܱ����� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Out Kids',
'�ܱ�����',
'����',
'2016/03/29',
'Putnam Robert D.',
'Simon and Schuster',
15380,
9.8,
0,
'�Ƹ޸�ĭ�帲���� ��ȭ�� ó���ϰ� ��������!',
'"image/book20.png"'
);-- �ܱ����� 20

SELECT * FROM book_table; 

DELETE FROM book_table;
