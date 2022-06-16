DROP PROCEDURE book_insert;
CREATE  OR REPLACE PROCEDURE book_insert(
IN bo_id NUMBER, -- å�� ���̵�
IN bo_name VARCHAR2, -- å���̸� 
IN bo_cc VARCHAR2, -- å�Ǻз� ex) �������� ,�ؿܼ���
IN bo_janre VARCHAR, -- å���帣 ex)  �Ҽ�, ����, ��ȭ
IN bo_date DATE, -- �Ⱓ�� 
IN bo_author VARCHAR2, -- �۰�
IN bo_pb VARCHAR2, -- å���ǻ�
IN bo_price NUMBER, -- å�� ����
IN bo_grade NUMBER, -- å�� ���� 
IN bo_count NUMBER, -- å�� ���
IN bo_ex VARCHAR2 -- å����
)

IS

BEGIN -- ����


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ۺ��λ�',
'��������',
'�Ҽ�',
'2022/05/02',
'�迵��',
'��������',
12600,
9.7,
12,
'������ ������ �� ���� ��Ȳ, ȥ�� ���ĳ����� �Ѵ�
���Ѿ� �� ���, ����� ���� �±�'
);-- �ѱ��Ҽ� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ������',
'��������',
'�Ҽ�',
'2021/04/20',
'��ȣ��',
'����������',
12600,
9.8,
11,
'�� �÷��� ���� ���, �ﰢ��� ����� ����, �� ���� �� ���� ���Ұ� ������ ��!
���ܿ� �ô븦 ��ư��� �츮�鿡�� �ٰ��� ���� Ư���� ������ �̾߱�'
);-- �ѱ��Ҽ� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�� ������ �Ѱ�',
'��������',
'�Ҽ�',
'2022/05/30',
'�Ѱ�',
'���е���',
15300,
9.3,
10,
'�Ѱ� �۰��� ����Ҽ�, ����Ҽ�, ��, �깮�� �� ������ ������!'
);-- �ѱ��Ҽ� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����ġ ȥ�ڼ�',
'��������',
'�Ҽ�',
'2022/06/01',
'����',
'���е���',
13500,
10.0,
12,
'���� �� ����� �̿����� �� ���� ���.'
);-- �ѱ��Ҽ� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'å���� �ξ�',
'��������',
'�Ҽ�',
'2022/05/12',
'������',
'���丮����',
13050,
9.6,
13,
'�� ���� ���ִ� å ������ ���� ǳ���
����� ���Ҿ縮 �Ͻ� Űģ���Դϴ�.'
);-- �ѱ��Ҽ� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'� ������, �޳��� �����Դϴ�',
'��������',
'�Ҽ�',
'2022/01/17',
'Ȳ����',
'Ŭ�����Ͽ콺',
13500,
9.7,
14,
'�귱ġ�� ����å ���� ������Ʈ ������! ���� ��û �⵵�� ���� ����å �Ⱓ'
);-- �ѱ��Ҽ� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�����䳢',
'��������',
'�Ҽ�',
'2022/04/01',
'������',
'����',
13320,
9.2,
15,
'2022 ��Ŀ�� ���� �ĺ� ������!
�ѱ� ȣ�� SF/��Ÿ�� ��ǥ�۰� ������ ��ǥ��'
);-- �ѱ��Ҽ� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�־��� �ʾƵ�',
'��������',
'�Ҽ�',
'2022/04/30',
'������',
'������å',
13050,
9.6,
16,
'����� ������ ��ó�� ��ġ���� �ʳ�����.
�ڲٸ� ����Ϸ� �ϰ�, �ٰ����� �ؿ�.
�����Ե� �� ������ ��� �־��.'
);-- �ѱ��Ҽ� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�޷���Ʈ �� ��ȭ��',
'��������',
'�Ҽ�',
'2020/07/08',
'�̹̿�',
'���丮����',
12420,
9.2,
15,
'����߸� ���� ������ �� ��ȭ������ �Ͼ�� ��н����� �⹦�ϸ� ���� ��Ŭ�� ��Ÿ�� �Ҽ�'
);-- �ѱ��Ҽ� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���',
'��������',
'�Ҽ�',
'2013/04/01',
'�����',
'����',
11700,
9.8,
14,
'�λ��� ��ư��鼭 Ž���ϴ� ��!'
);-- �ѱ��Ҽ� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ��',
'��������',
'�Ҽ�',
'2021/07/27',
'������',
'���е���',
13050,
9.8,
16,
'�� ���� �ð��� ���ξ����� �̾����� ����� ���� ���
������ ù ����Ҽ�'
);-- �ѱ��Ҽ� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ���� �½�',
'��������',
'�Ҽ�',
'2021/08/18',
'���ʿ�',
'���̾�Ʈ�Ͻ�',
13500,
9.7,
17,
'���ʿ� ù ����Ҽ�, ��ΰ� ������ ��ٷ��� �̾߱�'
);-- �ѱ��Ҽ� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Ĭ����, ����, ����',
'��������',
'�Ҽ�',
'2020/04/13',
'������',
'��������',
9000,
9.5,
18,
'�������� ��-Ʈ �ø����� �� ��° å����, ������ �۰��� ������'
);-- �ѱ��Ҽ� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ����',
'��������',
'�Ҽ�',
'2020/06/03',
'�����',
'���е���',
14400,
10.0,
16,
'�츮�� �����ϰ� �Ʋ��� �׶� �� ���ھ��̿� �ٽ� ������
����Ҽ��� ���ο� Ŭ���� ������ ������ 100�� ��� ������'
);-- �ѱ��Ҽ� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������� ����',
'��������',
'�Ҽ�',
'2020/08/28',
'�迵��',
'�Ϻϼ���',
9000,
9.9,
14,
'ġ���� ������ ����� ��ü,
������ ������ ��Ʈ��
�� ���� ���ڸ� ������� �ְ��� �ɸ�������'
);-- �ѱ��Ҽ� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ۺ����� �ʴ´�',
'��������',
'�Ҽ�',
'2020/09/09',
'�Ѱ�',
'���е���',
16000,
9.3,
13,
'�̰��� ��Ҵ� �̵�κ���, �̰��� ��� �ִ� �̵�κ���
��ó�� ������� ������ ����� ���'
);-- �ѱ��Ҽ� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ �ູ',
'��������',
'�Ҽ�',
'2021/06/08',
'������',
'���೪��',
14220,
9.4,
14,
'�ڱ���� �˿� ���� ���� �󸶳� ���·ο,
�е��� ���� �� �����ϰ� ������ ����'
);-- �ѱ��Ҽ� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ü����κ���',
'��������',
'�Ҽ�',
'2020/06/05',
'������',
'���е���',
12600,
9.5,
15,
'�ѱ������� �絵�� �ð��� ������, ������ ���� ����Ҽ�'
);-- �ѱ��Ҽ� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ����Ŀ��',
'��������',
'�Ҽ�',
'2022/03/27',
'������',
'â��',
12600,
9.9,
13,
'50�� �� �Ǹ� ����Ʈ����
������ �ҿ��� �̷������ ��, ������ ����Ŀ��'
);-- �ѱ��Ҽ� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ���',
'��������',
'�Ҽ�',
'2016/05/16',
'������',
'���೪��',
11700,
9.3,
16,
'26�� ���� ���� �ִ� �� ���� �� �ٸ� ���� �Դ�!'
);-- �ѱ��Ҽ� 20


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'��,��,��',
'��������',
'����',
'2005/12/19',
'�緹�� ���̾Ƹ��',
'���л��',
 25200,
