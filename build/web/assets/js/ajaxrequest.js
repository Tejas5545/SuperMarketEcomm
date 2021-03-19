/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function addmetocart(prdid, cstmid) {
    //alert();
    //cstmid = parseInt(cstmid);
    //alert(cstmid);
    if (cstmid === 0) {
        if (confirm("User are not login..")) {
            window.location.href = "login-register.jsp";
        }
    } else {
        $.ajax({
            type: "POST",
            url: "UserOrders",
            data: {prdid:prdid, cstmid:cstmid},
            success: function (data) {
                //alert(data);
                var status = parseInt(data);
                if (status === 0) {
                    if (confirm("Go To Login First")) {
                        window.location.href = "login-register.jsp";
                    }
                } else if (status === 1) {
                    if (confirm("already in cart.. Go To Cart")) {
                        window.location.href = "cart.jsp";
                    }
                } else if (status === 3) {
                    if (confirm("Your order is pending..\nYou can't add products before order is delivered to you\nGo for tracking Your Order")) {
                        window.location.href = "track-order.jsp";
                    }
                } else if (status === 2) {
                    if (confirm("Order Added To Cart.. Go To Cart")) {
                        window.location.href = "cart.jsp";
                    }
                }
            }
        });
    }

}