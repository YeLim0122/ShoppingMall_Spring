<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
	<script type="text/javascript">
		function check(){
			// window.document.mf.submit();
			if(mf.name.value == ""){
				alert('작성자를 입력하세요.');
				mf.name.focus();
				return;
			}
			if(mf.msg.value == ""){
				alert('메모내용을 입력하세요.');
				mf.msg.focus();
				return;
			}
			let len = mf.msg.value.length;
			if(len > 100){
				alert('메모 내용은 100자 까지만 가능해요');
				mf.msg.select();
				return;
			}
			
			mf.submit();
		}
	</script>
	<meta charset="UTF-8">
	<title>메모 수정</title>
	<!-- memo.css 참조 -------------- -->
	<link rel="stylesheet" type="text/css" href="css/memo.css">
	
</head>
<body>
	<div id="wrap">
		<form name="mf" action="memoEdit" method="post">
			<table border="1">
				<tr>
					<th colspan="2">::한줄 메모장 글 수정::</th>
				</tr>
				<tr>
					<td>글 번호</td>
					<td><input type="text" name="no" value="${memo.no}" 
						placeholder="No" readonly style="width:40%"></td>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="name" value="${memo.name}"
						placeholder="Name"></td>
				</tr>
				
				<tr>
					<td>메모 내용</td>
					<td><input type="text" name="msg" value="${memo.msg}"
						placeholder="Message"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="check()">글 수정하기</button>
						<button type="reset">다시 쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>