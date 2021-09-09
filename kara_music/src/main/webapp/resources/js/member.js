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
	
	var idChk = $("#hid_text").val();
		
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
	
	if(idChk != '1'){
		alert("아이디 중복체크를 해주세요");
		return false;
	}	
}


function checkLogin(){
		
	var uid  = $("#login_id").val();	
	var pwd  = $("#login_pwd").val();	
	
	var idregex = /^[A-Za-z\d]{7,10}$/;    			
	var idres   = idregex.exec(uid);	
		
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
	
}


function searchLogin(){
	
	var uid  = $("#log_id").val();	
	var pwd  = $("#log_pwd").val();	
	
	var idregex = /^[A-Za-z\d]{7,10}$/;    			
	var idres   = idregex.exec(uid);	
		
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

}

function checkRegist(){	
	
	var regstId = $("#hid_regist").val();
	
	if(regstId == null || regstId == ""){
		alert("로그인을 하세요");
		return false;
	}
}

function checkReg(){	
	
	var regstId = $("#hid_reg").val();
	
	if(regstId == null || regstId == ""){
		alert("로그인을 하세요");
		return false;
	}
}

function checkBoard(){
	
	var tit = $("#title").val(); 
	var con = $("#content").val();
	
	if(tit == null || tit == ""){
		alert("제목을 입력 하세요");
		return false;
	}
	
	if(con == null || con == ""){
		alert("내용을 입력 하세요");
		return false;
	}	
}


$(function(){	
	
	$("#id_chk").on("click",function(){ 	
		
		var user_id = $("#user_id").val();
		
		if(user_id == null || user_id == ""){
			alert("아이디를 입력하세요");
			return;
		}					
		
		var idregex = /^[A-Za-z\d]{7,10}$/;    			
		var idres   = idregex.exec(user_id);	
				
		if(idres == null || idres == ""){
			alert("아이디를 영어대소문자/숫자 7~10자리 입력하세요");
			return;
		}		
		
		var idChk = {user_id : user_id}
		
		$.ajax({
			url : "/music/idCheck",
			type : "post",
			data : idChk,
			dataType:"json",
			success : function(res){				
				if(res == 1){				
					$("#hid_text").val("0");
					$("#id_text").text("이미 사용중인 아이디입니다.");					
					$("#id_text").attr("style","color:#f00");
					
				}else{					
					$("#hid_text").val("1");
					$("#id_text").text("아이디 사용가능");					
					$("#id_text").attr("style","color:#f00");
				}
			}
		
		});
	});
		
	$(".f_search a").on("click",function(){		
		
		var sch = $("#m_sch").val();
		
		if(sch == null || sch == ""){
			alert("검색조건을 2자리 이상 입력하세요");
			return false;
		}
		
		if(!(sch.length >= 2)){
			alert("검색조건을 2자리 이상 입력하세요");
			return false;
		}	
		
		$("#frmSch").submit();
	});
	
});


