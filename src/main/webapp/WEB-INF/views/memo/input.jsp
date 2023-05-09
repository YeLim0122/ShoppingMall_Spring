<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<title>input.jsp</title>
	<link rel="stylesheet" type="text/css" href="./css/memo.css">
	
</head>
<body>
	<div id="wrap">
		<!-- 
			/memo => get방식이면 메모 등록 폼을 보여주고
			/memo => post방식이면 메모글을 등록하는 로직을 수행
		-->
		<form name="mf" action="memo" method="post">
			<table border="1">
				<tr>
					<th colspan="2">::한줄 메모장::</th>
				</tr>
				<tr>
					<td>작성자</td>
					<td><input type="text" name="name" placeholder="Name"></td>
				</tr>
				<tr>
					<td>메모 내용</td>
					<td><input type="text" name="msg" placeholder="Message"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="button" onclick="check()">글 남기기</button>
						<button type="reset">다시 쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>