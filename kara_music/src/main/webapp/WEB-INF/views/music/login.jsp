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
	
</head>
<body>
	<div id="wrap">
		<jsp:include page="./header.jsp"/>
		<div id="container">			 
			<div class="main_info">				
				<form id="frmLogin" action="../music/loginPost" method="post" onsubmit="return searchLogin();">										
  					<div class="form-group">    				
    					<input type="text" id="log_id" class="form-control" name="user_id" placeholder="아이디입력(7~10자리)" required>	    		
  					</div>
  					<div class="form-group">    				
    					<input type="password" id="log_pwd" class="form-control"  name="user_pwd" placeholder="패스워드 입력(7~10자리)"  required>	
    					<small id="login_text" class="form-text text-muted" name="login_text" >아이디 또는 비밀번호가 일치하지 않습니다.</small>    					
  					</div>
  					<input type="submit" value="로그인" class="btn form-control btn-primary" name="btn">
  				</form>  		
  			</div>  			
  		</div>
		<jsp:include page="./footer.jsp"/>
	</div>
</body>
</html>