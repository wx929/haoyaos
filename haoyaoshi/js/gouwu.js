$(function() {
    $.ajax({
        type: "post",
        url: "../php/gouwuche.php",
        // data: "data",
        dataType: "json",
        success: function(response) {
            console.log(response)
            let html = response.map(arr => {
                return `  <li class="clearfix inkdi" data-id="${arr.uid}">
                    <div class="w1 a1 fl">
                        <div class="fl">
                            <input type="checkbox" name="" class="xuan">
                        </div>
                        <div class="fl">
                            <a href="" class="proimg"><img src=${arr.img1} alt=""></a>
                        </div>
                        <div class="fl">
                            <p class="name">
                                <a href="">${arr.name}</a>
                            </p>
                            <p class="guig">${arr.des}</p>
                        </div>
                    </div>
                    <div class="w2 a1 fl a2">
                        ￥<span>${arr.now_price}</span>
                    </div>
                    <div class="w3 a1 fl a2">
                        <p class="clearfix">
                            <i class="fl jian">-</i>
                            <input type="text" class="fl oInput" value=${arr.total} >
                            <i class="fl jia">+</i>
                        </p>
                    </div>
                    <div class="w4 a1 fl a2">
                        ￥<span>${arr.now_price*arr.total}</span>
                    </div>
                    <div class="w5 a1 fl a2">
                        <a href="###" class="remove1">删除</a>
                    </div>
                </li>`
            }).join('');
            $('.x2').html(html)
        }
    });
    //处理数量框
    $('.x2').on('click', '.jia', function() {

        var num = $(this).prev().val();
        if (num < 9) {
            num++
            $(this).prev().val(num)
        }
        let price = $(this).parent().parent().prev().children('span').text() * 1;
        let xiaoji = price * num
        $(this).parent().parent().next().children('span').text(xiaoji);
        let id1 = $(this).parents(".inkdi").attr('data-id')
            // console.log(id1)
        $.ajax({
            type: "post",
            url: "../php/gongneng.php",
            data: {
                "uid": id1,
                "total": num,
            },
            success: function(response) {
                allNum()
            }
        })
    });
    $('.x2').on('click', '.jian', function() {

        var num = $(this).next().val();
        if (num > 1) {
            num--
            $(this).next().val(num)
        }
        let price = $(this).parent().parent().prev().children('span').text() * 1;
        let xiaoji = price * num
        $(this).parent().parent().next().children('span').text(xiaoji);
        let id1 = $(this).parents(".inkdi").attr('data-id')
        $.ajax({
            type: "post",
            url: "../php/gongneng.php",
            data: {
                "uid": id1,
                "total": num,
            },
            success: function(response) {
                allNum()
            }
        })
    });
    $('.x2').on('input', '.oInput', function() {
        var num = $(this).val();
        // console.log(num)
        if (num > 9) {
            num = 9
            $(this).val(num)
        } else if (num < 1) {
            num = 1
            $(this).val(num)
        }
        let price = $(this).parent().parent().prev().children('span').text() * 1;
        let xiaoji = price * num
        $(this).parent().parent().next().children('span').text(xiaoji);
        let id1 = $(this).parents(".inkdi").attr('data-id')
        $.ajax({
            type: "post",
            url: "../php/gongneng.php",
            data: {
                "uid": id1,
                "total": num,
            },
            success: function(response) {
                allNum()
            }
        })
    })
    $('.x2').on('click', '.remove1', function() {
            let id1 = $(this).parents(".inkdi").attr('data-id') * 1
            console.log(id1)
            $.ajax({
                type: "post",
                url: "../php/delete.php",
                data: {
                    uid: id1
                },
                // dataType: "dataType",
                success: function(response) {
                    allNum()
                }
            });
            $(this).parent().parent().remove();
            let lengthp = $('.x2').children().length;
            if (lengthp == 0) {
                $('.shoppingCart').css('display', 'none');
                $('.shoppingCart1').css('display', 'block');
            } else {
                // console.log($('.x2').children().length)
            }

        })
        // var heji = 0;
    function checkedArr() {
        let arr = []; //存放勾选复选框的下标
        $('.xuan').each(function(index, item) {
            if ($(item).prop('checked')) {
                //被勾选了
                arr.push(index);
            }
        });
        return arr;
    }

    function allNum() {
        let checkall = checkedArr(); //返回被勾选的下标数组
        let num = 0; //放商品总数量
        let total = 0; //放总价
        checkall.forEach(function(item, index) {
            num += $('.w4 span').eq(checkall[index]).text() * 1; //累加
            total += $('.w3 .oInput').eq(checkall[index]).val() * 1;

        });
        $('.zongjie .totalNum').text(`(${total})`);
        $('.heji span i').text(num);

        //控制全选按钮
        let len = $('.xuan').length;
        let achecknum = $('.xuan:checked').length;
        if (len == achecknum) {
            //已经全选
            $('#quanxuan').prop('checked', true);
        } else {
            $('#quanxuan').prop('checked', false);
        }

    }
    $('.x2').on('click', '.xuan', function() {
        allNum()
    })
    $('#quanxuan').click(function() {
        let isok = $('#quanxuan').prop('checked');
        $('.xuan').prop('checked', isok);
        allNum();
    });
});