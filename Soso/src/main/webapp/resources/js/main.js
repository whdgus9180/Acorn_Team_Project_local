/* main, business */
$(document).ready(function(){
    var swiper = new Swiper("main .swiper, .our-business .swiper", {
        pagination: {
          el: ".swiper-pagination",
          type: "fraction",
        },
        navigation: {
          nextEl: ".swiper-button-next",
          prevEl: ".swiper-button-prev",
        },
        autoplay: {
            delay: 4000,
        },
        loop: true,
    });


    $(".stop-btn").click(function () {
        swiper.autoplay.stop();
        $(".play-btn").toggleClass('active');
        $(".stop-btn").removeClass('active');
    });
    $(".play-btn").click(function () {
        swiper.autoplay.start();
        $(".stop-btn").toggleClass('active');
        $(".play-btn").removeClass('active');
    });
})




