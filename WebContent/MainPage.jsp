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
                    <img src="share.png" width="25px" title="URL����" onclick="copyToClipboard()" id="shareimg">
                </li>
                <li>
                    <img src="mycart.png" width="25px">
                </li>
                <li>
                    <a href="login.jsp"><img src="user.png" title="�α���" width="25px"></a>
                </li>    
            </ul>
			 <%
				if(session.getAttribute("sessionID")==null) {
					response.sendRedirect("login.jsp"); //�α����� �ȵ��� ��� �α��� ȭ������ �̵� 
				}
				else {
					 %>
					<font color="green" size="5px"><%=session.getAttribute("sessionID") %></font>�� ȯ���մϴ�.
					<input type="button" value="�α׾ƿ�" onclick="logoutPro()">
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
                alert('�ּҸ� �����߽��ϴ�.');
            });
        </script>

        <hr>
        <div class="Bigmenu">
            <ul class="menubar">
                <li>
                    <a href="movie.html">��ȭ</a>
                </li>
                <li>
                    <a href="category.html">ī�װ�</a>
                </li>
                <li>
                    <a href="MY.html">MY</a>
                </li>
                <li>
                    <a href="FAQ.jsp">������</a>
                </li>

                <div class="search" style="display:inline">
                    <input type="text" id="gam_search" 
                    placeholder="��ǰ,�������� �Է��ϼ���">
                    <input type="button" value="�˻�" onclick="">
                </div>

            </ul>
        </div>
        <hr>
        
        <div class="imageslide">
            <h2>2022 OSCAR ������</h2>
            <table>
	            <tr>
	            <td><a href="coda.html"><img src="Coda.jpg" width=200 height=300></a></td>
	            <td><a href="KingRichard.html"><img src="King Richard.jpg" width=200 height=300></a></td>
	            <td><a href="Tami.html"><img src="Ÿ�������� ��.jpg" width=200 height=300></a></td>
	            <td><a href="POD.html"><img src="Power of Dog.jpg" width=200 height=300></a></td>
	            <td><a href="Belphast.html"><img src="Belphast.jpg" width=200 height=300></a></td>
	            </tr>
	            
	            <tr align=center>
	            <td>�ڴ�</td>
	            <td>ŷ ������</td>
	            <td>Ÿ�������� ��</td>
	            <td>�Ŀ� ���� ����</td>
	            <td>���Ľ�Ʈ</td>
	            </tr>
	            
	            <tr>
	            <td><a href="DMC.html"><img src="Drive My Car.jpg" width=200 height=300></a></td>
	            <td><a href="Dune.html"><img src="Dune.jpg" width=200 height=300></a></td>
	            <td><a href="WSS.html"><img src="WestSide Story.jpg" width=200 height=300></a></td>
	            <td><a href="007.html"><img src="007.jpg" width=200 height=300></a></td>
	            <td><a href="Cruella.html"><img src="Cruella.jpg" width=200 height=300></a></td>
	            </tr>	            
	            
	            <tr align=center>
	            <td>����̺� ���� ī </td>
	            <td>��</td>
	            <td>����Ʈ ���̵� ���丮</td>
	            <td>007 ��Ÿ�� �� ����</td>
	            <td>ũ�翤��</td>
	            </tr>
	            
	            <tr>
	            <td><a href="Encanto.html"><img src="Encanto.jpg" width=200 height=300></a></td>
	            <td><a href="JL.html"><img src="Justice League.jpg" width=200 height=300></a></td>
	            <td><a href="AOR.html"><img src="�ƹ� ���� �� ����.jpg" width=200 height=300></a></td>	            
	            </tr>
	            
	           <tr align=center>
	            <td>��ĭ��</td>
	            <td>�� �����̴��� ����Ƽ�� ����</td>
	            <td>�ƹ� ���� �� ���� </td>
	            </tr>
            </table>
        </div>
    </body>
</html>

