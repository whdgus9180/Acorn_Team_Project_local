//gnb
$(document).ready(function(){

    	$(window).scroll(function(){ 
		var top = $(window).scrollTop(); 

		if(top > 0){
			$('header').addClass('active');
			$('header').css('border-bottom','1px solid #ccc');
			$('header').css('background-color','rgba(209, 199, 177, 0.947)');
		}else{
			$('header').removeClass('active');
			$('header').css('border-bottom','0');
			$('header').css('background-color','rgba(0, 89, 81, 0)');
		}
	});

	
	$(window).trigger('scroll');




    var subBg = $('<div class="subBg"></div>');

    $('header').append(subBg);
    
    var gnb = 'header';
    var main = '.gnb .mainNav';
    var sub = '.gnb .subNav' ;
    var bg = 'header .subBg' ;
    var speed = 'fast';
    
    $(gnb).hover(function(){
        $(sub + ',' + bg).stop().slideDown(speed);
        $(main).removeClass('active');
        $(gnb).css('background-color','rgba(209, 199, 177, 0.947)');
        $(gnb).css('border-bottom','1px solid #fff');
    },function(){
        $(sub + ',' + bg).stop().slideUp(speed);
        $(main).removeClass('active');
        $(gnb).css('background-color','rgba(0, 89, 81, 0)');
        $(gnb).css('border-bottom','0');
    });
    
    
    $(main).first().focus(function(){ 
        $(sub + ',' + bg).stop().slideDown(speed);
        $(this).addClass('active');
    });

    $(main).focus(function(){
        $(main).removeClass('active'); 
        $(this).addClass('active'); 
    });
    
    $(main).first().keydown(function(e){
        if(e.keyCode == 9){
            if(e.shiftKey){ 
                $(sub + ', ' + bg).stop().slideUp(speed);
                $(this).removeClass('active');
            }
        }
    });

    $(sub).last().find('li:last a').keydown(function(e){
       if(e.keyCode == 9){ //tab키를 눌렀을 때
           if(!e.shiftKey){ //shift키는 누르지 않았을 때
               $(sub + ',' + bg).stop().slideUp(speed);
               $(main).removeClass('active');
           }
       }
    });
    
    $(sub).find('li:last a').focus(function(){
        $(main).removeClass('active');
        $(this).parents(sub).prev().addClass('acitve');
    });

    $('header').mouseleave(function(){
        $(main).removeClass('active');
        $(sub).stop().slideUp(speed);
    });
    
});


