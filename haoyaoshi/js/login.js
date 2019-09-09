$(function() {
    let phone1 = '';
    let UserName1 = '';
    let UserName = $("#UserName");
    let UserPassword = $("#UserPassword");
    UserName.blur(function(e) {
        // console.log(1);
        let text = $.trim($(this).val());
        phone1 = text;
        let msg = $(this).parent().next("p");

        if (text.length == 0) {
            msg.html("请输入账号");
        } else {
            msg.html("");
        }
    });
    UserPassword.blur(function(e) {
        // console.log(1);
        let text = $.trim($(this).val());
        UserName1 = text;
        let msg = $(this).parent().next("p");

        if (text.length == 0) {
            msg.html("请输入密码");
        } else {
            msg.html("");
        }
    });
    $(".btn").click(function() {
        // console.log(11);
        var phone = $("#UserName").val();
        var password = $("#UserPassword").val();
        if (phone && password) {
            $.ajax({
                type: "post",
                url: "../php/login.php",
                dataType: "json",
                data: {
                    phone: phone,
                    password: password
                },
                success: function(response) {
                    // console.log(response);
                    if (keep.checked) {
                        alert('公共场合最好不要勾选')
                        if (response.status == "success") {
                            let olname = getCookie('phone');
                            let olpassword = getCookie('password');
                            if (olname && olpassword) {
                                alert('已登录');
                            } else {
                                setCookie('phone', phone, 7);
                                setCookie('password', password, 7);
                                alert('登录成功')
                                var url = localStorage.url
                            }
                            let path = 'http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/zhuce.html';
                            if (url) {
                                if (url == path) {
                                    window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/index.html";
                                } else {
                                    window.location.href = url;
                                }
                            } else {
                                window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/index.html";
                            }
                        } else {
                            $("#UserPassword").parent().next("p").html("用户名或密码错误")
                        }
                    } else {

                        if (response.status == "success") {
                            let olname = getCookie('phone');
                            let olpassword = getCookie('password');
                            if (olname && olpassword) {
                                alert('已登录');
                            } else {
                                setCookie('phone', phone);
                                setCookie('password', password);
                                alert('登录成功')
                                var url = localStorage.url
                            }
                            let path = 'http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/zhuce.html';
                            if (url) {
                                if (url == path) {
                                    window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/index.html";
                                } else {
                                    window.location.href = url;
                                }
                            } else {
                                window.location.href = "http://127.0.0.1/haoyaoshi/haoyaos/haoyaoshi/html/index.html";
                            }
                        } else {
                            $("#UserPassword").parent().next("p").html("用户名或密码错误")
                        }
                    }

                }
            });
        }



    })
})