<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.ipfinal.model.Board" %>
<%@ page import="com.ipfinal.dao.BoardDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객문의 FAQ</title>
	<script>
		alert("게시글을 등록했습니다!");
		location.href="FAQ.jsp";
	</script>
</head>
<body>
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="Board" class="com.ipfinal.model.Board"/>
	<jsp:setProperty property="*" name="Board"/>
	<%
		BoardDao boarddao = new BoardDao(); //userdao 객체 생성
		boarddao.insertBoard(Board); //회원 정보 DB로 보내기
	%>
</body>
</html>