9.1,
11,
'�η������� �ұ����� ��, ��, �� �����̴�!'
);-- �������� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� �ô�',
'��������',
'����',
'2010/12/20',
'ī�� �Ͻ�Ʈ��',
'������',
28800,
9.2,
10,
'�ΰ� â������ ���� �̰߰� �����ߴ� ���̷ο� �ô�, ���� �ô�!'
);-- �������� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'��Ʈ��������',
'��������',
'����',
'2021/03/08',
'�� ����',
'���ϰ����Ź���',
24300,
9.4,
12,
'�ΰ��� ���� ������ �߸�ǰ, ������ ����� ���� �η������
,������ â��, ����, ������ ���� ȲȦ�ϰ� ������ ����!'
);-- �������� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'��������',
'��������',
'����',
'2017/01/20',
'�׷��̾� ����',
'��ġ',
20700,
9.2,
11,
'����� ������ ������ ã�Ƽ�!'
);-- �������� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ���� ���޸�',
'��������',
'����',
'2021/12/27',
'�����',
'�޸ӴϽ�Ʈ',
29700,
9.5,
14,
'���� ��� ������ ����, ���޸�
�𷡹ٶ��� �ڵ��� �ִ� ������ ���簡 �ǻ�Ƴ���.'
);-- �������� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ �㸮 ������� ��',
'��������',
'����',
'2021/09/23',
'����ȯ',
'��Ű',
15120,
10.0,
15,
' ���� ���� �� ���ε��� �����ϴ� �ǻ��Դϴ�
���а� �߸��� ������ �ٶ� ����� �ι���'
);-- �������� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���޸� Ȥ�� �ŵ��� ����',
'��������',
'����',
'2009/11/25',
'��ī���� ��ģ',
'�̱ٿ�',
19800,
9.5,
14,
'�츮�� �����ϴ� ��� ������ �ŵ��� ��ü�� ����, 
�� �躸�� ���� ��ȭ����� ���� ����, �׸��� �Ű� �ΰ��� ���踦 
�ѷ��� ��� �ǹ��� ���� ���ϰ� ������ �ش��� ���� �� �ִ�.'
);-- �������� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ����',
'��������',
'����',
'1922/11/15',
'�̻���',
'�Ѹ�����',
15300,
9.5,
16,
'������ �а�� �Ž��Ŀ� �ݷ��� ������ �ҷ�����Ų ȭ���� å.'
);-- �������� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����ȭ�� �μӹ�ȭ',
'��������',
'����',
'2020/12/30',
'������',
'�μӿ�',
18000,
0.0,
18,
'������б� �񱳹�ȭ������ �ѱ��η����Ѽ�'
);-- �������� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�η����� �����',
'��������',
'����',
'2016/12/20',
'ü�� ����',
'�ѱ��',
19800,
9.5,
20,
'�η��п� ������ ������ ���� å���� �о�� ���� �𸣴� 
����鿡�Դ� �̺��� ���� ������!'
);-- �������� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���ι�ȭ�� ��������',
'��������',
'����',
'2019/07/05',
'���� �ظ���',
'�ѱ��',
18000,
10.0,
9,
'����ǳ���� �����ߴ� ������ ����, ����, ���Ĺ��� ���°�, ���Ȱ�� ����, �����Ը� ���� �������� �ΰ���⸦
������ ���ۿ� �������� �Ǵ� ���԰� �ȡ� ������ �Ը�'
);-- �������� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�α��� ��',
'��������',
'����',
'2020/08/21',
'�� ������',
'�̷���â',
16200,
9.6,
8,
'�α��� ������ �߿��ߴ�.'
);-- �������� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�� ������ �����ϴ°�',
'��������',
'����',
'2013/05/27',
'�̾� �𸮽�',
'���׾Ƹ�',
37800,
9.7,
7,
'���� �̷� �����ؿ� ������ ������ �񱳡��м��ϴ�!'
);-- �������� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ������ ���',
'��������',
'����',
'2018/02/10',
'�ؼ��� D. ���̽�',
'�׸���',
26100,
9.3,
6,
'���ó� ���������� �⺻ ������ �ڸ����� ������ 
���������� ����� ���������� �����ϰ� �ִ� å'
);-- �������� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ �Ը��� ����',
'��������',
'����',
'2000/03/04',
'��Ż�� ���� ���̺�',
'������ ǳ��',
10800,
9.5,
5,
'1540�� �� �Ƿ��� ��� ��ó �������� �� ������ �� ����� ���ΰ� �Ƶ��� ���ܵΰ� ���� ������. 
���� �ð� �� �״� ���ƿ� �ٽ� ������ �Բ� ��� ������ ���´�. 
�׷��� ����� ������ �� ���ڰ� �ڽ��� ������ �ƴ϶�� ��Ҹ� �Ѵ�. ���� ?'
);-- �������� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�� ���� ����� �ݺ��Ǵ°�',
'��������',
'����',
'2017/05/20',
'������ ����',
'��ó��',
13500,
0.0,
4,
'������������ �������� ������ �̷� ������� �غ��ϱ� ���� ���縦 �ٽ� ������, 
���������� ������ ��� ��ó�ϰ� ������ ��� ���ΰ��� �����ؾ� �Ѵ�'
);-- �������� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���翡 ���� �����ϱ�',
'��������',
'����',
'2019/05/30',
'��� ����',
'å���Բ�',
18000,
10,
3,
'�����ǽ��� ��������, ���� ���� �� ���� �����п� 
����� ������ ���￡ ���� ���Ŷ�� ������ 
�󸶳� ���������� ��ȭ�� �Դ����� �����ش�'
);-- �������� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������� �����ΰ�?',
'��������',
'����',
'2020/04/07',
'��ó�� �Ӹ��',
'�����Ǻ�',
17100,
9.4,
2,
'���� �� ���� ��
���� ǳ���ϰ� �ٷ�� ������ ���,
�������� �������� ������'
);-- �������� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����� ����',
'��������',
'����',
'2021/05/07',
'��Ƽ�� L. �罺',
'������Ͽ콺',
17100,
5.0,
1,
'�쿬�� �߰��� ������ �η��� ������ �̲�����
���ϰ� ���� �ְ� ��ȭ�ϴ� ������ ��̷ο� �����'
);-- �������� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����, ������ ������ �ٲٴ�',
'��������',
'����',
'2021/05/03',
'����̾� ���̰�',
'������21',
19800,
10.0,
0,
'�η��� ����� �����ϴ� ��, ����!'
);-- �������� 20


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ �������� �ʴ´�',
'��������',
'����',
'2021/12/17',
'��� �з�',
'������',
 15300,
