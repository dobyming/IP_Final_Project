<%@ page language="java" contentType="text/html; charset=euc-kr"
    pageEncoding="euc-kr"%>
<%@ page import="com.ipfinal.model.Board" %>
<%@ page import="com.ipfinal.dao.BoardDao" %>
<%@page import="java.util.Vector"%>
<!DOCTYPE html>
<html>
    <head>
        <title>for Cinephile</title>
        <meta charset="euc-kr">
        <link href="initial_style.css" rel="stylesheet">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <style>
        table{
        border-spacing: 40px;
        }
        </style>
        <script>
        function logoutPro(){
        	location.href="logoutPro.jsp";
        }
        function BoardWrite(){
        	location.href="BoardWriteForm.jsp";
        }
        </script>
    </head>
    <body>    
        <h2><a id="main_title" href="MainPage.jsp" >Oscar Cinephile</a></h2>
        <div class="icons">
            <ul class="iconbar">
                <li>
                    <img src="share.png" width="25px" title="URL복사" onclick="copyToClipboard()" id="shareimg">
                </li>
                <li>
                    <img src="mycart.png" width="25px">
                </li>
                <li>
                    <a href="login.jsp"><img src="user.png" title="로그인" width="25px"></a>
                </li>    
            </ul>
        </div>
        <script>
            function copyToClipboard(val){
                var t = document.createElement("textarea");
                document.body.appendChild(t);
                t.value = val;
                t.select();
                document.execCommand('copy');
                document.body.removeChild(t);
            }
            $('#shareimg').click(function(){
                copyToClipboard("MainPage.jsp");
                alert('주소를 복사했습니다.');
            });
        </script>

        <hr>
        <div class="Bigmenu">
            <ul class="menubar">
                <li>
                    <a href="movie.html">영화</a>
                </li>
                <li>
                    <a href="category.html">카테고리</a>
                </li>
                <li>
                    <a href="movie.html">MY</a>
                </li>
                <li>
                    <a href="movie.html">고객문의</a>
                </li>

                <div class="search" style="display:inline">
                    <input type="text" id="gam_search" 
                    placeholder="작품,감독명을 입력하세요">
                    <input type="button" value="검색" onclick="">
                </div>

            </ul>
        </div>
        <hr>
        <br>
        
        <div>
        <h3>고객문의(FAQ)</h3>
        <hr>
        <input type="button" value="글쓰기" name="FAQbtn" style="float:right;" onclick="BoardWrite()">
        <jsp:useBean id="Board" class="com.ipfinal.model.Board"/>
		<jsp:setProperty property="*" name="Board"/>
        <%         
	        BoardDao boarddao = new BoardDao();
	        Vector<Board> Bvec = boarddao.getBoardList(Board); 
	     %>

        <table bgcolor="lightgreen">
	        <tr>
	        <td align="center">번호</td>
	        <td align="center">제목</td>
	        <td align="center">작성자</td>
	        </tr>
        	
        	<%
        		for(int i=0; i<Bvec.size(); i++){
        			Board bd = Bvec.get(i);
                	%>
   
        	<tr>
		        <td align="center"><%=i+1 %></td>
		        <td align="center"><%=bd.getTitle() %></td>
		        <td align="center"><%=bd.getWriter() %></td>
	        </tr>
        	<% 
        		} 
        	%>	

        </table>
        
        </div>

    </body>
</html>

