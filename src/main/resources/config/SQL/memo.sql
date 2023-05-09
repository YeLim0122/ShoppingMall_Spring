DROP TABLE MEMO;
CREATE TABLE memo (
    no NUMBER(4) PRIMARY KEY,
    name VARCHAR2(30) NOT NULL,
    msg VARCHAR2(100),
    wdate DATE DEFAULT sysdate
);
DESC memo;

DROP SEQUENCE memo_seq;

CREATE SEQUENCE memo_seq
START WITH 1 INCREMENT BY 1 NOCACHE;