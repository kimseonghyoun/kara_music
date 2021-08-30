/**
 * 
 */
function checkMember(){
		
	var uid  = $("#user_id").val();	
	var pwd  = $("#user_pwd").val();
	var chk  = $("#pwd_chk").val();
	var uhp  = $("#phone").val();
	
	var idregex = /^[A-Za-z\d]{7,10}$/;    			
	var idres   = idregex.exec(uid);	
	var hpregex = /^(?:(010-\d{4})|(01[1|6|7|8|9]-\d{3,4}))-(\d{4})$/;
	var hpres   = hpregex.exec(uhp);
	
	var mail_01 = $("#mail_01").val();
	var mail_02 = $("#mail_02").val();
	var email   = mail_01+"@"+mail_02;
	
	$("#email").val(email);
		
	if(uid == null || uid == ""){
		alert("아이디를 입력하세요");
		return false;
	}
	
	if(idres == null || idres == ""){
		alert("아이디를 영어대소문자/숫자 7~10자리 입력하세요");
		return false;
	}
	
	if(pwd == null || pwd == ""){
		alert("비밀번호를 입력하세요");
		return false;
	}
         
	if(!(pwd.length >= 7 && pwd.length <= 10)){
		alert("비밀번호를 7~10자리 입력하세요");
		return false;
	}
	
	if(chk == null || chk == ""){
		alert("비밀번호를 입력하세요");
		return false;
	}
	
	if(!(pwd == chk)){
		alert("비밀번호가 일치하지 않습니다.");
		return false;
	}
	
	if(hpres == null || hpres == ""){
		alert("휴대전화를 양식에 맞게 입력하세요");
		return false;
	}	
	
}

