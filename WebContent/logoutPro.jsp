<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그아웃 처리</title>
</head>
<body>
	<%
		session.invalidate(); //모든 세션 정보 삭제 
		response.sendRedirect("MainPage.jsp"); //로그인 화면으로 이동 
	%>
</body>
</html>