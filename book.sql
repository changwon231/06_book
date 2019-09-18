-- book sample project table

/* ���̺� �� : BOOK                              | ���̺�� : MANAGER
   ------------------------------------------   |-------------------------------------------------
   �÷���,     ������ Ÿ��(ũ��),  ��������         | �÷���,       ������ Ÿ��(ũ��),     ��������
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
   ���̺� �� : CODE
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
   ������ �� : SEQ_BOOK, SEQ_MANAGER : NOCYCLE, NOMAXVALUE, 1�� ����
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
VALUES (SEQ_BOOK.NEXTVAL, '9788936433598', 'ä��������', '�Ѱ�', '���Ŀ ���� ���� �Ѱ��� �Ҽ�', 1001, 247, 12000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936437978', '�뵵���� �����', '�ڻ�', '������ ���� ǳ��� �ѵ� ��췯�� ���� �λ��� ����� �ڻ��� �Ҽ�!', 1001, 344, 12600, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788936456788', '�Ƹ��', '�տ���', '����� ������ �ɷ��� ����ġ�� �� ������ �Ҽ�', 1001, 233, 9000, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788932917245', '�����', '������ �� �������丮', '����� ���� ��ȭ', 1002, 150, 8820, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791159036514', '���̾�(���Ǻ�)(��Ŀ����������)', '�츣�� �켼', '�츣�� �켼 ź�� 140�ֳ� ��� ��ȣȭ �к긯 ����', 1002, 248, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791186560938', '���۽��丮', '���̺�� A ���̽�', '����� �� ���� ������ ź�� | â�� 20�ֳ� �����', 1002, 512, 22500, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182645', '�� �λ��� ���� �����', '����', 'ũ�������� ������ ��ħ���� �����δ�', 1003, 192, 10800, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791162202913', '��� ������ �ʿ���', '���¿�', '��¦��¦ ������ �츮�� ����, ����, ����� �̾߱��ϴ�', 1003, 272, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791190182591', '��� ���� �� �ҸӴ�', '�괩�� �ʸ���', '��� ���� �������� ������ ������ ��� ������ ������ �� ���� �� ���� ��¥ ������ �����ΰ�?', 1003, 416, 13320, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9791196394509', '�װ� ������ �����̴� �԰� �;�', '�鼼��', '�ǽ� ���� ����ϰ� ����ϰ� ����ް� ���� �� ����� �̾߱�', 1004, 208, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9784909125125', '�������� ��ؽ�����43�Ϋ���-��-', '�������', '�� �ǳʿ� �Ҽ�', 1004, 432, 35090, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9784847092831', '���ޫɫ�,٥��ػ�������ʪ�ƪ��ꪨ�ʪ�.������,�꫹�����ݫ��������������ݪͪ���֪êƪ�.', '��Ү���', '�� �ǳʿ� �Ҽ�', 1004, 144, 14840, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956055466', 'å�� ������', '�ڿ���', 'å���� �������� �ֳ�?', 1005, 348, 14400, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956058054', '���� Ȯ���� �ƴ� �͵�', '������ ������', '���迡�� ���� ����� �ִ� �ι� 1�� ������ ������ �׳డ �� ������ å!!', 1005, 280, 12420, 5, 0);
INSERT INTO BOOK (BOOK_SEQ, ISBN, TITLE, AUTHOR, CONTENT, COMPANY_CD, TOTAL_PAGE, PRICE, QUANTITY, REG_ID)
VALUES (SEQ_BOOK.NEXTVAL, '9788956057309', '������ ���', '������', '���� ������ ��Ģ ���� �� ����!', 1005, 236, 12600, 5, 0);
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
VALUES(0, 'root', '���۰�����', 'root', 0);
INSERT INTO MANAGER (MANAGER_SEQ, MANAGER_ID, NAME, PASSWORD, REG_ID)
VALUES(SEQ_MANAGER.NEXTVAL, 'admin', '������', 'admin', 1);
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
    ���ǻ� ��ȣ�� ���ǻ� �̸��� �ڵ�� ����
    ���ǻ� ���� �ڵ�� 1000���밡 ���ǻ� ����
    �ڼ��� ���� ���ǻ��� ������ 1001, 1002, 1003,.... ������ �����ϵ��� ���� �����͸� �ְ� ����
*/
-- CODE ���ǻ� INSERT INTO ���� �ۼ�
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1000, 0, 'COMPANY', '���ǻ�', 'Y', '���ǻ� �ڵ�', 0, 0);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1001, 1000, 'CHANGBI', 'â��', 'Y', 'â�۰� �����', 0, 1);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1002, 1000, 'THE_STORY', '�����丮', 'Y', '�� ���丮', 0, 2);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1003, 1000, 'WISDOM', '�����', 'Y', '����� �Ͽ콺', 0, 3);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1004, 1000, 'HUEN', '��', 'Y', '�������� ��', 0, 4);
INSERT INTO CODE(CODE, P_CODE, CODE_NM, CODE_VAL, USE_YN, CODE_DESC, SORT_ORDER, REG_ID) 
        VALUES (1005, 1000, 'BOOK_HOUSE', '���Ͽ콺', 'Y', '�� �Ͽ콺', 0, 5);
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
     VALUES('9788936433598', 'ä��������', '�Ѱ�', 'â��', 247, 10000, 10, 0);