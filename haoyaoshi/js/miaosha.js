$(function() {
    class miaosha {
        constructor(data) {
            this.data = data;
        }
        init() {
            this.creatHtml()
            this.click1()

        }
        creatHtml() {
            let html2 = this.data.map(element => {
                // console.log(element);

                let html = ` <li>
                <div class="icon-title">${element.zhe}</div>
                <a href="">
                    <img src=${element.src} alt="">
                </a>
                <p class="title">${element.tro}</p>
                <p>
                    <span>￥${element.original_price}</span>
                    <i>￥${element.sale_price}</i>
                </p>
            </li>`
                return html;
            }).join('');
            let html1 = $(`<ul class="con">${html2}</ul>`)
                // console.log(html2)
            $(".miao-b").append(html1);
        }

        click1() {

            // $("#qiehuan2").click(function() {
            //     console.log(left)
            //     console.log(1);
            //     $(".con").animate({ "left": "+=200px" });

            // })
            // var left = $(".con").css("left");
            // console.log(left)
            $("#qiehuan2").click(function() {
                var left = $(".con").css("left");
                // console.log(left)
                if (left >= '0px') { $("#qiehuan2").css('background', 'red') } else {
                    console.log(left)
                    $("#qiehuan1").css('background', '#000')
                    $(".con").stop().animate({ "left": "+=200px" });
                }
            })
            $("#qiehuan1").click(function() {
                var left = $(".con").css("left");
                console.log(left)
                if (left <= '-1200px') { $("#qiehuan1").css('background', 'red') } else {
                    // console.log(2)

                    console.log(left)
                    $("#qiehuan2").css('background', '#000')
                    $(".con").stop().animate({ "left": "-=200px" });
                }
            })

            // $("#qiehuan1").click(function() {
            //     var num = $(".reduction").text()
            //     if (num == 1) {
            //         $(".reduction").text("2");
            //     } else {
            //         $(".reduction").text("1");
            //     }
            //     var left = $(".qie").css("left");
            //     // var left = $(".qie").css("left");

            //     if (left == "0px") {
            //         $(".qie").animate({ "left": "-1200px" });
            //     } else {
            //         $(".qie").animate({ "left": "0" });
            //     }
            // })


        }

    }
    // var mySwiper = new Swiper('.swiper-container', {
    //     // direction: 'vertical', // 垂直切换选项
    //     loop: true, // 循环模式选项
    //     autoplay: {
    //         delay: 1000
    //     },

    //     // 如果需要分页器
    //     pagination: {
    //         el: '.swiper-pagination',
    //         clickable: true,
    //     },

    //     // 如果需要前进后退按钮
    //     navigation: {
    //         nextEl: '.swiper-button-next',
    //         prevEl: '.swiper-button-prev',
    //     },

    //     // // 如果需要滚动条
    //     // scrollbar: {
    //     //     el: '.swiper-scrollbar',
    //     // },
    // })
    // document.querySelector('.swiper-container').onmouseenter = function() {
    //     mySwiper.autoplay.stop();
    // }
    // document.querySelector('.swiper-container').onmouseleave = function() {
    //     mySwiper.autoplay.start();
    // }
    var oCountDown = document.getElementsByClassName("hotProM")[0];
    var target = new Date(2019, 8, 10, 17, 00, 00);

    /* [2] 开启定时器计算并显示倒计时 */
    var timer = setInterval(function() {
        var currentDate = new Date();
        var offset = Math.round((target.getTime() - currentDate.getTime()) / 1000);

        if (offset <= 0) {

            /* 关闭倒计时 */
            clearInterval(timer);
        }

        var h = Math.floor(offset / 60 / 60 % 24);

        var m = Math.floor(offset / 60 % 60);
        var d = Math.floor(offset / 60 / 60 / 24);
        var res = `
        <span>
        <i class="a1">${d}</i> 
        <i>天</i>
     </span>
     <span>
         <i class="a1">${h}</i>
         <i>时</i>
     </span>
     <span>
         <i class="a1">${m}</i>
         <i>分</i>
     </span>
        `;
        // oCountDown.innerText = res;
        $('.time').html(res)
    }, 1000);

    // let miao = new miaosha()
    $.getJSON("../json/miaosha.json", json => (new miaosha(json)).init());
    //楼层
    $('.elevator .w1').click(function() {
        // console.log(1);
        window.scrollTo(0, 0);
    })
    $('.d1').click(function() {
        window.scrollTo(0, 1300);
        $('.d1').css('background', 'green').siblings().css('background', '#626262')
    })
    $('.d2').click(function() {
        window.scrollTo(0, 2000);
        $('.d2').css('background', 'blue').siblings().css('background', '#626262')
    })
    $('.d3').click(function() {
        window.scrollTo(0, 2700);
        $('.d3').css('background', 'pink').siblings().css('background', '#626262')
    })
    $('.d4').click(function() {
            window.scrollTo(0, 3400);
            $('.d4').css('background', 'red').siblings().css('background', '#626262')
        })
        //选项卡自动
    let now = 0; //可视区那张的下标
    timer = setInterval(next, 1000); //图片的间隔时间

    function next() {
        now++;
        tab();
    }

    function tab() {
        let top = $('.n_tabCon ul').css('top');
        // console.log(top);
        setInterval(() => {
            $('.n_tabCon ul').animate('top', -40);
            $('.n_tabCon ul').append($('.n_tabCon ul li:first').clone(true));
            $('.n_tabCon ul').children().first().remove();
            $('.n_tabCon ul').css('top', 0);
        }, 3000);
        // $('.n_tabCon ul').css('top', 0);
    }
    $('.n_tab li').click(function() {
        // console.log(1);

        $(this).addClass('active1').siblings().removeClass('active1');
        $('.n_tabCon ul').eq($(this).index()).css('display', 'block').siblings().css('display', 'none');
    });
    $('.activiy_tab ul li').click(function() {
        $(this).addClass('activex').siblings().removeClass('activex');
        $('.ac_cont  ul').eq($(this).index()).css('display', 'block').siblings().css('display', 'none');
    })
})