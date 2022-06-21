<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <% request.setCharacterEncoding("euc-kr"); %>
        <title>로그인 페이지</title>
        <meta charset="UTF-8">
        <link href="login_style.css" rel="stylesheet">
        <script>
        	function checkValue(){
        		inputForm = eval=("document.userinfo");
        		if(!inputForm.userid.value){
        			alert("아이디를 입력하세요");
        			inputForm.id.focus();
        			return false;
        		}
        		if(!inputForm.password.value){
        			alert("비밀번호를 입력하세요");
        			inputForm.password.focus();
        			return false;
        		}
        	}
        </script>
    </head>
    
    <body>
        <div class="login_wrap">
            <div class="login_logo">
                <h1><a href="MainPage.jsp" >Oscar Cinephile</a></h1>
            </div>
            <form class="login_form" action="loginPro.jsp" method="post" onsubmit="return checkValue()">
                <input id="login_id" name="id" class="login_text" type="text" placeholder="UserName"><br>
                <input id="login_pw" name="pwd" class="login_text" type="password" placeholder="Password"><br>
                <input id="login_btn" class="login_btn" type="submit" value="로그인"><br><br>
            </form>
            <%
            	//아이디-비번이 틀릴 경우 화면에 메시지 표시
            	String msg = request.getParameter("msg");
            	
            	if(msg!=null && msg.equals("0")){
            		out.println("<br>");
            		out.println("비밀번호를 확인해 주세요.");
            	}
            	else if(msg!=null && msg.equals("-1")){
            		out.println("<br>");
            		out.println("아이디를 확인해 주세요.");
            	}
            %>
            <a class="new_login" href="newuser.jsp">회원가입</a>
        </div>
    </body>
</html>

