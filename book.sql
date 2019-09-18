-- book sample project table

/* 테이블 명 : BOOK                              | 테이블명 : MANAGER
   ------------------------------------------   |-------------------------------------------------
   컬럼명,     데이터 타입(크기),  제약조건         | 컬럼명,       데이터 타입(크기),     제약조건
   ------------------------------------------   |-------------------------------------------------
   BOOK_SEQ   NUMBER            PK              |MANAGER_SEQ    NUMBER              PK    
   ISBN       VARCHAR2(13)      U               |MANAGER_ID     VARCHAR2(10)        U
   TITLE      VARCHAR2(50)      NOT NULL        |NAME           VARCHAR2(30)        
   AUTHOR     VARCHAR2(30)                      |PASSWORD       VARCHAR2(10)        NOT NULL
   CONTENT    VARCHAR2(3000)                    |REG_ID         VARCHAR2(10)  
   COMPANY_CD NUMBER(4)                         |REG_DATE       DATE              DEFAULT SYSDATE
   TOTAL_PAGE NUMBER(4)                         |MOD_ID         VARCHAR2(10) 
   PRICE      NUMBER(6)                         |MOD_DATE       DATE 
   QUANTITY   NUMBER(4)                         |
   REG_ID     VARCHAR2(10)                      |
   REG_DATE   DATE              DEFAULT SYSDATE |
   MOD_ID     VARCHAR2(10)                      |
   MOD_DATE   DATE                              |
   ------------------------------------------   |----------------------------------------------------
   테이블 명 : CODE
   ------------------------------------------   |----------------------------------------------------
   CODE       NUMBER(4)         PK
   p_CODE     NUMBER(4)         NOT NULL
   CODE_NM    VARCHAR2(60)      NOT NULL
   CODE_VAL   VARCHAR2(300)     NOT NULL
   USE_YN     CHAR(1)           
   CODE_DESC  VARCHAR2(300)  
   ORDER      NUMBER            NOT NULL   
   REG_ID     VARCHAR2(10)
   REG_DATE   DATE              DEFAULT SYSDATE
   MOD_ID     VARCHAR2(10)
   MOD_DATE   DATE
   ------------------------------------------   |----------------------------------------------------
   시퀀스 명 : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1씩 증가
*/
DROP TABLE BOOK;
CREATE TABLE BOOK(
    BOOK_SEQ    NUMBER        
  , ISBN        VARCHAR2(13)
  , TITLE       VARCHAR2(150)   NOT NULL
  , AUTHOR      VARCHAR2(35)
  , CONTENT     VARCHAR2(3000)
  , COMPANY_CD  NUMBER(4)
  , TOTAL_PAGE  NUMBER(4)
  , PRICE       NUMBER(6)
  , QUANTITY    NUMBER(4)
  , REG_ID      VARCHAR2(10)
  , REG_DATE    DATE    DEFAULT sysdate
  , MOD_ID      VARCHAR2(10)
  , MOD_DATE    DATE
  , CONSTRAINT    PK_BOOK      PRIMARY KEY (BOOK_SEQ)
  , CONSTRAINT   U_BOOK_ISBN  UNIQUE (ISBN)
);

INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', '채식주의자', '한강', '멘부커 상을 받은 한강의 소설', 1001, 247, 12000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936437978', '대도시의 사랑법', '박상영', '여름의 도시 풍경과 한데 어우러져 강한 인상을 남기는 박상영의 소설!', 1001, 344, 12600, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936456788', '아몬드', '손원평', '고통과 공감의 능력을 깨우치게 할 강력한 소설', 1001, 233, 9000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788932917245', '어린왕자', '앙투안 드 생택쥐페리', '어른들을 위한 동화', 1002, 150, 8820, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159036514', '데미안(초판본)(리커버리한정판)', '헤르만 헤세', '헤르만 헤세 탄생 140주년 기념 초호화 패브릭 양장', 1002, 248, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791186560938', '구글스토리', '데이비드 A 바이스', '상상할 수 없던 세계의 탄생 | 창립 20주년 기념판', 1002, 512, 22500, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', '제 인생에 답이 없어요', '선바', '크리에이터 선바의 거침없는 현생민담', 1003, 192, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791162202913', '모든 순간이 너였다', '하태완', '반짝반짝 빛나던 우리의 밤을, 꿈을, 사랑을 이야기하다', 1003, 272, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182591', '루거 총을 든 할머니', '브누아 필리퐁', '허울 좋은 도덕으로 무장한 사람들과 루거 총으로 무장한 한 여성 중 과연 진짜 괴물은 누구인가?', 1003, 416, 13320, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', '죽고 싶지만 떡볶이는 먹고 싶어', '백세희', '의심 없이 편안하게 사랑하고 사랑받고 싶은 한 사람의 이야기', 1004, 208, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9784909125125', '書店本事 台灣書店主43のスト-リ-', '黑木夏兒', '물 건너온 소설', 1004, 432, 35090, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9784847092831', 'イマドキ,明日が滿たされるなんてありえない.だから,リスカの痕ダケ整形したら死ねると思ってた.', '竹內桃子', '물 건너온 소설', 1004, 144, 14840, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', '책은 도끼다', '박웅현', '책으로 찍혀본적 있나?', 1005, 348, 14400, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956058054', '내가 확실히 아는 것들', '오프라 윈프리', '세계에서 가장 영향력 있는 인물 1위 오프리 윈프리 그녀가 쓴 유일한 책!!', 1005, 280, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956057309', '생각의 기쁨', '유병욱', '좋은 생각에 법칙 같은 건 없다!', 1005, 236, 12600, 5, 0);
COMMIT;