9.1,
11,
'�ǹ���� ������ ��� �з���
����� ȥ��, ������ ������ ���� ���̷Ӱ� ������� ������!'
);-- �������� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�̱��� ������',
'��������',
'����',
'2018/10/20',
'��ó�� ��Ų��',
'������ȭ��',
 18000,
9.3,
19,
'��Ư�� �߻�� ���� �������� 40�� �Ⱓ ������ ����� ������ �߽ɿ� �� ���� ���缭�� ���̺�!'
);-- �������� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ȱ��� ����',
'��������',
'����',
'2022/06/10',
'���� ������',
'�̷���â',
 14400,
10.0,
17,
'����� ���� ����� �ʹٸ�, ���� �Ͼ �ɾ��!'
);-- �������� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�Ͱ��� ���ͺ�',
'��������',
'����',
'2013/10/31',
'�η��� R. ���漭',
'����Ŀ��',
16200,
9.2,
11,
'����� ���ÿ� ���� 2������ �ܰ��ΰ��� ���ͺ� �ӹ��� �����ϰ� �Ǹ� 
���� �ʱ⺻ �纻�� ����!'
);-- �������� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ���� ��Ƴ��´�',
'��������',
'����',
'2021/07/26',
'����̾� ���',
'���÷�',
 19800,
