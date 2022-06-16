DROP PROCEDURE book_insert;
CREATE  OR REPLACE PROCEDURE book_insert(
IN bo_id NUMBER, -- 책의 아이디
IN bo_name VARCHAR2, -- 책의이름 
IN bo_cc VARCHAR2, -- 책의분류 ex) 국내서적 ,해외서적
IN bo_janre VARCHAR, -- 책의장르 ex)  소설, 역사, 만화
IN bo_date DATE, -- 출간일 
IN bo_author VARCHAR2, -- 작가
IN bo_pb VARCHAR2, -- 책출판사
IN bo_price NUMBER, -- 책의 가격
IN bo_grade NUMBER, -- 책의 평점 
IN bo_count NUMBER, -- 책의 재고
IN bo_ex VARCHAR2 -- 책설명
)

IS

BEGIN -- 내용


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'작별인사',
'국내서적',
'소설',
'2022/05/02',
'김영하',
'복복서가',
12600,
9.7,
12,
'누구도 도와줄 수 없는 상황, 혼자 헤쳐나가야 한다
지켜야 할 약속, 붙잡고 싶은 온기'
);-- 한국소설 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'불편한 편의점',
'국내서적',
'소설',
'2021/04/20',
'김호연',
'나무옆의자',
12600,
9.8,
11,
'원 플러스 원의 기쁨, 삼각김밥 모양의 슬픔, 만 원에 네 번의 폭소가 터지는 곳!
힘겨운 시대를 살아가는 우리들에게 다가온 조금 특별한 편의점 이야기'
);-- 한국소설 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'디 에센셜 한강',
'국내서적',
'소설',
'2022/05/30',
'한강',
'문학동네',
15300,
9.3,
10,
'한강 작가의 장편소설, 단편소설, 시, 산문을 한 권으로 만난다!'
);-- 한국소설 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'저만치 혼자서',
'국내서적',
'소설',
'2022/06/01',
'김훈',
'문학동네',
13500,
10.0,
12,
'나는 한 사람의 이웃으로 이 글을 썼다.'
);-- 한국소설 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'책들의 부엌',
'국내서적',
'소설',
'2022/05/12',
'김지혜',
'팩토리나인',
13050,
9.6,
13,
'갓 지은 맛있는 책 냄새가 폴폴 풍기는
여기는 ‘소양리 북스 키친’입니다.'
);-- 한국소설 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'어서 오세요, 휴남동 서점입니다',
'국내서적',
'소설',
'2022/01/17',
'황보름',
'클레이하우스',
13500,
9.7,
14,
'브런치북 전자책 출판 프로젝트 수상작! 독자 요청 쇄도로 전격 종이책 출간'
);-- 한국소설 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'저주토끼',
'국내서적',
'소설',
'2022/04/01',
'정보라',
'아작',
13320,
9.2,
15,
'2022 부커상 최종 후보 지명작!
한국 호러 SF/판타지 대표작가 정보라 대표작'
);-- 한국소설 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'애쓰지 않아도',
'국내서적',
'소설',
'2022/04/30',
'최은영',
'마음산책',
13050,
9.6,
16,
'사람의 마음은 좀처럼 지치지를 않나봐요.
자꾸만 노력하려 하고, 다가가려 해요.
나에게도 그 마음이 살아 있어요.'
);-- 한국소설 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'달러구트 꿈 백화점',
'국내서적',
'소설',
'2020/07/08',
'이미예',
'팩토리나인',
12420,
9.2,
15,
'잠들어야만 입장 가능한 꿈 백화점에서 일어나는 비밀스럽고도 기묘하며 가슴 뭉클한 판타지 소설'
);-- 한국소설 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'모순',
'국내서적',
'소설',
'2013/04/01',
'양귀자',
'쓰다',
11700,
9.8,
14,
'인생은 살아가면서 탐구하는 것!'
);-- 한국소설 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'밝은 밤',
'국내서적',
'소설',
'2021/07/27',
'최은영',
'문학동네',
13050,
9.8,
16,
'백 년의 시간을 감싸안으며 이어지는 사랑과 숨의 기록
최은영 첫 장편소설'
);-- 한국소설 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'지구 끝의 온실',
'국내서적',
'소설',
'2021/08/18',
'김초엽',
'자이언트북스',
13500,
9.7,
17,
'김초엽 첫 장편소설, 모두가 간절히 기다려온 이야기'
);-- 한국소설 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'칵테일, 러브, 좀비',
'국내서적',
'소설',
'2020/04/13',
'조예은',
'안전가옥',
9000,
9.5,
18,
'안전가옥 쇼-트 시리즈의 두 번째 책으로, 조예은 작가의 단편집'
);-- 한국소설 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'새의 선물',
'국내서적',
'소설',
'2020/06/03',
'은희경',
'문학동네',
14400,
10.0,
16,
'우리가 열광하고 아꼈던 그때 그 여자아이와 다시 만나다
성장소설의 새로운 클래식 『새의 선물』 100쇄 기념 개정판'
);-- 한국소설 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'살인자의 기억법',
'국내서적',
'소설',
'2020/08/28',
'김영하',
'북북서가',
9000,
9.9,
14,
'치밀한 구성과 대담한 문체,
묵직한 주제와 위트로
전 세계 독자를 사로잡은 최고의 심리스릴러'
);-- 한국소설 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'작별하지 않는다',
'국내서적',
'소설',
'2020/09/09',
'한강',
'문학동네',
16000,
9.3,
13,
'이곳에 살았던 이들로부터, 이곳에 살아 있는 이들로부터
꿈처럼 스며오는 지극한 사랑의 기억'
);-- 한국소설 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'완전한 행복',
'국내서적',
'소설',
'2021/06/08',
'정유정',
'은행나무',
14220,
9.4,
14,
'자기애의 늪에 빠진 삶은 얼마나 위태로운가,
압도적 서사 위 정교하고 서늘한 공포'
);-- 한국소설 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'시선으로부터',
'국내서적',
'소설',
'2020/06/05',
'정세랑',
'문학동네',
12600,
9.5,
15,
'한국문학이 당도한 올곧은 따스함, 정세랑 신작 장편소설'
);-- 한국소설 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'위저드 베이커리',
'국내서적',
'소설',
'2022/03/27',
'구병모',
'창비',
12600,
9.9,
13,
'50만 부 판매 베스트셀러
위험한 소원이 이루어지는 곳, 위저드 베이커리'
);-- 한국소설 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'종의 기원',
'국내서적',
'소설',
'2016/05/16',
'정유정',
'은행나무',
11700,
9.3,
16,
'26년 동안 숨어 있던 내 안의 또 다른 내가 왔다!'
);-- 한국소설 20


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
'인류문명의 불균형은 총, 균, 쇠 때문이다!'
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
'인간 창조성이 가장 뜨겁게 폭발했던 경이로운 시대, 축의 시대!'
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
,문명의 창조, 발전, 교류에 관한 황홀하고 위대한 서사!'
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
'사라진 문명의 흔적을 찾아서!'
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
모래바람에 뒤덮여 있던 최초의 역사가 되살아난다.'
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
의학과 추리의 눈으로 바라본 뜻밖의 인물사'
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
둘러싼 모든 의문에 대한 상세하고도 지적인 해답을 얻을 수 있다.'
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
'세계의 학계와 매스컴에 격렬한 논쟁을 불러일으킨 화제의 책.'
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
'서울대학교 비교문화연구소 한국인류학총서'
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
사람들에게는 이보다 좋은 길잡이!'
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
‘먹을 수밖에 없었던’ 또는 ‘먹게 된’ 이유를 규명'
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
'인구는 언제나 중요했다.'
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
'유사 이래 경쟁해온 동서양 문명을 비교·분석하다!'
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
민족국가의 기원과 형성과정을 추적하고 있는 책'
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
그런데 어느날 부인은 그 남자가 자신의 남편이 아니라고 고소를 한다. 과연 ?'
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
국내외적인 문제에 어떻게 대처하고 무엇을 배울 것인가를 생각해야 한다'
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
얼마나 역동적으로 변화해 왔는지를 보여준다'
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
‘지성사 연구’를 만나다'
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
편리하고 쓸모 있게 진화하는 물질의 흥미로운 연대기'
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
'인류의 운명을 결정하는 힘, 기후!'
);-- 국내역사 20


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'물고기는 존재하지 않는다',
'국내서적',
'과학',
'2021/12/17',
'룰루 밀러',
'곰출판',
 15300,
