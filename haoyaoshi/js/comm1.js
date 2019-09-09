$(function() {
    //跳转
    $('#header').load('head.html', function() {
        $('.font_dark').click(function() {

            window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/login.html"
        })
        $('.font_red').click(function() {
            window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/zhuce.html"
        })
        var phone = getCookie('phone')
        let wxx = '';
        if (phone) {
            $('.login_name_top ').css('display', 'inline-block')
            console.log();
            let a = phone.substring(3, 0)
                // console.log(a)
            wxx = `hys${a}`
            $('.login_name_top i').html(wxx).css('color', 'red')
            $('.n-name').css('display', 'none')
            $('.font_red').css('display', 'none')
        }
        $('.quit').click(function() {
            removeCookie('phone');
            $('.login_name_top ').css('display', 'none')
            $('.n-name').css('display', 'inline-block')
            $('.font_red').css('display', 'inline-block')
        })
    });
    $('.z-banner').load('banner.html', function() {});
    $('#footer').load('foot.html', function() {});
    $('#toolbar').load('toolbar.html', function() {
        $('.bot_Top span').click(function() {
            window.scrollTo(0, 0);
        })

    });

})