9.6,
16,
'���ڻ����� Ʋ�ȴ�.
��ȭ�� ���ڴ� �����ڰ� �ƴ϶� ������ �ڿ���.'
);-- �������� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'��� �������� ������� ���� �� ������?',
'��������',
'����',
'2022/05/10',
'�� ��Į����',
'����',
16020,
9.3,
15,
'���� �������� 3�� ��� ���ڿ���, ��뼺�̷�, �������� ���� ���� �˷��ش�!'
);-- �������� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������� ����',
'��������',
'����',
'2022/05/21',
'��ȭ��',
'������Ʈ',
17550,
10.0,
13,
'������ �ʿ��� ������ �˷��� �ø���,
�����п� ���� �η����� ��ġ�� ���� å.'
);-- �������� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������ڵ� ������ �� �ִ� AI ����',
'��������',
'����',
'2022/03/04',
'�ڻ��',
'�ݴ�',
17820,
9.5,
14,
'�̷��� �ΰ������� �����ϴ� ����� ���̴�.'
);-- �������� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���̿� ����',
'��������',
'����',
'2016/12/31',
'�ﷹ�� ũ�δ�',
'���̾𽺺Ͻ�',
35000,
10.0,
18,
'Ÿ���ǿ� �� ������ ���������� �ѷ���, 
��ȭ���� ���翡�� ���� ġ���� ����� ������ �� ������ ���뼺�� ����'
);-- �������� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ���� Ÿ��',
'��������',
'����',
'2021/02/15',
'����̾� �׸�',
'�������',
19800,
9.5,
 20,
