-- 장바구니 테이블 --------------------------
/*
회원번호(idx)    fk
상품번호         fk
수량
날짜
*/
DROP TABLE cart;

CREATE TABLE cart(
    cartNum NUMBER(8) PRIMARY KEY,
    idx_fk NUMBER(8) REFERENCES MEMBER(idx) ON DELETE CASCADE,
    pnum_fk NUMBER(8) REFERENCES PRODUCT(pnum) ON DELETE CASCADE,
    pqty NUMBER(8) NOT NULL,
    indate DATE DEFAULT sysdate, 
    constraint cart_pqty_ck CHECK (pqty>0 AND pqty<51)
);

DROP SEQUENCE cart_seq;

CREATE SEQUENCE cart_seq NOCACHE;