9.1,
11,
'피버디상 수상자 룰루 밀러의
사랑과 혼돈, 과학적 집착에 관한 경이롭고도 충격적인 데뷔작!'
);-- 국내과학 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'이기적 유전자',
'국내서적',
'과학',
'2018/10/20',
'리처드 도킨스',
'을유문화사',
 18000,
9.3,
19,
'독특한 발상과 놀라운 주장으로 40여 년간 수많은 찬사와 논쟁의 중심에 선 과학 교양서의 바이블!'
);-- 국내과학 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'걷기의 세계',
'국내서적',
'과학',
'2022/06/10',
'셰인 오마라',
'미래의창',
 14400,
10.0,
17,
'당신의 뇌를 깨우고 싶다면, 지금 일어나 걸어라!'
);-- 국내과학 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'와계인 인터뷰',
'국내서적',
'과학',
'2013/10/31',
'로렌스 R. 스펜서',
'아이커넥',
16200,
9.2,
11,
'상부의 지시에 따라 2개월간 외계인과의 인터뷰 임무를 수행하게 되며 
남긴 필기본 사본을 공개!'
);-- 국내과학 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'다정한 것이 살아남는다',
'국내서적',
'과학',
'2021/07/26',
'브라이언 헤어',
'디플롯',
 19800,
