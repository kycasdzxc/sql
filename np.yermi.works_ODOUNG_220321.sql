SELECT * FROM TBL_MEMBER;

SELECT * FROM TBL_BOARD;

-- 공지사항, 자유게시판
-- 게시판 별 테이블 사용 X
-- 카테고리를 컬림으로 관리 / 1 : 자유게시판, 2 : 공지사항

ALTER TABLE TBL_BOARD ADD (CATEGORY NUMBER DEFAULT 1);

SELECT * FROM TBL_BOARD;

-- 행개수 늘리는 쿼리
INSERT INTO TBL_BOARD(BNO, TITLE, HITCOUNT, CONTENT, REGDATE, WRITER)
    SELECT SEQ_BOARD.NEXTVAL, TITLE, HITCOUNT, CONTENT, REGDATE, WRITER FROM TBL_BOARD;

SELECT *
FROM (
    SELECT
        /*+ INDEX_DESC(TBL_BOARD PK_BOARD) */
        BNO,
        TITLE,
        HITCOUNT,
        CASE
            WHEN SYSDATE - REGDATE > 1 THEN TO_CHAR(REGDATE, 'YY/MM/DD')
            ELSE TO_CHAR(REGDATE, 'HH24:MI:SS')
        END REGDATE,
        WRITER,
        ROWNUM RN,
        (SELECT COUNT(BNO) FROM TBL_BOARD) CNT
    FROM TBL_BOARD
    WHERE
        CATEGORY = 1
        AND ROWNUM <= 50
)
WHERE RN > 40;

SELECT COUNT(*) FROM TBL_BOARD WHERE CATEGORY = 1;
CREATE UNIQUE INDEX IDX_BOARD_BNO_CATEGORY ON TBL_BOARD(BNO DESC, CATEGORY);

SELECT COUNT(BNO) FROM TBL_BOARD;

INSERT INTO TBL_BOARD (BNO, TITLE, CONTENT, WRITER) VALUES(SEQ_BOARD.NEXTVAL, '제목', '내용', '아무개');

-- TBL_ATTACH
-- 물리적 파일이름(문자 50), 원본 파일 이름(문자 500), 경로(문자 10), 글번호(숫자), 이미지 여부(불린: 문자 1), 순서(숫자) >> 논리 스키마에 대한 개념적 정의
DROP TABLE TBL_ATTACH;

CREATE TABLE TBL_ATTACH (
    UUID VARCHAR2(50) CONSTRAINT PK_ATTACH PRIMARY KEY,
    ORIGIN VARCHAR2(500) NOT NULL,
    PATH CHAR(10),
    IMAGE CHAR(1) DEFAULT '0',
    ORD NUMBER DEFAULT 1,
    BNO CONSTRAINT FK_ATTACH_BNO REFERENCES TBL_BOARD(BNO)
);

CREATE UNIQUE INDEX IDX_ATTACH_UUID_BNO ON TBL_ATTACH(UUID, BNO DESC);

-- 목록조회
SELECT /*+ INDEX(TBL_ATTACH IDX_ATTACH_UUID_BNO) */ * FROM TBL_ATTACH WHERE BNO = 1;

-- 상세조회
SELECT * FROM TBL_ATTACH WHERE UUID = '1';

SELECT * FROM TBL_ATTACH;