<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ipfinal.model.User" %>
<%@ page import="com.ipfinal.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입 처리</title>
	<script>
		alert("회원가입을 축하드립니다!");
		location.href="login.jsp";
	</script>
</head>
	<body>
	<% request.setCharacterEncoding("euc-kr"); %>
	<jsp:useBean id="User" class="com.ipfinal.model.User"/>
	<jsp:setProperty property="*" name="User"/>
	<%
		UserDao userdao = new UserDao(); //userdao 객체 생성
		userdao.addUser(User); //회원 정보 DB로 보내기
	%>
	</body>
</html>