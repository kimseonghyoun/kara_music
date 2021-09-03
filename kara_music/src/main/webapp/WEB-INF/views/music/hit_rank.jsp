<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/hit_rank.css">                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>        
    <script src="../resources/js/main.js"></script>                
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
	<link href="../resources/css/dataTables.bootstrap4.css" rel="stylesheet">
</head>
<body>
	<div id="wrap">
		<jsp:include page="./header.jsp"/>
		<div id="container">
			<table class="table">
				<tr>			
					<th>순위</th>		
					<th>앨범</th>
					<th>곡명</th>
					<th>아티스트</th>
					<th>앨범명</th>
				</tr>						
				<c:forEach items="${vo}" var="hit" varStatus="st">
					<tr>	
						<td valign="middle" class="hit_txt">${st.index+1}</td>					
						<td valign="middle" ><a href="info?record=${hit.record}"><img src="${hit.img}${hit.record}.jpg" id="hit_img"></a></td>
						<td valign="middle" class="hit_txt">${hit.track1}</td>
						<td valign="middle" class="hit_txt">${hit.singer}</td>
						<td valign="middle" class="hit_txt">${hit.rname}</td>
					</tr>
				</c:forEach>				
			</table>
		</div>
		<jsp:include page="./footer.jsp"/>
	</div>	
</body>
</html>