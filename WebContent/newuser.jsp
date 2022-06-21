<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>회원가입 페이지</title>
        <link href="newuser_style.css" rel="stylesheet">
        <script type="text/javascript">
        	function checkValue(){
        		if(!document.userInfo.id.value){
        			alert("아이디를 입력하세요.");
        			return false;
        		}
        		if(!document.userInfo.pwd.value){
        			alert("비밀번호를 입력하세요.");
        			return false;
        		}
        		if(!document.userInfo.name.value){
        			alert("이름을 입력하세요.");
        			return false;
        		}
        		if(document.userInfo.pwd.value != document.userInfo.passwordcheck.value
        		{
        			alert("비밀번호를 동일하게 입력하세요.");
        			return false;
        		}        		
        	}
        </script>
    </head>
    <body>
        <div class="login_wrap">
            <div class="login_logo">
                <h1><a href="initial_page.html" >Cinephile</a></h1>
            </div>
            <form class="login_form" name="userInfo" action="newuserProc.jsp" method="post" onsubmit="checkValue()">
                이름 <input id="login_username" name="name" class="login_text" type="text" placeholder="이름을 입력하세요"><br>
                
                ID <input id="login_id" name="id" class="login_text" type="text" placeholder="ID를 입력하세요">
                PW <input id="login_pw" name="pwd" class="login_text" type="password" placeholder="PW를 입력해주세요(기본6자리)" maxlength="6"><br>
                PW 재입력 <input id="login_pw" name="passwordcheck" class="login_text" type="password" placeholder="PW를 확인해주세요" maxlength="6"><br>
                
                <input id="login_btn" class="login_btn" type="submit" value="가입"><br><br>
            </form>
        </div>
    </body>
</html>

