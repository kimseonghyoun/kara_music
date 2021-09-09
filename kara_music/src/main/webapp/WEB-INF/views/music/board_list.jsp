<%@page import="org.zerock.domain.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/info.css">                
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
	   		   		
			<table class="table">		
	   			<tr>
	   				<td>번호</td>		
					<td>제목</td>		
					<td>작성자</td>		
					<td>작성일</td>		
	   			</tr>
	   			
	   			<c:forEach items="${list}" var="board" >	
					<tr>
						<td>
							${board.bno}
						</td>
						<td>
							${board.title}[${board.replycnt}]
						</td>
						<td>
							${board.writer}
						</td>
						<td>
							${board.regdate}
						</td>
					</tr>
				</c:forEach>		   			   				
	   				
	   		</table>	   			   		
	   		
	   		<div id="main_reg">
	   			<form id="frmWrite" action="../music/register" method="post" onsubmit="return checkReg();">
	   				<input type="submit" id="btn_reg" class="btn_reg" value="글쓰기">
	   				<input type="hidden" id="hid_reg" name="hid_reg" value="${member.user_id}">
	   			</form>	
	   		</div>
	   		
   		</div>
   		<jsp:include page="./footer.jsp"/>  
   	</div>
</body>
</html>