$(function() {
    $.ajax({
        type: "post",
        url: "../php/goods.php",
        // data: "data",
        dataType: "json",
        success: function(response) {
            console.log(response);

        }
    });
})