9.6,
16,
'적자생존은 틀렸다.
진화의 승자는 최적자가 아니라 다정한 자였다.'
);-- 국내과학 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'어떻게 물리학을 사랑하지 않을 수 있을까?',
'국내서적',
'과학',
'2022/05/10',
'짐 알칼릴리',
'윌북',
16020,
9.3,
15,
'현대 물리학의 3대 기둥 양자역학, 상대성이론, 열역학을 수식 없이 알려준다!'
);-- 국내과학 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'미적분의 쓸모',
'국내서적',
'과학',
'2022/05/21',
'한화택',
'더퀘스트',
17550,
10.0,
13,
'수학이 필요한 이유를 알려준 시리즈,
미적분에 대한 두려움을 떨치게 해준 책.'
);-- 국내과학 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'비전공자도 이해할 수 있는 AI 지식',
'국내서적',
'과학',
'2022/03/04',
'박상길',
'반니',
17820,
9.5,
14,
'미래는 인공지능을 이해하는 사람의 것이다.'
);-- 국내과학 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'개미와 공작',
'국내서적',
'과학',
'2016/12/31',
'헬레나 크로닌',
'사이언스북스',
35000,
10.0,
18,
'타주의와 성 선택의 수수께끼를 둘러싼, 
진화론의 역사에서 가장 치열한 토론의 과정과 그 성과를 집대성한 역작'
);-- 국내과학 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'엔드 오브 타임',
'국내서적',
'과학',
'2021/02/15',
'브라이언 그린',
'와이즈베리',
19800,
9.5,
 20,
