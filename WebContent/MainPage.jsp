<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <title>for Cinephile</title>
        <meta charset="UTF-8">
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
			 <%
				if(session.getAttribute("sessionID")==null) {
					response.sendRedirect("login.jsp"); //로그인이 안됐을 경우 로그인 화면으로 이동 
				}
				else {
					 %>
					<font color="green" size="5px"><%=session.getAttribute("sessionID") %></font>님 환영합니다.
					<input type="button" value="로그아웃" onclick="logoutPro()">
				<% } %>
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
                    <a href="MY.html">MY</a>
                </li>
                <li>
                    <a href="FAQ.jsp">고객문의</a>
                </li>

                <div class="search" style="display:inline">
                    <input type="text" id="gam_search" 
                    placeholder="작품,감독명을 입력하세요">
                    <input type="button" value="검색" onclick="">
                </div>

            </ul>
        </div>
        <hr>
        
        <div class="imageslide">
            <h2>2022 OSCAR 수상작</h2>
            <table>
	            <tr>
	            <td><a href="coda.html"><img src="Coda.jpg" width=200 height=300></a></td>
	            <td><a href="KingRichard.html"><img src="King Richard.jpg" width=200 height=300></a></td>
	            <td><a href="Tami.html"><img src="타미페이의 눈.jpg" width=200 height=300></a></td>
	            <td><a href="POD.html"><img src="Power of Dog.jpg" width=200 height=300></a></td>
	            <td><a href="Belphast.html"><img src="Belphast.jpg" width=200 height=300></a></td>
	            </tr>
	            
	            <tr align=center>
	            <td>코다</td>
	            <td>킹 리차드</td>
	            <td>타미페이의 눈</td>
	            <td>파워 오브 도그</td>
	            <td>벨파스트</td>
	            </tr>
	            
	            <tr>
	            <td><a href="DMC.html"><img src="Drive My Car.jpg" width=200 height=300></a></td>
	            <td><a href="Dune.html"><img src="Dune.jpg" width=200 height=300></a></td>
	            <td><a href="WSS.html"><img src="WestSide Story.jpg" width=200 height=300></a></td>
	            <td><a href="007.html"><img src="007.jpg" width=200 height=300></a></td>
	            <td><a href="Cruella.html"><img src="Cruella.jpg" width=200 height=300></a></td>
	            </tr>	            
	            
	            <tr align=center>
	            <td>드라이브 마이 카 </td>
	            <td>듄</td>
	            <td>웨스트 사이드 스토리</td>
	            <td>007 노타임 투 다이</td>
	            <td>크루엘라</td>
	            </tr>
	            
	            <tr>
	            <td><a href="Encanto.html"><img src="Encanto.jpg" width=200 height=300></a></td>
	            <td><a href="JL.html"><img src="Justice League.jpg" width=200 height=300></a></td>
	            <td><a href="AOR.html"><img src="아미 오브 더 데드.jpg" width=200 height=300></a></td>	            
	            </tr>
	            
	           <tr align=center>
	            <td>엔칸토</td>
	            <td>잭 스나이더의 저스티스 리그</td>
	            <td>아미 오브 더 데드 </td>
	            </tr>
            </table>
        </div>
    </body>
</html>

