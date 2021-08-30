$(function(){        

    $(".m_kind_01 p").eq(0).addClass("all_01");
    $(".m_kind_01 p").eq(1).addClass("kpop_01");
    $(".m_kind_01 p").eq(2).addClass("pop_01");

    $(".m_kind_02 p").eq(0).addClass("all_02");
    $(".m_kind_02 p").eq(1).addClass("kpop_02");
    $(".m_kind_02 p").eq(2).addClass("pop_02");
    
    $(".m_kind_01 p").on("click", fn_kind_01);
    $(".m_kind_02 p").on("click", fn_kind_02);

    var base_color = "rgb(32, 32, 32)";
    
    var len_01 = $(".main1 .m_content").length;
    var len_02 = $(".main2 .m_content").length;

    for(var i=0 ; i<len_01 ; i++){                        
        $(".main1 .m_content").eq(i).hide();
    }

    $(".main1 .m_content").eq(0).show();

    for(var i=0 ; i<len_02 ; i++){                        
        $(".main2 .m_content").eq(i).hide();
    }

    $(".main2 .m_content").eq(0).show();
    
    var main1_hap_01 = $(".main1 .main1_kpop").length;
    var main1_hap_02 = $(".main1 .main1_pop").length;    

    function img_slide_01(img){                
        
         $(".m_img_01").append($(img).first());
         $(img).last().hide();
         $(img).first().fadeIn().show();           
    }
    
    var main2_hap_01 = $(".main2 .main2_kpop").length;
    var main2_hap_02 = $(".main2 .main2_pop").length;

    function img_slide_02(img){                
        
        $(".m_img_02").append($(img).first());
        $(img).last().hide();
        $(img).first().fadeIn().show();           
   }    

    var main1_img = ".main1 .m_content";
    $(".all_01 a").css("color","rgb(182, 55, 241)");        

    var flag_all_01  = true;
    var flag_kpop_01 = false;
    var flag_pop_01  = false;

    function fn_kind_01(e){
        
        e.preventDefault();       

        $(".all_01 a").css("color", base_color);                  
        $(".kpop_01 a").css("color",base_color);      
        $(".pop_01 a").css("color", base_color);                      
        
        $(".main1 .m_content").hide();        

        if($(this).hasClass("all_01")){    

            $(".all_01 a").css("color","rgb(182, 55, 241)");                                                      
            $(".main1 .m_content").eq(0).show();                        
            $(".main1 .main1_hap02").text(len_01);            
            
            if(flag_all_01){
                return;
            }

            $(".main1 .main1_hap01").text("1");            
            main1_img = ".main1 .m_content";

            flag_all_01  = true;
            flag_kpop_01 = false;
            flag_pop_01  = false;

        }else if($(this).hasClass("kpop_01")){            
             
            $(".kpop_01 a").css("color","rgb(182, 55, 241)");                           
            $(".main1 .main1_kpop").eq(0).show();                
            $(".main1 .main1_hap02").text(main1_hap_01);
            
            if(flag_kpop_01){
                return;
            }
            
            $(".main1 .main1_hap01").text("1");            
            main1_img = ".main1 .main1_kpop";

            flag_kpop_01 = true;
            flag_all_01  = false;
            flag_pop_01  = false;
            
        }else if($(this).hasClass("pop_01")){       

            $(".pop_01 a").css("color","rgb(182, 55, 241)");                              
            $(".main1 .main1_pop").eq(0).show();                        
            $(".main1 .main1_hap02").text(main1_hap_02);
                                   
            if(flag_pop_01){
                return;
            }

            $(".main1 .main1_hap01").text("1");            
            main1_img = ".main1 .main1_pop";            

            flag_pop_01  = true;
            flag_all_01  = false;
            flag_kpop_01 = false;
        }      
        
        img_slide_01(main1_img);
    }    

    var main2_img = ".main2 .m_content";
    $(".all_02 a").css("color","rgb(182, 55, 241)");        

    var flag_all_02  = true;
    var flag_kpop_02 = false;
    var flag_pop_02  = false;

    function fn_kind_02(e){

        e.preventDefault();        
        
        $(".all_02 a").css("color", base_color);                  
        $(".kpop_02 a").css("color",base_color);      
        $(".pop_02 a").css("color", base_color);     
        
        $(".main2 .m_content").hide();
        
        if($(this).hasClass("all_02")){                        
           
            $(".all_02 a").css("color","rgb(182, 55, 241)");                                                      
            $(".main2 .m_content").eq(0).show();                        
            $(".main2 .main2_hap02").text(len_02);            
            
            if(flag_all_02){
                return;
            }

            $(".main2 .main2_hap01").text("1");            
            main2_img = ".main2 .m_content";

            flag_all_02  = true;
            flag_kpop_02 = false;
            flag_pop_02  = false;
              
        }else if($(this).hasClass("kpop_02")){   
            
              
            $(".kpop_02 a").css("color","rgb(182, 55, 241)");                           
            $(".main2 .main2_kpop").eq(0).show();                
            $(".main2 .main2_hap02").text(main2_hap_01);
            
            if(flag_kpop_02){
                return;
            }
            
            $(".main2 .main2_hap01").text("1");            
            main2_img = ".main2 .main2_kpop";

            flag_kpop_02 = true;
            flag_all_02 = false;
            flag_pop_02  = false;
                                              
        }else if($(this).hasClass("pop_02")){                        

            $(".pop_02 a").css("color","rgb(182, 55, 241)");                              
            $(".main2 .main2_pop").eq(0).show();                        
            $(".main2 .main2_hap02").text(main2_hap_02);
                                   
            if(flag_pop_02){
                return;
            }

            $(".main2 .main2_hap01").text("1");            
            main2_img = ".main2 .main2_pop";            

            flag_pop_02  = true;
            flag_all_02  = false;
            flag_kpop_02 = false;                                 
        }

        img_slide_02(main2_img);
    }
    
    $(".m_prev_01 a").on("click", fn_prev_01);
    $(".m_next_01 a").on("click", fn_next_01);
    
    function fn_next_01(e){
        
        e.preventDefault();               
        
        var hap01 = $(".main1_hap01").text();
        var hap02 = $(".main1_hap02").text();
        
        if(hap01 >= hap02){
            $(".main1_hap01").text("1");
        }else{           
            $(".main1_hap01").text(parseInt(hap01)+1);                
        }

        img_slide_01(main1_img);
    }

    function fn_prev_01(e){
         
        e.preventDefault();

        var hap01 = $(".main1_hap01").text();
        var hap02 = $(".main1_hap02").text();
        
        if(hap01 <= 1){                   
            $(".main1_hap01").text(hap02);
        }else{            
            $(".main1_hap01").text(parseInt(hap01)-1);                
        }

        img_slide_01(main1_img);
    }

    $(".m_prev_02 a").on("click", fn_prev_02);
    $(".m_next_02 a").on("click", fn_next_02);
    
    function fn_next_02(e){
        
        e.preventDefault();               
        
        var hap01 = $(".main2_hap01").text();
        var hap02 = $(".main2_hap02").text();
        
        if(hap01 >= hap02){
            $(".main2_hap01").text("1");
        }else{           
            $(".main2_hap01").text(parseInt(hap01)+1);                
        }

        img_slide_02(main2_img);
    }

    function fn_prev_02(e){
         
        e.preventDefault();

        var hap01 = $(".main2_hap01").text();
        var hap02 = $(".main2_hap02").text();
        
        if(hap01 <= 1){                   
            $(".main2_hap01").text(hap02);
        }else{            
            $(".main2_hap01").text(parseInt(hap01)-1);                
        }

        img_slide_02(main2_img);
    }    
    
});
