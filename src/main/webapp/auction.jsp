<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib uri="/struts-tags" prefix="s" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>竞拍页</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <link href="<s:url value="/css/common.css"/>" rel="stylesheet" type="text/css"/>
    <link href="<s:url value="/css/style.css"/>" rel="stylesheet" type="text/css"/>
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript" src="/zaixianpaimai/jquery/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        function shuaxin() {
            location = '<s:url namespace="/private" action="auctionRecord_show"/>?auctionId=<s:property value="auction.id"/>';
        }

        function fanhui() {
            location = '<s:url namespace="/private" action="auction_showAuction"/>';
        }

        function jingpai() {
            var jingpaijia = parseFloat($("#sale").val());
            var zgjpj = parseFloat($(".price:first").html());
            var dijia = parseFloat($("#aaa").html());
            if (zgjpj) {

                if (jingpaijia > zgjpj && (jingpaijia > dijia)) {
                    return true;
                } else {

                    $("#pp").html("出价不能低于最高竞拍价");
                    return false;
                }

            } else {


                if (jingpaijia > dijia) {

                    return true;
                } else {

                    $("#pp").html("出价不能低于最高竞拍价");
                    return false;
                }
            }

        }

    </script>
</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="sale">
        <h1 class="lf">在线拍卖系统</h1>
        <div class="logout right"><a href='<s:url value="login.jsp"></s:url>' title="注销">注销</a></div>
    </div>
    <div class="items sg-font lf">
        <ul class="rows">
            <li>名称：</li>
            <li class="borderno"><s:property value="auction.auction_name"/></li>
        </ul>
        <ul class="rows">
            <li>描述：</li>
            <li class="borderno"><s:property value="auction.auction_desc"/></li>
        </ul>
        <ul class="rows">
            <li>开始时间：</li>
            <li class="borderno"><s:date name="auction.auction_start_time" format="yyyy-MM-dd HH:mm:ss"/></li>
        </ul>
        <ul class="rows">
            <li>结束时间：</li>
            <li class="borderno"><s:date name="auction.auction_end_time" format="yyyy-MM-dd HH:mm:ss"/></li>
        </ul>
        <ul class="rows border-no">
            <li>起拍价：</li>
            <li class="borderno" id="aaa"><s:property value="auction.auction_start_price"/></li>
        </ul>
    </div>
    <div class="rg borders"><img src="images/<s:property value="auction.auction_pic"/>" width="270" height="185"
                                 alt=""/></div>
    <div class="cl"></div>
    <div class="top10 salebd">
        <p>
        <form action='<s:url namespace="/private" action="Record_add"></s:url>' method="post"
              onsubmit="return jingpai()">
            <label for="sale">出价：</label>
            <input type="text" class="inputwd" id="sale" name="ar.auction_price"/>
            <input name="" type="submit" value="竞 拍" class="spbg buttombg f14  sale-buttom"/>
        </form>
        </p>
        <p id="pp" class="f14 red"></p>
    </div>
    <div class="top10">
        <input name="" type="button" value="刷 新" class="spbg buttombg f14" onclick="shuaxin()"/>
        <input name="" type="button" value="返回列表" class="spbg buttombg f14" onclick="fanhui()"/>
    </div>
    <div class="offer">
        <h3>出价记录</h3>
        <div class="items sg-font">
            <ul class="rows even strong">
                <li>竞拍时间</li>
                <li>竞拍价格</li>
                <li class="borderno">竞拍人</li>
            </ul>
            <s:iterator value="arList" status="sta">
            <s:if test="#sta.index%2==0">
            <ul class="rows">
                </s:if>
                <s:else>
                <ul class="rows even">
                    </s:else>
                    <li><s:date name="auction_time" format="yyyy-MM-dd HH:mm:ss"/></li>
                    <li class="price"><s:property value="auction_price"/></li>
                    <li class="borderno"><s:property value="user.user_name"/></li>
                </ul>
                </s:iterator>
                <!-- <ul class="rows even">
                  <li>2010-01-05 11:50:01</li>
                  <li>40000,00</li>
                  <li class="borderno">李四</li>
                </ul>
                <ul class="rows">
                  <li>2010-01-05 10:50:01</li>
                  <li>30000,00</li>
                  <li class="borderno">王五</li>
                </ul>
                <ul class="rows even border-no">
                  <li>2010-01-05 09:50:01</li>
                  <li>20000,00</li>
                  <li class="borderno">李靖</li>
                </ul> -->
        </div>
    </div>
    <!-- main end-->
</div>
</body>
</html>
