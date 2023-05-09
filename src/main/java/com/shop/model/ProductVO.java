package com.shop.model;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
public class ProductVO {
	
	// property
	private String upCg_code;
	
	private String upCg_name;
	
	private String downCg_code;
	private String downCg_name;
	
	private int pnum;
	private String pname;
	private String pimage1;
	private String pimage2;
	private String pimage3;
	
	private int price;
	private int saleprice;
	private int point;
	private int pqty;
	
	private String pspec;	// HIT, NEW, BEST
	private String pcontents;
	private String pcompany;
	private java.sql.Date pindate;
	
	private int totalPrice;		// 총 판매가 = 상품 판매가 * 수량
	private int totalPoint;		// 총 포인트 = 포인트 * 수량
	
	public void setPqty(int pqty) {		// 우선 적용
		this.pqty = pqty;
		
		this.totalPrice = this.saleprice*this.pqty;
		this.totalPoint = this.point*this.pqty;
	}
	
	// 할인율 반환하는 메소드
	public int getPercent() {
		// (정가 - 판매가)*100/정가
		int percent = (price-saleprice)*100/price;
		
		return percent;
	}

}
