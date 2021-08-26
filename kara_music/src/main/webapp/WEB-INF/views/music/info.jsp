<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/info.css">                
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
			<div class="main_info">
				<div class="info_img">
					<ul>	        		
	            		<li>
	            			<img src="${info.img}${info.record}.jpg" id="info_img">	                        
	            		</li>
	      			</ul>
				</div>
	    		<div class="info_text">
	    			<ul>
	    				<li>	    					
	    					아티스트 : ${info.singer} 
	    				</li>	    				
	    			</ul>
	    			<ul>
	    				<li>
	    					앨범명  : ${info.rname} 
	    				</li>	    				
	    			</ul>	    			
	    			<ul>
	    				<li>
	    					기획사  : ${info.company} 
	    				</li>	    				
	    			</ul>	    			
	    		</div> 
	   		</div>
	   		   		
			<table class="table">		
	   			<tr>
	   				<td>곡명</td>
	   				<td>아티스트</td>
	   				<td>앨범명</td>
	   			</tr>
	   			<tr>   			   				
	   				<td>
	   					${info.track1}
	   				</td>
	   				<td>
	   					${info.singer}
	   				</td>
	   				<td>
	   					${info.rname}
	   				</td>
	   			</tr>	
	   			
	   			<tr>   			   				
	   				<td>
	   					${info.track2}
	   				</td>	   			
	   				<td>
	   					${info.singer}
	   				</td>
	   				<td>
	   					${info.rname}
	   				</td>
	   			</tr>
	   			 
	   			<tr>   			   				
	   				<td>
	   					${info.track3}
	   				</td>
	   				<td>
	   					${info.singer}
	   				</td>
	   				<td>
	   					${info.rname}
	   				</td>
	   			</tr>   	
	   			
	   			<tr>   			   				
	   				<td>
	   					${info.track4}
	   				</td>
	   				<td>
	   					${info.singer}
	   				</td>
	   				<td>
	   					${info.rname}
	   				</td>
	   			</tr>
	   			
	   			<tr>   			   				
	   				<td>
	   					${info.track5}
	   				</td>
	   				<td>
	   					${info.singer}
	   				</td>
	   				<td>
	   					${info.rname}
	   				</td>
	   			</tr>	   			
	   		</table>
	   			   		
	   		<div id="main_note">
	   			<p>${info.note}</p>
	   		</div>
   		</div>
   		<jsp:include page="./footer.jsp"/>  
   	</div>
</body>
</html>