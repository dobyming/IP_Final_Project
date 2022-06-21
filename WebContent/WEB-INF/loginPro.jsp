<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.ipfinal.model.User" %>
<%@ page import="com.ipfinal.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인 처리 JSP</title>
</head>

<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String id= request.getParameter("id");
		String pw= request.getParameter("pwd");
		
		//DB에서 아이디,비번 확인
		UserDao userdao = new UserDao(); //userdao 객체 생성
		int check = userdao.loginCheck(id,pw);
		
		String msg="";
		
		if(check==1){
			session.setAttribute("sessionID", id); //세션에 현재 아이디 세팅
			response.sendRedirect("inital_page.html");
		}
		else if(check==0){
			msg="../view/login.jsp?msg=0";
		}
		else{
			msg="../view/login.jsp?msg-=-1";
		}
		
		response.sendRedirect(msg);
	%>
</body>
</html>