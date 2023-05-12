DROP TABLE spring_board;

-- �亯�� �Խ���
CREATE TABLE spring_board (
    num NUMBER(8) PRIMARY KEY,
    userid VARCHAR2(30) NOT NULL,
    passwd VARCHAR2(100) NOT NULL,  -- �� ��й�ȣ
    subject VARCHAR2(300) NOT NULL, -- �� ����
    content VARCHAR2(4000),     -- �� ����
    wdate DATE DEFAULT sysdate,
    readnum NUMBER(8) DEFAULT 0,    -- ��ȸ��
    filename VARCHAR2(500),     -- ÷�����ϸ�(uuid_a.png) => ������ ���ϸ�
    originFilename VARCHAR2(500),  -- ���� ���ϸ� (a.png) => ���� ���ϸ�
    filesize NUMBER(8),     -- ÷������ ũ��
    
    refer NUMBER(8),    -- �� �׷��ȣ(�亯�� �Խ��ǿ��� �ʿ��� �÷�)
    lev NUMBER(8),      -- �亯 ����
    sunbun NUMBER(8)    -- ���� �� �׷� ���� ���� (���� �� �ʿ�)
);

DROP SEQUENCE spring_board_seq;

CREATE SEQUENCE spring_board_seq NOCACHE;

DESC spring_board;