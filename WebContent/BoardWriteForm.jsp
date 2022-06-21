<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
<style>
.tbstyle{
	background-color:lightgreen;
	width:150px;
	text-align:center;
}
</style>
</head>
<body>
	<form method="post" action="BoardWrite.jsp">
	<table>
		<thead>
		<h2>고객문의 작성 게시판</h2>
		<hr>
		</thead>
		<tr>
		<td class="tbstyle"><b>작성자</b></td>
		<td><input type="text" name="writer"></td>
	</tr>
		<tr>
		<td class="tbstyle"><b>제목</b></td>
		<td><input type="text" name="title" style="width: 500px;"></td>
	</tr>
		<tr>
		<td class="tbstyle"><b>내용</b></td>
		<td><textarea rows="10" cols="80" name="content"></textarea></td>
	</tr>
	<tr>
		<td colspan="2">
		<input type="submit" value="등록">
		</td>
	</tr>
	</table>
	</form>
</body>
</html>