$(function() {
    let id1 = location.search.slice(1);
    let id2 = id1.split('=')[1] * 1;
    // console.log(id2)
    $.ajax({
            type: "post",
            url: "../php/xiangqing.php",
            data: {
                id: id2
            },
            dataType: "json",
            success: function(response) {
                $('.jqzoom').attr('src', response[0].img1);
                $('.img1').attr('src', response[0].img1);
                $('.xiang-r h2').text(response[0].name);
                $('.xiang-r h3').text(response[0].black);
                $('.oldPrice em').text(response[0].store);
                $('.des1').text(response[0].des);
                $('.price em').text(response[0].now_price);
                $('.oldPrice em').text(response[0].old_price);

            }
        })
        // $.ajax({
        //     type: "post",
        //     url: "../php/fangda.php",
        //     data: {
        //         id: id2
        //     },
        //     dataType: "json",
        //     success: function(response) {
        //         // console.log(response);
        //         var arrayN = [];
        //         response.map(arr => {
        //             arrayN.push(arr.img1, arr.img2, arr.img3, arr.img4);
        //         })
        //         let html = arrayN.map(arr => {
        //             return ` <li>
        //                         <div class="tb-pic tb-s40 aa">
        //                             <a href="###">
        //                                 <img src=${arr}>
        //                             </a>
        //                         </div>
        //                     </li>`
        //         }).join('');
        //         $('#thumblist').html(html);

    //         // console.log(arrayN);



    //     }
    // });
    $('.jia').click(function() {

        var num = $('.operate_count input').val();
        if (num < 9) {
            num++
            $('.operate_count input').val(num)
        } else {
            $(this).addClass('disabled').siblings().removeClass('disabled');
        }

    });
    $('.jian').click(function() {

        var num = $('.operate_count input').val();
        if (num > 1) {
            num--
            $('.operate_count input').val(num)
        } else {
            $(this).addClass('disabled').siblings().removeClass('disabled');
        }
    });
    // console.log($('.operate_count input').val())
    $('.operate_count').on('input', '.num', function() {
        var num = $('.operate_count input').val();
        if (num > 9) {
            num = 9
            $('.operate_count input').val(num)
        } else if (num < 1) {
            num = 1
            $('.operate_count input').val(num)
        }

    })

    $('#addCart').click(function() {
        // alert('加入成功')
        let usename = getCookie('phone');
        if (usename) {
            let id1 = location.search.slice(1);
            let id2 = id1.split('=')[1] * 1;
            let shul = $('.num').val()
                // console.log(shul)

            $.ajax({
                type: "post",
                url: "../php/panduan.php",
                data: {
                    uid: id2,
                    phone: usename,
                    total: shul,
                },
                dataType: "json",
                success: function(response) {
                    // console.log(response)
                }
            });
        } else {
            alert('no');
        }

    })
    $('.immediatelybuy').click(function() {
        let usename = getCookie('phone');
        if (usename) {
            let id1 = location.search.slice(1);
            let id2 = id1.split('=')[1] * 1;
            let shul = $('.num').val()
                // console.log(shul)

            $.ajax({
                type: "post",
                url: "../php/panduan.php",
                data: {
                    uid: id2,
                    phone: usename,
                    total: shul,
                },
                dataType: "json",
                success: function(response) {
                    // console.log(response)
                }
            });
            window.location.href = 'http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/gouwu.html'
        } else {
            alert('no');
        }

    })

})