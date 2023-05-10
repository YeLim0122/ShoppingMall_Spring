<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<div class="row my-4">
	<div class="col-12">
		<h2 class="text-center">${loginUser.name}[${loginUser.userid}]님의 장바구니</h2>
	</div>
</div>

<div class="row my-2">
	<div class="col-12">
		<form name="orderF" id="orderF" action="order">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>상품 번호</th>
						<th>상품명</th>
						<th>수량</th>
						<th>단가</th>
						<th>금액</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					
					<!-- ----------------- -->
					<c:choose>
						<c:when test="${cartArr eq null or empty cartArr}">
							<tr>
								<td colspan="6">
									<b>장바구니에 담긴 상품이 없습니다.</b>
								</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach var="item" items="${cartArr}" varStatus="state">
								<!-- varStatus에 변수명을 지정하면
									해당 변수로 반복문의 상태정보를 알아낼 수 있다.
									state.index: 인덱스값 (0~ )
									state.count: 반복문 횟수 (1~ )
								-->
								<tr>
									<td>
										<label>
											<input type="checkbox" name="pnum" id="pnum${state.index}" 
											value="${item.pnum_fk}">
											${item.pnum_fk}
										</label>
										
									</td>
									<td>
										<h4>${item.pname}</h4>
										<a href="../prodDetail?pnum=${item.pnum_fk}">
											<img src="../resources/product_images/${item.pimage1}"
												class="img-fluid" style="width: 140px">
										</a>
									</td>
									<td>
										<input type="number" name="pqty" id="pqty${state.index}"
										value="${item.pqty}" min="1" max="50">
										<button class="btn btn-success" onclick="">수정</button>
									</td>
									<td>
										<fmt:formatNumber value="${item.saleprice}" 
										pattern="###,###" /> 원<br>
										<span class="badge badge-danger">${item.point}</span> POINT
									</td>
									<td>
										<fmt:formatNumber value="${item.totalPrice}" 
										pattern="###,###" /> 원<br>
										<span class="badge badge-danger">${item.totalPoint}</span> POINT
									</td>
									<td>
										<a href="#" onclick="cartDel('${item.cartNum}')">삭제</a>
									</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
					<!-- ----------------- -->
					
					
					<tr>
						<td colspan="3">
							<h5>장바구니 총액: <span class="text-danger">
								<fmt:formatNumber value="${cartTotal.cartTotalPrice}"
								pattern="###,###" /> 원</span>
							</h5>
							<h5>장바구니 총 포인트: <span class="text-success">
								<fmt:formatNumber value="${cartTotal.cartTotalPoint}"
								pattern="###,###" /> Point</span>
							</h5>
						</td>
						<td colspan="3">
							<button type="button" class="btn btn-outline-info" onclick="goOrder()">주문하기</button>
							<button type="button" class="btn btn-outline-danger" onclick="location.href='../index'">
								계속 쇼핑하기
							</button>							
						</td>
					</tr>
				</tbody>
			</table>
		</form>
		<!-- 주문 form -------------------- -->
		
		<!-- 삭제 form -------------------- -->
		<form name="df" action="cartDel">
			<input type="hidden" name="cartNum">
		</form>
		<!-- 삭제 form end----------------- -->
		
		
	</div>
</div>

<script>
	function cartDel(cnum){
		// alert(cnum)
		df.cartNum.value = cnum;
		df.method = 'post';
		df.submit();
	}
</script>