'2020�� ڸ �Ƹ��� ���� �о� 1��!'
);-- �������� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� �˰� ���� �� �������� �����մϴ�',
'��������',
'����',
'2022/03/30',
'�� ��Ʈ ���Ϸ�',
'����',
17820,
10.0,
14,
'�Ƹ��� ����� ����Ʈ���� ������ ���� �׾��ٰ� �����߽��ϴ١� ������ ����'
);-- �������� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'õ ���� ��',
'��������',
'����',
'2022/05/02',
'���� ȣŲ��',
'�̵���',
18000,
8.8,
8,
'�츮�� �� �ӿ��� �������ǰ� �۵��Ѵٰ�?'
);-- �������� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������� �����ϱ�',
'��������',
'����',
'2022/05/13',
'�ӵο�',
'������Ʈ �Ͻ�',
17820,
10.0,
7,
'������ �׸��� Ű��� 42���� ���� �̾߱�'
);-- �������� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� õ����',
'��������',
'����',
'2022/05/30',
'����̾� ���',
'���÷�',
19800,
9.4,
6,
'���ǿ����� �����ڰ� �˷��ִ� �������� ����'
);-- �������� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�޼����� ����',
'��������',
'����',
'2022/05/10',
'�ְ���',
'���ƽþ�',
14400,
10.0,
5,
'��Ī���� ����� �ڱ����, ���� ��ȣ�ۿ���� ���̷б���
���ʰ� �������� �����ϴ� ����, ���� �������� ���δ�!'
);-- �������� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����� ����� ������',
'��������',
'����',
'2021/08/05',
'���� ��Ʈ�� �践',
'������Ʈ',
14400,
9.1,
4,
'���� �ȴٴ� ����, ���� �ΰ��� �ȴٴ� ��'
);-- �������� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������� ����',
'��������',
'����',
'2022/01/28',
'�̸� �ϵ�',
'������Ʈ',
17100,
9.6,
3,
'���������� ���������� �ʴ� �ǰ��� ���� ���� �������� ���� ����'
);-- �������� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ������, �츮�� ������',
'��������',
'����',
'2022/02/18',
'�����',
'��ũ�ν�',
16920,
9.8,
2,
'���󿡼� ���� �����ϱ� ���� 21���� ���� ����'
);-- �������� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����ϴ� ��',
'��������',
'����',
'2022/05/01',
'��Ͼ� ���',
'�迵��',
18000,
9.0,
1,
'���� �Ʒ��� �������� ���� ���� ���� ��ȭ'
);-- �������� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�Ĺ��� å',
'��������',
'����',
'2019/10/25',
'�̼ҿ�',
'å�д¼�����',
13500,
9.3,
0,
'�Ĺ�����ȭ���� �ü����� ���ϴ� ���ýĹ� �̾߱�!'
);-- �������� 20


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� �����Ͼ�� �̷��� ���Ѵ�',
'��������',
'��ǻ��',
'2021/05/10',
'Ÿ���ͽ� ���ͽ�',
'�Ѻ��̵��',
 40500,
8.9,
11,
'������ ��� �����ϰ� �ڵ带 �����ϴ°�!'
);-- ������ǻ�� 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'ȥ�� �����ϴ� �ӽŷ���+������',
'��������',
'��ǻ��',
'2020/12/21',
'���ؼ�',
'�Ѻ��̵��',
  23400,
9.7,
19,
'ȥ�� �ص� ����ϴ�! 1:1 �����ϵ� ���� �ΰ����� �ڽ���'
);-- ������ǻ�� 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�� ������ �д� ��ǻ�� ������ ���α׷���',
'��������',
'��ǻ��',
'2021/04/08',
'���ʼ� ��Ÿ����Ʈ',
'å��',
 31500,
9.0,
17,
'Ŀư �ڿ� ������ ��ǻ�� ������ ���α׷��ֿ� ���� 
���� ��� ���� �ٷ�� ��ǻ�Ͱ��� ���м�'
);-- ������ǻ�� 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�عٴں��� �����ϴ� ������',
'��������',
'��ǻ��',
'2017/01/03',
'������ ��Ű',
'�Ѻ��̵��',
21600,
9.6,
11,
'���� �����ϰ� ���������� ������ ���� ���� ������ �Թ���!'
);-- ������ǻ�� 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ڿ��� ó���� ����',
'��������',
'��ǻ��',
'2022/05/30',
'������ ��������Ÿ��',
'����������',
 45000,