'2020년 美 아마존 과학 분야 1위!'
);-- 국내과학 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'나를 알고 싶을 때 뇌과학을 공부합니다',
'국내서적',
'과학',
'2022/03/30',
'질 볼트 테일러',
'윌북',
17820,
10.0,
14,
'아마존 최장기 베스트셀러 《나는 내가 죽었다고 생각했습니다》 저자의 신작'
);-- 국내과학 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'천 개의 뇌',
'국내서적',
'과학',
'2022/05/02',
'제프 호킨스',
'이데아',
18000,
8.8,
8,
'우리의 뇌 속에서 민주주의가 작동한다고?'
);-- 국내과학 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'과학으로 생각하기',
'국내서적',
'과학',
'2022/05/13',
'임두원',
'포레스트 북스',
17820,
10.0,
7,
'생각의 그릇을 키우는 42가지 과학 이야기'
);-- 국내과학 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'개는 천재자',
'국내서적',
'과학',
'2022/05/30',
'브라이언 헤어',
'디플롯',
19800,
9.4,
6,
'사피엔스의 동반자가 알려주는 다정함의 과학'
);-- 국내과학 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'왼손잡이 우주',
'국내서적',
'과학',
'2022/05/10',
'최강신',
'동아시아',
14400,
10.0,
5,
'대칭부터 전기와 자기까지, 약한 상호작용부터 끈이론까지
왼쪽과 오른쪽을 구별하다 보면, 현대 물리학이 보인다!'
);-- 국내과학 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'이토록 뜻밖의 뇌과학',
'국내서적',
'과학',
'2021/08/05',
'리사 팰트먼 배럿',
'더퀘스트',
14400,
9.1,
4,
'뇌를 안다는 것은, 나와 인간을 안다는 것'
);-- 국내과학 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'다정함의 과학',
'국내서적',
'과학',
'2022/01/28',
'켈리 하딩',
'더퀘스트',
17100,
9.6,
3,
'현대의학이 가르쳐주지 않는 건강한 삶을 위한 다정함의 놀라운 과학'
);-- 국내과학 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'지구는 괜찮아, 우리가 문제지',
'국내서적',
'과학',
'2022/02/18',
'곽재식',
'어크로스',
16920,
9.8,
2,
'세상에서 가장 이해하기 쉬운 21세기 기후 교양'
);-- 국내과학 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'명상하는 뇌',
'국내서적',
'과학',
'2022/05/01',
'대니얼 골먼',
'김영사',
18000,
9.0,
1,
'마음 훈련이 가져오는 기적 같은 뇌의 변화'
);-- 국내과학 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'식물의 책',
'국내서적',
'과학',
'2019/10/25',
'이소영',
'책읽는수요일',
13500,
9.3,
0,
'식물세밀화가의 시선에서 말하는 도시식물 이야기!'
);-- 국내과학 20


INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'구글 엔지니어는 이렇게 일한다',
'국내서적',
'컴퓨터',
'2021/05/10',
'타이터스 원터스',
'한빛미디어',
 40500,
8.9,
11,
'구글은 어떻게 개발하고 코드를 관리하는가!'
);-- 국내컴퓨터 1
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'혼자 공부하느 머신러닝+딥러닝',
'국내서적',
'컴퓨터',
'2020/12/21',
'박해선',
'한빛미디어',
  23400,
9.7,
19,
'혼자 해도 충분하다! 1:1 과외하듯 배우는 인공지능 자습서'
);-- 국내컴퓨터 2
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'한 권으로 읽는 컴퓨터 구조와 프로그래밍',
'국내서적',
'컴퓨터',
'2021/04/08',
'조너선 스타인하트',
'책만',
 31500,
9.0,
17,
'커튼 뒤에 감춰진 컴퓨터 구조와 프로그래밍에 대한 
거의 모든 것을 다루는 컴퓨터공학 개론서'
);-- 국내컴퓨터 3
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'밑바닥부터 시작하는 딥러닝',
'국내서적',
'컴퓨터',
'2017/01/03',
'사이토 고키',
'한빛미디어',
21600,
9.6,
11,
'직접 구현하고 움직여보며 익히는 가장 쉬운 딥러닝 입문서!'
);-- 국내컴퓨터 4
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'자연어 처리의 정석',
'국내서적',
'컴퓨터',
'2022/05/30',
'제이콥 에어젠슈타인',
'에이콘출판',
 45000,
