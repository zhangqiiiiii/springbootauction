<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="css/common.css" rel="stylesheet" type="text/css"/>
    <link href="css/style.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        function test() {
            $("#imgVcode").prop("src", "kaptcha.do?a=" + Math.random());
        }
    </script>
</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="zclf login logns">
        <h1 class="blue">用户注册</h1>
        <form action="${pageContext.request.contextPath}/zhuce.do" method="post" target='_blank'>
            <dl>
                <dd>
                    <label>
                        <small>*</small>
                        用户名</label>
                    <input type="text" class="inputh lf" value="" name="user_name"/>
                    <div class="lf red laba">用户名要求不低于6个字符</div>
                </dd>
                <dd>
                    <label>
                        <small>*</small>
                        密码</label>
                    <input type="text" class="inputh lf" value="" name="user_password"/>
                    <div class="lf red laba">密码要求不低于6个字符</div>
                </dd>
                <dd>
                    <label>
                        <small>*</small>
                        身份证号</label>
                    <input type="text" class="inputh lf" value="" name="user_card_no"/>
                    <div class="lf red laba">身份证号必填</div>
                </dd>
                <dd>
                    <label>
                        <small>*</small>
                        电话</label>
                    <input type="text" class="inputh lf" value="" name="user_tel"/>
                    <div class="lf red laba">电话号码必填</div>
                </dd>
                <dd>
                    <label>
                        <small>*</small>
                        住址</label>
                    <input type="text" class="inputh lf" value="" name="user_address"/>
                </dd>
                <dd>
                    <label>
                        <small>*</small>
                        邮政编码</label>
                    <input type="text" class="inputh lf" value="" name="user_post_number"/>
                </dd>
                <dd class="hegas">
                    <label>
                        <small>*</small>
                        验证码</label>
                    <input type="text" class="inputh inputs lf" value="" name="number"/>
                    <span class="wordp lf"><img src="${pageContext.request.contextPath}/kaptcha.do" width="96"
                                                height="27" alt="" id="imgVcode"/></span>
                    <span class="blues lf"><a href="javascript:void(0)" onclick="test()" title="">看不清</a></span>
                </dd>
                <dd class="hegas">
                    <label>&nbsp;</label>
                    <input name="" type="checkbox" id="rem_u"/>
                    <label for="rem_u" class="labels">我同意<span class="blues">《服务条款》</span></label>
                </dd>
                <dd class="hegas">
                    <label>&nbsp;</label>
                    <input name="" type="submit" value="立即注册" class="spbg buttombg buttombgs f14 lf"/>
                </dd>
            </dl>
        </form>
    </div>
    <!-- main end-->
    <!-- footer begin-->

</div>
<!--footer end-->

</div>
</body>
</html>
