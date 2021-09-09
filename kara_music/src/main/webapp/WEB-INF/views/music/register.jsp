<%@page import="org.zerock.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/login.css">                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>      
    <script src="../resources/js/member.js"></script> 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
   	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
<%
	MemberVO member = (MemberVO)session.getAttribute("member");	
%>	
</head>
<body>
<div id="wrap">
	<jsp:include page="./header.jsp"/>
		<div id="container">			 
			<form id="frmRegist" action="../music/regist_send" method="post" onsubmit="return checkBoard();">
				<div id="regist">
					<div class="group">
						<ul>				
							<li>제목</li>
							<li><input type="text" id="title" name="title"></li>
						</ul>
					</div>
					<div  class="group">	
						<ul>
							<li>내용</li>
							<li>					
								<textarea rows="5" cols="30" id="content" name="content"></textarea>
							</li>				
						</ul>
					</div>
					<div  class="group">	
						<ul>
							<li>작성자</li>
							<li><input type="text"  name="writer" value="${member.user_nm}" readonly></li>							
						</ul>						
					</div>
					<div>	
						<ul>
							<li><input type="hidden" name="user_id" value="${member.user_id}"></li>
						</ul>					
					</div>
					<div>
						<ul>
							<li><input type="submit" class="btn form-control btn-primary" value="글쓰기"></li>
						</ul>			
					</div>	
				</div>
			</form>
		</div>	
	<jsp:include page="./footer.jsp"/>
</div>
</body>
</html>