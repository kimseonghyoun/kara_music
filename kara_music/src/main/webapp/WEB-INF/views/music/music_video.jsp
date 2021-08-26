<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/main.css">                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>        
    <script src="../resources/js/main.js"></script>                
	<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="./header.jsp"/>
	
	<div id="container">       
        <div class="mv_main">                
            <h2 class="m_title">뮤직비디오</h3>                    
                <ul>                
                    <li>                                                  
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/NjNE6Mv8CEU?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>
                        <p class="m_info">KCM-흑백사진</p>
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/K8xpDBBuyJI?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                           
                        <p class="m_info">러블리즈-어제처럼 굿나잇</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/QIN5_tJRiyY?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">오마이걸-비밀정원</p> 
                    </li>                        
                    <li>                                                  
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/R3NaG5tbXWw?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">이수영-굿바이</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/6pA_Tou-DPI?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">소녀시대-더 보이스</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/n1TLaZp1i8E?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>  
                        <p class="m_info">송지은-미친거니</p> 
                    </li>                        
                    <li>                                                  
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/TKqrjLRvc8A?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">조성모-불멸의사랑</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/luwdlYsCQ6M?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">왁스-화장을 고치고</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/AEAdE9wSqwg?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">카라-맘마미아</p> 
                    </li>                        
                    <li>                                                  
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/QnAhnxmSNFw?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">레인보우-A</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/qwNz_anqd2U?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">보아-Valenti</p> 
                    </li>
                    <li>                            
                        <iframe width="330" height="200" src="https://www.youtube.com/embed/uR8Mrt1IpXg?rel=0" wmode="Opaque" frameborder="0" allowfullscreen></iframe>                            
                        <p class="m_info">레드벨벳-Psycho</p> 
                    </li>                        
                </ul>  
        	</h2>                    
    	</div> <!--.mv_main-->                                        
    </div> <!--#container-->   
    
    <jsp:include page="./footer.jsp"/>
</body>
</html>