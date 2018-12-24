<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>My JSP 'auction.jsp' starting page</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="css/common.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        function jingpai() {
            //alert("0");
            var chujia = $("#chujia").val();
            var maxprice = $(".price")[0].innerHTML;
            //alert(maxprice);
            //alert(chujia);
            if (parseInt(chujia) <= parseInt(maxprice)) {
                $("#red").html("不能低于最高竞拍价");
                return false;
            } else {
                $("#red").html("");
                return true;
            }

        }

        function cheackfrom() {
            return jiapaai();
        }
    </script>

</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="sale">
        <h1 class="lf">在线拍卖系统</h1>
        <div class="logout right"><a href="#" title="注销">注销</a></div>
    </div>
    <div class="items sg-font lf">
        <ul class="rows">
            <li>名称：</li>
            <li class="borderno">${requestScope.auction.auction_name}</li>
        </ul>
        <ul class="rows">
            <li>描述：</li>
            <li class="borderno">${requestScope.auction.auction_desc}</li>
        </ul>
        <ul class="rows">
            <li>开始时间：</li>

            <li class="borderno"><fmt:formatDate value="${requestScope.auction.auction_start_time}"
                                                 pattern="yyyy-MM-dd HH:mm:ss"/></li>
        </ul>
        <ul class="rows">
            <li>结束时间：</li>

            <li class="borderno"><fmt:formatDate value="${requestScope.auction.auction_end_time}"
                                                 pattern="yyyy-MM-dd HH:mm:ss"/></li>
        </ul>
        <ul class="rows border-no">
            <li>起拍价：</li>
            <li class="borderno">${requestScope.auction.auction_upset}</li>
        </ul>
    </div>
    <div class="rg borders"><img src="upload/${requestScope.auction.auction_pic}" width="270" height="185" alt=""/>
    </div>


    <div class="cl"></div>

    <div class="top10 salebd">
        <p>
        <form action="${pageContext.request.contextPath}/insert.do" onsubmit="return checkfrom()">

            <label for="sale">出价：</label>
            <input type="hidden" name="auction_id" value="${auction.auction_id}"/>
            <input type="text" class="inputwd" value="" name="auction_price" id="chujia" onblur="jingpai()"/>
            <input type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom"/>
        </form>
        </p>

        <p id="red"></p>

    </div>

    <div class="top10">
        <input name="" type="button" value="刷 新" class="spbg buttombg f14"/>
        <input name="" type="button" value="返回列表" class="spbg buttombg f14" id="fanhui"/>
    </div>

    <div class="offer">
        <h3>出价记录</h3>
        <div class="items sg-font">
            <ul class="rows even strong">
                <li>竞拍时间</li>
                <li>竞拍价格</li>
                <li class="borderno">竞拍人</li>
            </ul>
            <c:forEach items="${list}" var="r">
                <ul class="rows">
                    <li>
                        <fmt:formatDate value="${r.auction_time}" pattern="yyyy-MM-dd HH:mm:ss"/>
                    </li>
                    <li class="price">${r.auction_price}</li>
                    <li class="borderno">${r.user_name}</li>
                </ul>
            </c:forEach>
        </div>
    </div>
    <!-- main end-->
</div>
</body>
</html>
