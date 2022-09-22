#22-09-22

이슈 부분
1.글쓰기 기능 테스트할때 Not null 부분 꼭 mapper에서 작성해줘야함
**필요에 따라 SQL 테이블에서 not null 해지









# etuProjectTest

SQL 쿼리


DROP TABLE TB_COMMUNITY;
DROP TABLE TB_POST;
DROP TABLE TB_REFERENCEROOM;

-- 자유 게시판
CREATE TABLE TB_COMMUNITY(
    IDX NUMBER(20) NOT NULL, -- 인덱스 
    CUM_TITLE VARCHAR2(255) NOT NULL, -- 제목
    CUM_CONTENTS VARCHAR2(3000) NOT NULL, -- 내용
    CUM_WRITER VARCHAR2(255) NOT NULL, -- 작성자
    CUM_VIEW_CNT NUMBER(11) NOT NULL, -- 조회수
    CUM_REGISTER_TIME DATE -- 시간
);
ALTER TABLE TB_COMMUNITY
ADD CONSTRAINT TB_COMMUNITY_PK PRIMARY KEY(IDX);

-- 데이터 정보 --

INSERT INTO TB_COMMUNITY (IDX,CUM_TITLE,CUM_CONTENTS,CUM_WRITER,CUM_VIEW_CNT)   values (TB_COMMUNITY_IDX.nextval, '제목입니다', '내용입니다', '작성자입니다', '1');
INSERT INTO TB_COMMUNITY (IDX,CUM_TITLE,CUM_CONTENTS,CUM_WRITER,CUM_VIEW_CNT)   values (TB_COMMUNITY_IDX.nextval, '제목입니다', '내용입니다', '작성자입니다', '2');
INSERT INTO TB_COMMUNITY (IDX,CUM_TITLE,CUM_CONTENTS,CUM_WRITER,CUM_VIEW_CNT)   values (TB_COMMUNITY_IDX.nextval, '제목입니다', '내용입니다', '작성자입니다', '3');
INSERT INTO TB_COMMUNITY (IDX,CUM_TITLE,CUM_CONTENTS,CUM_WRITER,CUM_VIEW_CNT)   values (TB_COMMUNITY_IDX.nextval, '제목입니다', '내용입니다', '작성자입니다', '4');
INSERT INTO TB_COMMUNITY (IDX,CUM_TITLE,CUM_CONTENTS,CUM_WRITER,CUM_VIEW_CNT)   values (TB_COMMUNITY_IDX.nextval, '제목입니다', '내용입니다', '작성자입니다', '5');

--공지사항
CREATE TABLE TB_POST(
    IDX NUMBER(20) NOT NULL, --인덱스
    POST_TITLE VARCHAR2(100) NOT NULL, -- 제목
    POST_CONTENT VARCHAR2(3000) NOT NULL, -- 내용
    POST_WRITER  VARCHAR2(20) NOT NULL, -- 작성자
    POST_VIEW_CNT NUMBER(11) NOT NULL, -- 조회수
    POST_NOTICE_YN NUMBER(1) NOT NULL, -- '공지글 여부'
    POST_SECRET_YN NUMBER(1) NOT NULL, -- '비밀글 여부'
    POST_DELETE_YN NUMBER(1) NOT NULL, -- 삭제여부
    POST_REGISTER_TIME DATE -- 시간
);
ALTER TABLE TB_POST
ADD CONSTRAINT TB_POST_PK PRIMARY KEY(IDX);


--자료실
CREATE TABLE TB_REFERENCEROOM(
    IDX NUMBER(20) NOT NULL, -- 인덱스
    REF_ORGI_FILE_NAME VARCHAR2(200) NOT NULL, -- 파일 이름
    REF_SAVE_FILE_NAME VARCHAR2(500) NOT NULL, -- 저장 파일 이름
    REF_FILE_SIZE NUMBER(11) NOT NULL, -- 파일 크기
    REF_FILE_PATH VARCHAR(25) NOT NULL, -- 파일경로
    REF_REGISTER_TIME DATE -- 업로드 시간
);
ALTER TABLE TB_REFERENCEROOM
ADD CONSTRAINT TB_REFERENCEROOM_PK PRIMARY KEY(IDX);

-- idx 및 사번용 시퀀스
CREATE SEQUENCE TB_COMMUNITY_IDX
START WITH 1
INCREMENT BY 1;

-- idx 및 사번용 시퀀스
CREATE SEQUENCE TB_POST_IDX
START WITH 1
INCREMENT BY 1;

-- idx 및 사번용 시퀀스
CREATE SEQUENCE TB_REFERENCEROOM_IDX
START WITH 1
INCREMENT BY 1;

-- 시퀀스 초기화용
--DROP SEQUENCE TB_COMMUNITY_IDX;
--DROP SEQUENCE TB_POST_IDX;
--DROP SEQUENCE TB_REFERENCEROOM_IDX;

-- 날짜 포맷 변경
ALTER SESSION SET NLS_DATE_FORMAT = 'yyyy-MM-dd';


--
SELECT * FROM TB_COMMUNITY;
SELECT * FROM TB_POST;
SELECT * FROM TB_REFERENCEROOM;

COMMIT;

DESC TB_COMMUNITY;
DESC TB_POST;
DESC TB_REFERENCEROOM;
