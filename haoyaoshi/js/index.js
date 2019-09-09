$(function() {

    //daohang
    $('.category-nav-sup li').mouseenter(function() {
        let index = $(this).index();
        // console.log(index);
        $(".nov-item").eq(index).addClass("active");
        $('.category-nav-sup li').eq(index).addClass("bag");
    })
    $('.category-nav-sup li').mouseleave(function() {
            let index = $(this).index();
            $('.nov-item').eq(index).removeClass('active');
            $('.category-nav-sup li').eq(index).removeClass("bag");
        })
        //tupian
    $('.top_coupon').mouseenter(function() {
        $('.top_coupon01').addClass("top_coupon02");
    })
    $('.top_coupon').mouseleave(function() {
        $('.top_coupon01').removeClass("top_coupon02");
    })
    $('.font_dark').click(function() {
        localStorage.url = location.href; //jizhuwangzhi
    })
})