DROP TABLE MANAGER;
CREATE TABLE MANAGER(
     MANAGER_SEQ NUMBER
   , MANAGER_ID VARCHAR2(10)    NOT NULL
   , NAME       VARCHAR2(30)
   , PASSWORD   VARCHAR2(10)    NOT NULL
   , REG_ID     NUMBER
   , REG_DATE   DATE            DEFAULT sysdate
   , MOD_ID     VARCHAR2(10)
   , MOD_DATE   DATE
   , CONSTRAINT PK_MANAGER PRIMARY KEY (MANAGER_SEQ)
   , CONSTRAINT U_MANAGER_ID UNIQUE (MANAGER_ID)
);

INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES(0, 'root', '슈퍼관리자', 'root', 0);
INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES(SEQ_MANAGER.NEXTVAL, 'admin', '관리자', 'admin', 1);
COMMIT;

-- admin = 1, root = 0
DROP TABLE code;
CREATE TABLE CODE(
     CODE       NUMBER(4)        
   , p_CODE     NUMBER(4)         NOT NULL
   , CODE_NM    VARCHAR2(60)      NOT NULL
   , CODE_VAL   VARCHAR2(300)     NOT NULL
   , USE_YN     CHAR(1)           
   , CODE_DESC  VARCHAR2(300)  
   , SORT_ORDER   NUMBER            NOT NULL   
   , REG_ID     VARCHAR2(10)
   , REG_DATE   DATE              DEFAULT sysdate
   , MOD_ID     VARCHAR2(10)
   , MOD_DATE   DATE
   , CONSTRAINT PK_CODE  PRIMARY KEY (CODE)
);
/* --------------------------------------------------
    출판사 번호와 출판사 이름을 코드로 관리
    출판사 관련 코드는 1000번대가 출판사 콛드
    자세한 개별 출판사의 정보는 1001, 1002, 1003,.... 순서로 증가하도록 설계 데이터를 넣고 시작
*/
-- CODE 출판사 INSERT INTO 구문 작성
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1000, 0, 'COMPANY', '출판사', 'Y', '출판사 코드', 0, 0);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1001, 1000, 'CHANGBI', '창비', 'Y', '창작과 비평사', 0, 1);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1002, 1000, 'THE_STORY', '더스토리', 'Y', '더 스토리', 0, 2);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1003, 1000, 'WISDOM', '위즈덤', 'Y', '위즈덤 하우스', 0, 3);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1004, 1000, 'HUEN', '흔', 'Y', '독립출판 흔', 0, 4);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1005, 1000, 'BOOK_HOUSE', '북하우스', 'Y', '북 하우스', 0, 5);
COMMIT;

DROP SEQUENCE SEQ_BOOK;
CREATE SEQUENCE SEQ_BOOK 
  NOMAXVALUE  
  NOCYCLE
  INCREMENT BY 1;

DROP SEQUENCE SEQ_MANAGER;
CREATE SEQUENCE SEQ_MANAGER
  INCREMENT BY 1 
  NOMAXVALUE  
  NOCYCLE;
  
INSERT INTO BOOK (ISBN, TITLE, AUTHOR, CONTENT, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
     VALUES('9788936433598', '채식주의자', '한강', '창비', 247, 10000, 10, 0);