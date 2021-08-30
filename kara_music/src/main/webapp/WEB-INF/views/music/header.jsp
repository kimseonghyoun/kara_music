<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="../resources/css/header.css">                
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>  
    <script src="../resources/js/header.js"></script>  
    <script src="../resources/js/member.js"></script> 
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap" rel="stylesheet">
   	<!-- 부트스트랩 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>	
</head>
<body>
	<header id="header">
        <div class="header_in">
            <h1 class="h_logo">로고</h1>
            <nav class="h_gnb">
                <ul>
                    <li><a href="../music/new_album">최신앨범</a></li>
                    <li><a href="">음반순위</a></li>
                    <li><a href="../music/hit_album">인기앨범</a></li>
                    <li><a href="../music/music_video">뮤직비디오</a></li>
                </ul>
            </nav> <!--.h_gnb-->
            
            <div class="h_util">                    
                <ul>
                    <li class="f_search">
                        <a href="#">검색하기</a>
                    </li>
                    <li class="f_cart">
                        <a href="#">장바구니</a>
                        <span class="count">0</span>
                    </li>    
                </ul>
            </div> <!--.h_util-->

            <div class="h_member">
                <ul>
                    <li><a href="#" class="p_login">로그인</a></li>
                    <li><a href="#" class="p_join">회원가입</a></li>                        
                </ul>
            </div> <!--.h_member-->
        </div> <!--.header_in-->
				
		<form action="">			
			<div id="pop_login" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">  
			
				<div class="modal-dialog modal-dialog-centered modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="m_title p_title">로그인</h2>
						</div>	
						<div class="modal-body">
							<div>						
								<div> 							                    	                        
                        			<input type="text" id="login_id" name="login_id" placeholder="아이디입력(7~10자리)"><br>                        
                        			<input type="password" id="login_pwd" name="login_pwd" placeholder="패스워드 입력(7~10자리)"><br>
                    			</div>    
                    			<div class="m_search">
                        			<ul>
                            			<li><a href="#" class="p_work">아이디찾기</a></li>
                            			<li><a href="#" class="p_work">비밀번호찾기</a></li>                                                                                    
                        			</ul>
                    			</div> 
							</div>						
						</div>
						<div class="modal-footer">
							<input type="button" value="로그인" class="btn btn-primary" name="btn">                          
                        	<input type="button" value="닫기" class="btn btn-primary exit_1" name="btn">						
						</div>
					</div>
				</div>
			</div>            
        </form>
        
        <form id="frmMember" action="../music/mainPost" method="post" onsubmit="return checkMember();">
			<!-- 모달 영역 -->
			<div id="pop_join" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
				<div class="modal-dialog modal-dialog-centered" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h2 class="m_title p_title">회원가입</h2>       
						</div>
						<div class="modal-body">
							<div>		                                          
		                     	<ul>
		                         	<li>
		                             	<label for="user_id">아이디<span>＊</span></label>        
		                             	<input type="text" id="user_id" class="user_id" name="user_id" placeholder="아이디입력(7~10자리)" required>                                
		                         	</li>
		                         	<li>
		                             	<button type="button" id="id_chk" class="btns id_chk" value="아이디중복체크">중복체크</button>
		                         	</li>
		                         	<li>
		                             	<label for="user_pwd">비밀번호<span>＊</span></label>        
		                             	<input type="password" id="user_pwd" class="user_pwd" name="user_pwd" placeholder="비밀번호입력(7~10자리)" required>
		                         	</li>
		                         	<li>
		                             	<label for="pwd_chk">비밀번호 확인<span>＊</span></label>        
		                             	<input type="password" id="pwd_chk" class="pwd_chk" name="pwd_chk" required>
		                         	</li>                        
		                         	<li>
		                             	<label for="user_nm" >이름<span>＊</span></label>        
		                             	<input type="text" id="user_nm" class="user_nm" name="user_nm"  required>
		                         	</li>                        
		                         	<li>		                         		  
		                             	<label for="mail_01">이메일<span>＊</span></label>		                             	        
		                             	<input type="text" id="mail_01" class="mail_01" name="mail_01" required>
		                             	<span>@</span>
		                            	<input type="text" id="mail_02" class="mail_02" name="mail_02" required>
		                            	<select id="mail_03" class="mail_03" name="mail_03">
		                                	<option value="-1">자동입력</option>
		                                	<option value="naver.com">naver.com</option>
		                                	<option value="hanmail.net">hanmail.net</option>
		                                	<option value="gmail.com">gmail.com</option>
		                                	<option value="nate.com">nate.com</option>
		                                	<option value="yahoo.com">yahoo.com</option>
		                            	</select>
		                            	<input type="hidden" id="email" name="email">		                            	
		                        	</li>                         
		                        	<li>
		                            	<label for="phone">연락처<span>＊</span></label>        
		                            	<input type="text" id="phone" class="phone" name="phone" placeholder="000-0000-0000" required>
		                        	</li>                      
		                    	</ul>		                       
		                	</div>         			
						</div>
						<div class="modal-footer">						
							<input type="submit" value="가입" class="btn btn-primary btn_01" name="btn_01">                          
                        	<input type="reset" value="취소" class="btn btn-primary btn_02" name="btn_02">                          
                        	<input type="button" value="닫기" class="btn btn-primary btn_03 exit_2" name="btn_03">      
						</div>
					</div>
				</div>
			</div>	
		</form>
   		
   		<div id="pop_chkon" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  			<div class="modal-dialog modal-dialog-centered" role="document">
    			<div class="modal-content">
      				<div class="modal-header">
        				<h5 class="modal-title">팝업</h5>        					
      				</div>
      				<div class="modal-body">
        					<p class="p_text">준비중입니다.</p>
      				</div>
      				<div class="modal-footer">
        				<button type="button" class="btn btn-primary exit_3" data-bs-dismiss="modal">닫기</button>        					
      				</div>
    			</div>
  			</div>
		</div>  
	 </header> <!--#header-->              
</body>
</html>