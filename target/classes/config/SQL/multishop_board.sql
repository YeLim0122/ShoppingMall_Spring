DROP TABLE spring_board;

-- 답변형 게시판
CREATE TABLE spring_board (
    num NUMBER(8) PRIMARY KEY,
    userid VARCHAR2(30) NOT NULL,
    passwd VARCHAR2(100) NOT NULL,  -- 글 비밀번호
    subject VARCHAR2(300) NOT NULL, -- 글 제목
    content VARCHAR2(4000),     -- 글 내용
    wdate DATE DEFAULT sysdate,
    readnum NUMBER(8) DEFAULT 0,    -- 조회수
    filename VARCHAR2(500),     -- 첨부파일명(uuid_a.png) => 물리적 파일명
    originFilename VARCHAR2(500),  -- 원본 파일명 (a.png) => 논리적 파일명
    filesize NUMBER(8),     -- 첨부파일 크기
    
    refer NUMBER(8),    -- 글 그룹번호(답변형 게시판에서 필요한 컬럼)
    lev NUMBER(8),      -- 답변 레벨
    sunbun NUMBER(8)    -- 같은 글 그룹 내의 순서 (정렬 시 필요)
);

DROP SEQUENCE spring_board_seq;

CREATE SEQUENCE spring_board_seq NOCACHE;

DESC spring_board;