0.0,
16,
'자연어 처리와 머신러닝/딥러닝을 통합하고 
해당 과정들을 자세하게 설명하는 책.'
);-- 국내컴퓨터 5
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'딥러닝 파이토치 교과서',
'국내서적',
'컴퓨터',
'2022/03/04',
'서지영',
'길벗',
32400,
10.0,
15,
'기본기에 충실한 딥러닝 파이토치 입문서!'
);-- 국내컴퓨터 6
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'Do it! BERT와 GPT로 배우는 자연어 처리',
'국내서적',
'컴퓨터',
'2021/12/01',
'이기창',
'이지스퍼블리싱',
18000,
10.0,
13,
'사람 말을 알아듣는 AI’를 만들어 보자!
트랜스포머 핵심 원리부터 문서 분류, 기계 독해, 문장 생성 실습까지!.'
);-- 국내컴퓨터 7
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'머신러닝 딥러닝 문제해결 전략',
'국내서적',
'컴퓨터',
'2022/04/13',
'신백균',
'골든래빗',
34200,
0.0,
14,
'문제해결 방식에 정답은 없어도 패턴은 있습니다.'
);-- 국내컴퓨터 8
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'클린 아키텍처',
'국내서적',
'컴퓨터',
'2021/11/26',
'톰 홈버그',
'위키북스',
16200,
10.0,
18,
'육각형 아키텍처 스타일의 애플리케이션을 만드는 데 필요한 모든 지식'
);-- 국내컴퓨터 9
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'핸즈온 머신러닝',
'국내서적',
'컴퓨터',
'2020/05/04',
'오렐리앙 제롱',
'한빛미디어',
49500,
9.7,
 20,
