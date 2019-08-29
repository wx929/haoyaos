$(function() {
    $('#header').load('head.html', function() {});
    $('.z-banner').load('banner.html', function() {});
    $('#footer').load('foot.html', function() {});
    $('#toolbar').load('toolbar.html', function() {
        $('.bot_Top span').click(function() {
            window.scrollTo(0, 0);
        })

    });

})