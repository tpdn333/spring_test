CREATE TABLE tbl_sample1(
	col1 VARCHAR(500)
);

CREATE TABLE tbl_sample2(
	col2 VARCHAR(50)
);

SELECT * FROM tbl_sample1;
SELECT * FROM tbl_sample2;
SELECT * FROM tbl_board;
SELECT * FROM tbl_reply;

DESC tbl_board;

DELETE FROM tbl_sample1;

ALTER TABLE tbl_board add (replyCnt INT DEFAULT 0);

UPDATE tbl_board SET replyCnt = (SELECT count(rno) FROM tbl_reply WHERE tbl_reply.bno = tbl_board.bno);

UPDATE tbl_board SER replyCnt = replyCnt + 1
		WHERE bno = 119;