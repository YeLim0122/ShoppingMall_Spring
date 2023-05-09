<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>

<!-- js 파일 참조 -------------------------------------- -->
<script type="text/javascript" src="./js/userCheck.js">
</script>

<div class="container">
	<h1 class="text-center mb-3">회원가입</h1>
	<form name="form" action="join" method="post">
		<!-- 활동회원: 0, 관리자: 9----------------------------- -->
		<input type="hidden" name="mode" value="0">
		<!-- ------------------------------------ -->
		<table class="table" >
			<tr>
				<td width="20%" class="m1"><b>이름</b></td>
				<td width="80%" class="m2">
					<input type="text" name="name" id="name" class="form-control" 
					placeholder="Name">
					<br><span class="ck">*이름은 한글만 가능해요.</span>
				</td>
			</tr>
			<tr>
				<td class="m1"><b>아이디</b></td>
				<td width="80%" class="m2">
					<div class="row">
						<div class="col-6">
							<input type="text" name="userid" id="userid" readonly 
							class="form-control" placeholder="User ID">
						</div>
						<div class="col-3">
							<button type="button" onclick="open_idcheck()" 
							class="btn btn-success">
								아이디 중복 체크
							</button>
						</div>
					</div>
					<br><span class="ck">*아이디는 영문자, 숫자, _, !만 사용 가능해요.</span>
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>비밀번호</b></td>
				<td width="80%" class="m2">
					<input type="password" name="pwd" id="pwd" class="form-control" 
					placeholder="Password">
					<br><span class="ck">*비밀번호는 문자, 숫자, !, . 포함해서 4~8자리 이내</span>
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>비밀번호 확인</b></td>
				<td width="80%" class="m2">
					<input type="password" name="pwd2" id="pwd2" class="form-control" 
					placeholder="Re Password">
				</td>
			</tr>
			<tr>
				<td width="20%" class="m1"><b>연락처</b></td>
				<td width="80%" class="m2">
					<div class="row">
						<div class="col-3">
							<input type="text" name="hp1" id="hp1" class="form-control" 
							placeholder="HP1" maxlength="3"> 
						</div>
						<div class="col-3">
							<input type="text" name="hp2" id="hp2" class="form-control" 
							placeholder="HP2" maxlength="4"> 
						</div>
						<div class="col-3">
							<input type="text" name="hp3" id="hp3" class="form-control" 
							placeholder="HP3" maxlength="4">
						</div>
					</div>
					<br>
					<span class="ck">*앞자리(010|011) 중에 하나 - (숫자3~4자리) - (숫자4자리)만 가능해요.</span>
				</td>
			</tr>
			<tr>
				<td class="m1"><b>우편번호</b></td>
				<td width="80%" class="m2">
					<div class="row">
						<div class="col-6">
							<input type="text" name="post" id="post" placeholder="Post"
							maxlength="5" class="form-control">
						</div>
						<div class="col-3">
							<button type="button" class="btn btn-success">우편번호 찾기</button>
						</div>
					</div>
				</td>
			</tr>
			<tr>
				<td class="m1"><b>주소</b></td>
				<td width="80%" class="m2">
					<input type="text" name="addr1" id="addr1" placeholder="Address1"
					class="form-control" style="margin-bottom: 5px;">
					<br>
					<input type="text" name="addr2" id="addr2" class="form-control"
					placeholder="Address2">
				</td>
			</tr>
			<tr>
				<td colspan="2" class="m3 text-center">
					<button type="button" class="btn btn-primary" onclick="member_check()">
						회원가입
					</button>
					<button type="reset" class="btn btn-warning">다시쓰기</button>
				</td>
			</tr>
			
		</table>
	</form>
</div>