'컬러판으로 돌아온 아마존 인공지능 분야 부동의 1위 도서'
);-- 국내컴퓨터 10
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'소프트웨어 아키텍처 101',
'국내서적',
'컴퓨터',
'2021/11/01',
'마크 리처즈',
'한빛미디어',
28820,
10.0,
14,
'막막했던 아키텍처가 쉬워지는 실무 지침서'
);-- 국내컴퓨터 11
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'MLOps 도입 가이드',
'국내서적',
'컴퓨터',
'2022/04/29',
'데이터이쿠',
'한빛미디어',
19800,
10.0,
8,
'MLOps의 개념부터 도입과 활용까지,
성공적인 머신러닝 운영화를 위한 실용 가이드!'
);-- 국내컴퓨터 12
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'딥러닝을 위한 파이토치 입문',
'국내서적',
'컴퓨터',
'2022/01/20',
'딥러닝호형',
'영진닷컴',
22500,
10.0,
7,
'파이토치로 시작하는 딥러닝 구축과 활용'
);-- 국내컴퓨터 13
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'파이썬 머신러닝 판다스 데이터 분석',
'국내서적',
'컴퓨터',
'2019/06/15',
'오승환',
'정보문화사',
22500,
9.5,
6,
'데이터 과학자가 되기 위한 첫걸음!'
);-- 국내컴퓨터 14
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'개발자도 알아야할 소프트웨어 테스팅 실무',
'국내서적',
'컴퓨터',
'2010/09/15',
'권원일',
'STA',
25200,
9.1,
5,
'테스팅을 어려워하는 이들도 실무에 대한 내용을 파악할 수 있도록 
소프트웨어 테스팅에 대한 상세한 정보를 제공'
);-- 국내컴퓨터 15
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'쉽게 배우는 운영체제',
'국내서적',
'컴퓨터',
'2018/06/30',
'조성호',
'한빛아카데미',
28000,
9.3,
4,
'컴퓨터 관련 학과 학생을 대상으로 운영체제의 구조와 원리를 설명한 책'
);-- 국내컴퓨터 16
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'텐서플로 2와 머신러닝으로 시작하는 자연어 처리',
'국내서적',
'컴퓨터',
'2022/03/24',
'전창욱',
'위키북스',
32400,
0.0,
3,
'텐서플로 2와 BERT, GPT를 활용해 구현한 한국어 자연어 처리 모델의 성능을 한층 끌어올리는 
퓨샷 러닝과 피-튜닝 기법을 추가했습니다!'
);-- 국내컴퓨터 17
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'한 걸음씩 따라 하는 NFT 아트',
'국내서적',
'컴퓨터',
'2022/06/01',
'루미블루',
'루비페이퍼',
16200,
0.0,
2,
'현실과 메타버스를 넘나드는 NFT 크리에이터의 모든 것
취미 생활에서 수익 창출까지, 누구나 도전하는 NFT 아트'
);-- 국내컴퓨터 18
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'클린 아키텍처: 소프트웨어 구조와 설계의 원칙',
'국내서적',
'컴퓨터',
'2019/08/20',
'로버트 C. 마틴',
'인사이트',
26100,
9.6,
1,
'살아있는 전설이 들려주는 실용적인 소프트웨어 아키텍처 원칙'
);-- 국내컴퓨터 19
INSERT INTO book_table
VALUES(
NUM_SEQ.nextval,
'그림으로 배우는 딥러닝',
'국내서적',
'컴퓨터',
'2022/05/31',
'앤드류 글래스너',
'에이콘출판',
54000,
0.0,
0,
'복잡한 수식과 코드 없이 머신러닝과 딥러닝을 배우는 데 꼭 필요한 이론을 배울 수 있도록 구성'
);-- 국내컴퓨터 20


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
'한국계 1.5세인 미국 작가 이민진의 장편소설 『파친코』 제1권'
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
인생의 두 번째 기회를 드립니다'
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
'삶과 사랑의 진정한 가치를 일깨우는 책'
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
'1944년 러시아 혁명과 스탈린의 배신을 풍자한 정치우화 소설'
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
가장 젊고 뜨거운 맨부커상 후보작!'
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
-Colleen Hoover'
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
'Few other books in our time have touched so many readers'
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
'The Old Man and the Sea is one of Hemingway most enduring works'
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
'Lord of the Flies has established itself as a true classic.'
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
'컬러판으로 돌아온 아마존 인공지능 분야 부동의 1위 도서'
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
<죽은 시인의 사회>를 원문 그대로의 감동으로 만나보세요!'
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
THE ONE WHO HURTS YOU THE MOST'
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
'예리한 사회의식과 냉소적 풍자정신이 빛나는 조지 오웰의 대표적인 소설'
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
'노벨문학상 수상 이후 처음으로 발표하는 거장 가즈오 이시구로의 장편소설'
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
완전히 상실한 앨리에게 그들의 한평생의 사랑의 기록인 노트북을 읽어준다'
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
'미국과 유럽을 사로잡은 작가 콜린 후버의 핫한 로맨스!'
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
'삶에 대한 깊은 통찰을 담은 현대의 고전!'
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
and We Should All Be Feminists.'
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
한국 호러 SF/판타지 대표작가 정보라 대표작'
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
'성공에 대한 야망과 실패한 아메리칸 드림의 비극!'
);-- 외국소설 20


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
'이제 우리는 무엇을 인간이라고 할 것인가'
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
'인류문명의 불균형은 총, 균, 쇠 때문이다!'
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
'신이 된 인간, 우리는 어디로 가고 있는가?'
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
'청소년을 위한 <곰브리치 세계사> 제1권.'
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
'살아남은 자의 기록'
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
우리 시대 가장 영향력 있는 지성인'
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
'파괴된 문명의 역사에서 배우는 인류의 미래!'
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
'인류 최고의 발명품, 도시!'
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
'간결하면서도 유머러스한 필체로 담아낸 유쾌한 경제학 강의!'
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
'Named a Best Book of 2018 by the Financial Times and Fortune'
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
'South Korea from the Forgotten War to K-Pop!'
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
'Discovery and Settlement of the New World'
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
『지식인의 두 얼굴』30주년 기념판'
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
'races the development of thought through historical movements and periods from 1500 to 1830'
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
'In this Immensely original work with haunting contemporary significance'
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
'전 세계를 교육 논쟁으로 들끓게 한 에이미 추아의 교육법'
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
as seen through the lives of six ordinary citizens'
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
표현의 본질을 깊이있게 파헤치고 있다'
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
'광기, ‘가장 고독한 고통’에 있는 모든 이들을 위한 필독서!'
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
'아메리칸드림’의 신화는 처참하게 무너졌다!'
);-- 외국역사 20


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




COMMIT;

END;
 
EXEC book_insert;