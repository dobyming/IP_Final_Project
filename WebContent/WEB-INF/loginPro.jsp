<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="com.ipfinal.model.User" %>
<%@ page import="com.ipfinal.dao.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α��� ó�� JSP</title>
</head>

<body>
	<%
		request.setCharacterEncoding("euc-kr");
		String id= request.getParameter("id");
		String pw= request.getParameter("pwd");
		
		//DB���� ���̵�,��� Ȯ��
		UserDao userdao = new UserDao(); //userdao ��ü ����
		int check = userdao.loginCheck(id,pw);
		
		String msg="";
		
		if(check==1){
			session.setAttribute("sessionID", id); //���ǿ� ���� ���̵� ����
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