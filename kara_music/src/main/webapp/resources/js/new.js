/**
 * 
 */
$(document).ready(function(){
	
	$(".m_new p").eq(0).addClass("new_kpop");
    $(".m_new p").eq(1).addClass("new_pop");
    
    var base_color = "rgb(32, 32, 32)";
    var set_color  = "rgb(182, 55, 241)";
    
    $(".new_kpop a").css("color",set_color);
    
    var len_01 = $(".main1 .m_content").length;    

    for(var i=0 ; i<len_01 ; i++){                        
    	$(".main1 .m_content").eq(i).hide();
    }
    
    $(".main1 .m_content").eq(0).show();
    
    $(".new_kpop").on("click",fn_kpop);
    $(".new_pop").on("click",fn_pop);
    
    var base_color = "rgb(32, 32, 32)";
    
    function fn_kpop(e){
    	 e.preventDefault();
    	 
    	$(".main1 .m_content").eq(0).show();
    	$(".main1 .m_content").eq(1).hide();
    	$(".new_kpop a").css("color",set_color);
    	$(".new_pop a").css("color",base_color);
    	
    }
    
    function fn_pop(e){  
    	 e.preventDefault();
    	 
    	$(".main1 .m_content").eq(1).show();
    	$(".main1 .m_content").eq(0).hide();
    	$(".new_pop a").css("color",set_color);
    	$(".new_kpop a").css("color",base_color);    	
    }
    
});