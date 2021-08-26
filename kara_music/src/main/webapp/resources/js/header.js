$(function(){	
	
	 $(".h_logo").on("click",fn_logo); 
	    
    function fn_logo(){
        location.href="./main";
    }   
	
	$("#pop_login").css("display","none");
    $("#pop_join").css("display","none"); 
	
	var myModal_01 = new bootstrap.Modal(document.getElementById('pop_login'), {backdrop:'static'});
	var myModal_02 = new bootstrap.Modal(document.getElementById('pop_join'), {backdrop:'static'});

	$('.p_login').on('click', function(){
		myModal_01.show();		
	});

	$('.exit_1').on('click', function(){ 	
		myModal_01.hide();
	});
	

	$('.p_join').on('click', function(){
		myModal_02.show();		
	});

	$('.exit_2').on('click', function(){
		myModal_02.hide();	
	});

	
	$("#mail_02").on("change",fn_change);
    $("#mail_03").on("change",fn_change);

    function fn_change(e){         
        e.preventDefault(); 

        if($(this).hasClass("mail_02")){
            $("#mail_03").val("-1");        

        }else if($(this).hasClass("mail_03")){
            var data = $(this).val();                    
            if(data == -1){
                $("#mail_02").val("");        
                return;
            }
            
            $("#mail_02").val(data);        
        }
    }  
	
});