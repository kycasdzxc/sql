SELECT DATEDIFF(DATE_ADD(NOW(), INTERVAL -5 DAY), NOW()) FROM DUAL;


SELECT * FROM counsel_info WHERE DATEDIFF(COUNSEL_REGDATE, NOW()) <= -5;

SELECT
	REGEXP_REPLACE(
		(SELECT COUNSEL_WRITER FROM counsel_info WHERE COUNSEL_BNO = 1006)
		, '건성', '*****'
	)
FROM
	DUAL;

-- 제목 마스킹
UPDATE counsel_info SET
COUNSEL_TITLE =
	(SELECT
		REGEXP_REPLACE(
			(SELECT A.COUNSEL_TITLE FROM counsel_info)
			, '건성|찌질|말투|뻔뻔|싸가지', '*****'
		)
	FROM (
		SELECT * FROM counsel_info
		WHERE COUNSEL_TITLE REGEXP '건성|찌질|말투|뻔뻔|싸가지'
	) A
	WHERE COUNSEL_BNO = 1004)
WHERE COUNSEL_BNO = 1004;

UPDATE counsel_info SET
(COUNSEL_TITLE, COUNSEL_CONTENT, COUNSEL_WRITER) = (
	SELECT
		REGEXP_REPLACE(
			COUNSEL_TITLE, '건성|찌질|말투|뻔뻔|싸가지', '*****') COUNSEL_TITLE,
			
			REGEXP_REPLACE(
			COUNSEL_CONTENT, '건성|찌질|말투|뻔뻔|싸가지', '*****') COUNSEL_CONTENT,
			
			REGEXP_REPLACE(
			COUNSEL_WRITER, '건성|찌질|말투|뻔뻔|싸가지', '*****') COUNSEL_WRITER
	FROM
		(
		SELECT * FROM counsel_info
		WHERE CONCAT(COUNSEL_TITLE, COUNSEL_CONTENT, COUNSEL_WRITER) REGEXP '건성|찌질|말투|뻔뻔|싸가지'
	)

-- 특정문자 다중 컬럼 조회
SELECT * FROM counsel_info
WHERE 
	CONCAT(COUNSEL_TITLE, COUNSEL_CONTENT, COUNSEL_WRITER) REGEXP '건성|찌질|말투|뻔뻔|싸가지'
;

-- 특정 문자 조회
SELECT
	A.COUNSEL_BNO,
	REGEXP_REPLACE(A.COUNSEL_TITLE, (SELECT GROUP_CONCAT(COUNSEL_SLANG SEPARATOR "|") FROM COUNSEL_SLANG), '*****') COUNSEL_TITLE,
	REGEXP_REPLACE(A.COUNSEL_CONTENT, (SELECT GROUP_CONCAT(COUNSEL_SLANG SEPARATOR "|") FROM COUNSEL_SLANG), '*****') COUNSEL_CONTENT,
	REGEXP_REPLACE(A.COUNSEL_WRITER, (SELECT GROUP_CONCAT(COUNSEL_SLANG SEPARATOR "|") FROM COUNSEL_SLANG), '*****') COUNSEL_WRITER
FROM (
	SELECT * FROM COUNSEL_INFO
	WHERE CONCAT(COUNSEL_TITLE, COUNSEL_CONTENT, COUNSEL_WRITER) REGEXP (SELECT GROUP_CONCAT(COUNSEL_SLANG SEPARATOR "|") FROM COUNSEL_SLANG)
) A
;
	
SELECT GROUP_CONCAT(COUNSEL_SLANG SEPARATOR "|") FROM COUNSEL_slang;

INSERT INTO COUNSEL_SLANG VALUES ('바보');