0.0,
16,
'�ڿ��� ó���� �ӽŷ���/�������� �����ϰ� 
�ش� �������� �ڼ��ϰ� �����ϴ� å.'
);-- ������ǻ�� 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'������ ������ġ ������',
'��������',
'��ǻ��',
'2022/03/04',
'������',
'���',
32400,
10.0,
15,
'�⺻�⿡ ����� ������ ������ġ �Թ���!'
);-- ������ǻ�� 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Do it! BERT�� GPT�� ���� �ڿ��� ó��',
'��������',
'��ǻ��',
'2021/12/01',
'�̱�â',
'�������ۺ���',
18000,
10.0,
13,
'��� ���� �˾Ƶ�� AI���� ����� ����!
Ʈ�������� �ٽ� �������� ���� �з�, ��� ����, ���� ���� �ǽ�����!.'
);-- ������ǻ�� 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ӽŷ��� ������ �����ذ� ����',
'��������',
'��ǻ��',
'2022/04/13',
'�Ź��',
'��緡��',
34200,
0.0,
14,
'�����ذ� ��Ŀ� ������ ��� ������ �ֽ��ϴ�.'
);-- ������ǻ�� 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Ŭ�� ��Ű��ó',
'��������',
'��ǻ��',
'2021/11/26',
'�� Ȩ����',
'��Ű�Ͻ�',
16200,
10.0,
18,
'������ ��Ű��ó ��Ÿ���� ���ø����̼��� ����� �� �ʿ��� ��� ����'
);-- ������ǻ�� 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����� �ӽŷ���',
'��������',
'��ǻ��',
'2020/05/04',
'�������� ����',
'�Ѻ��̵��',
49500,
9.7,
 20,
