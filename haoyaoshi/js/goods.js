$(function() {
    let ipage = 1;
    let num = 20;
    let type = 'normal';
    $.ajax({
        type: "post",
        url: "../php/goods.php",
        data: {
            page: ipage,
            num: num,
            type: type
        },
        success: function(response) {

            bb(response);
            cc()

        }
    });


    function cc() {

        $('.fen').on('click', 'p', function() {
            // console.log($(this).index());
            let index = $(this).index();
            // console.log(index);

            $(this).addClass("active").siblings().removeClass("active");
            ipage = index + 1;
            // // console.log(ipage);

            $.ajax({
                type: "post",
                url: "../php/goods.php",
                data: {
                    page: ipage,
                    num: num,
                    type: type,
                    order: order,
                    a2: a2,
                    a5: a5,
                    a6: a6,
                },

                success: function(response) {
                    // console.log(arr)
                    var arr = JSON.parse(response);
                    let html = arr.data.map(arr => {
                        // console.log(arr);
                        return `<li data-id=${arr.uid}>
                <div class="tu">
                    <img src=${arr.img1} alt="" class="img1">
                </div>
                <div class="name">${arr.name}</div>
                <div class="black">${arr.black}</div>
                <div class="store">${arr.store}</div>
                <div class="des">${arr.des}</div>
                <div class="price">
                    <span class="now_price">￥${arr.now_price}</span>
                    <span class="old_price">¥${arr.old_price}</span>
                </div>
                <div class="btn">
                    <img src=${arr.img2} alt="" class="img2">
                </div>
            </li>`
                    }).join('');
                    $('.list1').html(html);
                }
            })
        })

    }

    function bb(response) {

        var arr = JSON.parse(response);
        // console.log(arr);

        let html = arr.data.map(arr => {
            // console.log(arr);
            return `<li data-id=${arr.uid}>
            <div class="tu">
                <img src=${arr.img1} alt="" class="img1">
            </div>
            <div class="name">${arr.name}</div>
            <div class="black">${arr.black}</div>
            <div class="store">${arr.store}</div>
            <div class="des">${arr.des}</div>
            <div class="price">
                <span class="now_price">￥${arr.now_price}</span>
                <span class="old_price">¥${arr.old_price}</span>
            </div>
            <div class="btn">
                <img src=${arr.img2} alt="" class="img2">
            </div>
        </li>`
        }).join('');
        $('.list1').html(html);
        let tol = Math.ceil(arr.tatol / arr.num);
        // console.log(tol);
        let fenye = '';
        for (let i = 0; i < tol; i++) {
            fenye += `<p>${i + 1}</p>`;
        }
        $('.fen').html(fenye);
        $('.fen ').children().eq(ipage - 1).addClass("active");
        // console.log(ipage)
        let ye = '';
        ye = `<p>共${tol}页</p>`
        $('.wxx ').html(ye);
    };

    var order = '';
    //处理高到低排序
    isok = true;
    $('.paix').click(function() {
        // console.log(1)
        isok = !isok;
        if (isok) {
            order = 'desc';

        } else {
            order = 'asc';
        }
        type = 'paixu';

        $.ajax({
            type: "post",
            url: "../php/goods.php",
            data: {
                order: order,
                page: ipage,
                num: num,
                type: type,
            },
            // dataType: "json",
            success: function(response) {
                bb(response);
                cc()


            }
        });

    })
    var a2 = '';
    $('.wx2  li').click(function() {

            type = 'search';
            a2 = $.trim($(this).text());
            // console.log(a2);
            $.ajax({
                type: "post",
                url: "../php/goods.php",
                // dataType: "json",
                data: {
                    a2: a2,
                    page: ipage,
                    num: num,
                    type: type,
                    a5: a5,
                    a6: a6,
                },
                success: function(response) {

                    bb(response);
                    cc()
                }
            });
        })
        //处理区间查询
    var a5 = '';
    var a6 = '';
    $('.wx3 li').click(function() {
        type = 'qujian';
        let w1 = $(this).text().split('元');
        let w2 = w1[0].split('-');
        // let w3 = $.trim(w2.split(','));
        a5 = $.trim(w2[0]);
        a6 = w2[1];
        // console.log(a5);
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            data: {
                a2: a2,
                a5: a5,
                a6: a6,
                page: ipage,
                num: num,
                type: type
            },
            success: function(response) {

                // console.log(response);
                bb(response);
                cc()
            }
        });
    })
    $('.b1').click(function() {
        let ipage = 1
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            data: {
                a2: a2,
                a5: a5,
                a6: a6,
                page: ipage,
                num: num,
                type: type
            },
            success: function(response) {

                $('.fen p').eq(0).addClass("active").siblings().removeClass("active");
                // bb(response);
                // // ipage = tol
                // cc()
                var arr = JSON.parse(response);
                let html = arr.data.map(arr => {
                    // console.log(arr);
                    return `<li data-id=${arr.uid}>
                    <div class="tu">
                        <img src=${arr.img1} alt="" class="img1">
                    </div>
                    <div class="name">${arr.name}</div>
                    <div class="black">${arr.black}</div>
                    <div class="store">${arr.store}</div>
                    <div class="des">${arr.des}</div>
                    <div class="price">
                        <span class="now_price">￥${arr.now_price}</span>
                        <span class="old_price">¥${arr.old_price}</span>
                    </div>
                    <div class="btn">
                        <img src=${arr.img2} alt="" class="img2">
                    </div>
                </li>`
                }).join('');
                $('.list1').html(html);
            }

        });
        // console.log(index)
    })
    $('.b4').click(function() {
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            data: {
                a2: a2,
                a5: a5,
                a6: a6,
                page: ipage,
                num: num,
                type: type
            },
            success: function(response) {
                var arr = JSON.parse(response);
                tol = Math.ceil(arr.tatol / arr.num);
                // console.log(tol);
                ipage = tol
                $('.fen p').eq(tol - 1).addClass("active").siblings().removeClass("active");
                // bb(response);
                // // ipage = tol
                // cc()

                dd()

            }
        });

    })
    $('.b2').click(function() {
        // console.log(1)
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            // dataType: "json",
            data: {
                a2: a2,
                page: ipage,
                num: num,
                type: type,
                a5: a5,
                a6: a6,
            },
            success: function(response) {
                var arr = JSON.parse(response);
                tol = Math.ceil(arr.tatol / arr.num);
                ipage--
                if (ipage <= 1) {
                    ipage = 1
                }
                $('.fen p').eq(ipage - 1).addClass("active").siblings().removeClass("active");
                dd()

            }
        });
    })
    $('.b3').click(function() {
        // console.log(1)
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            // dataType: "json",
            data: {
                a2: a2,
                page: ipage,
                num: num,
                type: type,
                a5: a5,
                a6: a6,
            },
            success: function(response) {

                ipage++
                // console.log(ipage)
                var arr = JSON.parse(response);
                tol = Math.ceil(arr.tatol / arr.num);
                if (ipage >= tol) {
                    ipage = tol
                }
                $('.fen p').eq(ipage - 1).addClass("active").siblings().removeClass("active");
                dd()

            }
        });
    })

    function dd() {
        $.ajax({
            type: "post",
            url: "../php/goods.php",
            data: {
                a2: a2,
                page: ipage,
                num: num,
                type: type,
                a5: a5,
                a6: a6,
            },

            success: function(response) {
                // console.log(arr)
                var arr = JSON.parse(response);
                let html = arr.data.map(arr => {
                    // console.log(arr);
                    return `<li data-id=${arr.uid}>
            <div class="tu">
                <img src=${arr.img1} alt="" class="img1">
            </div>
            <div class="name">${arr.name}</div>
            <div class="black">${arr.black}</div>
            <div class="store">${arr.store}</div>
            <div class="des">${arr.des}</div>
            <div class="price">
                <span class="now_price">￥${arr.now_price}</span>
                <span class="old_price">¥${arr.old_price}</span>
            </div>
            <div class="btn">
                <img src=${arr.img2} alt="" class="img2">
            </div>
        </li>`
                }).join('');
                $('.list1').html(html);
            }
        })
    }
    $('.list1').on('click', 'li', function() {
        let a = $(this).attr('data-id');
        // console.log(a);
        window.location.href = `http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/xiangqing.html?id=${a}`;
    })
})