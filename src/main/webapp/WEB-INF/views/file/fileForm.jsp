<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h1>File Upload Test</h1>

<form name="frm" action="fileUp" method="post" enctype="multipart/form-data">
	올린이: <input type="text" name="name"><br><br>
	첨부파일: <input type="file" name="mfilename"><br><br>
	<button class="btn-default">업로드</button>
</form>
<hr>

<h1>File Upload Test2 - 여러 개의 파일 첨부</h1>
<form name="frm2" action="fileUp2" method="post" enctype="multipart/form-data">
	올린이: <input type="text" name="name"><br><br>
	첨부파일1 (이미지): <input type="file" name="mfilename" accept="image/*"><br><br>
											<!-- ㄴ> image 파일들만 첨부할 수 있음. -->
	첨부파일2: <input type="file" name="mfilename"><br><br>
	<button class="btn-default">업로드</button>
</form>