'�÷������� ���ƿ� �Ƹ��� �ΰ����� �о� �ε��� 1�� ����'
);-- ������ǻ�� 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'����Ʈ���� ��Ű��ó 101',
'��������',
'��ǻ��',
'2021/11/01',
'��ũ ��ó��',
'�Ѻ��̵��',
28820,
10.0,
14,
'�����ߴ� ��Ű��ó�� �������� �ǹ� ��ħ��'
);-- ������ǻ�� 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'MLOps ���� ���̵�',
'��������',
'��ǻ��',
'2022/04/29',
'����������',
'�Ѻ��̵��',
19800,
10.0,
8,
'MLOps�� ������� ���԰� Ȱ�����,
�������� �ӽŷ��� �ȭ�� ���� �ǿ� ���̵�!'
);-- ������ǻ�� 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�������� ���� ������ġ �Թ�',
'��������',
'��ǻ��',
'2022/01/20',
'������ȣ��',
'��������',
22500,
10.0,
7,
'������ġ�� �����ϴ� ������ ����� Ȱ��'
);-- ������ǻ�� 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���̽� �ӽŷ��� �Ǵٽ� ������ �м�',
'��������',
'��ǻ��',
'2019/06/15',
'����ȯ',
'������ȭ��',
22500,
9.5,
6,
'������ �����ڰ� �Ǳ� ���� ù����!'
);-- ������ǻ�� 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�����ڵ� �˾ƾ��� ����Ʈ���� �׽��� �ǹ�',
'��������',
'��ǻ��',
'2010/09/15',
'�ǿ���',
'STA',
25200,
9.1,
5,
'�׽����� ������ϴ� �̵鵵 �ǹ��� ���� ������ �ľ��� �� �ֵ��� 
����Ʈ���� �׽��ÿ� ���� ���� ������ ����'
);-- ������ǻ�� 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'���� ���� �ü��',
'��������',
'��ǻ��',
'2018/06/30',
'����ȣ',
'�Ѻ���ī����',
28000,
9.3,
4,
'��ǻ�� ���� �а� �л��� ������� �ü���� ������ ������ ������ å'
);-- ������ǻ�� 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�ټ��÷� 2�� �ӽŷ������� �����ϴ� �ڿ��� ó��',
'��������',
'��ǻ��',
'2022/03/24',
'��â��',
'��Ű�Ͻ�',
32400,
0.0,
3,
'�ټ��÷� 2�� BERT, GPT�� Ȱ���� ������ �ѱ��� �ڿ��� ó�� ���� ������ ���� ����ø��� 
ǻ�� ���װ� ��-Ʃ�� ����� �߰��߽��ϴ�!'
);-- ������ǻ�� 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�� ������ ���� �ϴ� NFT ��Ʈ',
'��������',
'��ǻ��',
'2022/06/01',
'��̺��',
'���������',
16200,
0.0,
2,
'���ǰ� ��Ÿ������ �ѳ���� NFT ũ���������� ��� ��
��� ��Ȱ���� ���� â�����, ������ �����ϴ� NFT ��Ʈ'
);-- ������ǻ�� 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Ŭ�� ��Ű��ó: ����Ʈ���� ������ ������ ��Ģ',
'��������',
'��ǻ��',
'2019/08/20',
'�ι�Ʈ C. ��ƾ',
'�λ���Ʈ',
26100,
9.6,
1,
'����ִ� ������ ����ִ� �ǿ����� ����Ʈ���� ��Ű��ó ��Ģ'
);-- ������ǻ�� 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'�׸����� ���� ������',
'��������',
'��ǻ��',
'2022/05/31',
'�ص�� �۷�����',
'����������',
54000,
0.0,
0,
'������ ���İ� �ڵ� ���� �ӽŷ��װ� �������� ���� �� �� �ʿ��� �̷��� ��� �� �ֵ��� ����'
);-- ������ǻ�� 20


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
'�ѱ��� 1.5���� �̱� �۰� �̹����� ����Ҽ� ����ģ�ڡ� ��1��'
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
�λ��� �� ��° ��ȸ�� �帳�ϴ�'
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
'��� ����� ������ ��ġ�� �ϱ���� å'
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
'1944�� ���þ� ����� ��Ż���� ����� ǳ���� ��ġ��ȭ �Ҽ�'
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
���� ���� �߰ſ� �Ǻ�Ŀ�� �ĺ���!'
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
-Colleen Hoover'
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
'Few other books in our time have touched so many readers'
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
'The Old Man and the Sea is one of Hemingway most enduring works'
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
'Lord of the Flies has established itself as a true classic.'
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
'�÷������� ���ƿ� �Ƹ��� �ΰ����� �о� �ε��� 1�� ����'
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
<���� ������ ��ȸ>�� ���� �״���� �������� ����������!'
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
THE ONE WHO HURTS YOU THE MOST'
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
'������ ��ȸ�ǽİ� �ü��� ǳ�������� ������ ���� ������ ��ǥ���� �Ҽ�'
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
'�뺧���л� ���� ���� ó������ ��ǥ�ϴ� ���� ����� �̽ñ����� ����Ҽ�'
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
������ ����� �ٸ����� �׵��� ������� ����� ����� ��Ʈ���� �о��ش�'
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
'�̱��� ������ ������� �۰� �ݸ� �Ĺ��� ���� �θǽ�!'
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
'� ���� ���� ������ ���� ������ ����!'
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
and We Should All Be Feminists.'
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
�ѱ� ȣ�� SF/��Ÿ�� ��ǥ�۰� ������ ��ǥ��'
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
'������ ���� �߸��� ������ �Ƹ޸�ĭ �帲�� ���!'
);-- �ܱ��Ҽ� 20


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
'���� �츮�� ������ �ΰ��̶�� �� ���ΰ�'
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
'�η������� �ұ����� ��, ��, �� �����̴�!'
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
'���� �� �ΰ�, �츮�� ���� ���� �ִ°�?'
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
'û�ҳ��� ���� <���긮ġ �����> ��1��.'
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
'��Ƴ��� ���� ���'
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
�츮 �ô� ���� ����� �ִ� ������'
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
'�ı��� ������ ���翡�� ���� �η��� �̷�!'
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
'�η� �ְ��� �߸�ǰ, ����!'
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
'�����ϸ鼭�� ���ӷ����� ��ü�� ��Ƴ� ������ ������ ����!'
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
'Named a Best Book of 2018 by the Financial Times and Fortune'
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
'South Korea from the Forgotten War to K-Pop!'
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
'Discovery and Settlement of the New World'
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
���������� �� �󱼡�30�ֳ� �����'
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
'races the development of thought through historical movements and periods from 1500 to 1830'
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
'In this Immensely original work with haunting contemporary significance'
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
'�� ���踦 ���� �������� ����� �� ���̹� �߾��� ������'
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
as seen through the lives of six ordinary citizens'
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
ǥ���� ������ �����ְ� ����ġ�� �ִ�'
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
'����, ������ ���� ���롯�� �ִ� ��� �̵��� ���� �ʵ���!'
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
'�Ƹ޸�ĭ�帲���� ��ȭ�� ó���ϰ� ��������!'
);-- �ܱ����� 20


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




COMMIT;

END;
 
EXEC book_insert;