<%@ page language="java" pageEncoding="UTF-8" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <link href="${pageContext.request.contextPath}/css/common.css" rel="stylesheet" type="text/css"/>
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet" type="text/css"/>

    <script type="text/javascript" src="${pageContext.request.contextPath}/jquery/jquery-1.11.1.js"></script>
    <script type="text/javascript">
        $(function () {
            // 文件上传(文件域)的改变事件
            $(':file').change(function (event) {
                //  HTML5 js 对象的获取
                var files = event.target.files, file;
                if (files && files.length > 0) {
                    // 获取目前上传的文件
                    file = files[0];
                    // 文件的限定类型什么的道理是一样的
                    if (file.size > 1024 * 1024 * 2) {
                        alert('图片大小不能超过 2MB!');
                        return false;
                    }
                    // file对象生成可用的图片
                    var URL = window.URL || window.webkitURL;
                    // 通过 file 生成目标 url
                    var imgURL = URL.createObjectURL(file);
                    // 用这个 URL 产生一个 <img> 将其显示出来
                    $("img").attr('src', imgURL);
                }
            });
        });
    </script>

</head>

<body>
<div class="wrap">
    <!-- main begin-->
    <div class="sale">
        <h1 class="lf">在线拍卖系统</h1>
        <div class="logout right"><a href="#" title="注销">注销</a></div>
    </div>
    <form action="${pageContext.request.contextPath}/update.do?" method="post" enctype="multipart/form-data">
        <div class="login logns produce">
            <h1 class="blues">拍卖品信息</h1>
            <dl>
                <dd>
                    <label>名称：</label>
                    <input type="hidden" class="inputh lf" value="${requestScope.a.auction_id}" name="auction_id"/>
                    <input type="text" class="inputh lf" value="${requestScope.a.auction_name}" name="auction_name"/>
                    <div class="xzkbg spbg lf"></div>
                </dd>
                <dd>
                    <label>起拍价：</label>
                    <input type="text" class="inputh lf" value="${requestScope.a.auction_start_price}"
                           name="auction_start_price"/>
                    <div class="lf red laba">必须为数字</div>
                </dd>
                <dd>
                    <label>底价：</label>
                    <input type="text" class="inputh lf" value="${requestScope.a.auction_upset}" name="auction_upset"/>
                    <div class="lf red laba">必须为数字</div>
                </dd>
                <dd>
                    <label>开始时间：</label>
                    <input type="text" class="inputh lf"
                           value="<fmt:formatDate value="${a.auction_start_time}" pattern="yyyy-MM-dd hh:mm:ss"/>"
                           name="auction_start_time"/>
                    <div class="lf red laba">格式：2011-05-05 12:30:00</div>
                </dd>
                <dd>
                    <label>结束时间：</label>
                    <input type="text" class="inputh lf"
                           value="<fmt:formatDate value="${a.auction_end_time}" pattern="yyyy-MM-dd hh:mm:ss"/>"
                           name="auction_end_time"/>
                    <div class="lf red laba">格式：2011-05-05 12:30:00</div>
                </dd>
                <dd class="dds">
                    <label>描述：</label>
                    <textarea cols="" rows="" class="textarea"
                              name="auction_desc">${requestScope.a.auction_desc}</textarea>
                </dd>
                <dd>
                    <label>修改图片：</label>
                    <div class="lf salebd"><a href="#"><img src="images/ad20.jpg" width="100" height="100"/></a></div>
                    <input name="wenjian" type="file" class="marg10"/>
                    <input type="hidden" class="inputh lf" value="${requestScope.a.auction_pic}" name="auction_pic"/>
                </dd>
                <dd class="hegas">
                    <input name="" type="submit" value="保 存" class="spbg buttombg buttombgs f14 lf buttomb"/>
                    <input name="" type="submit" value="取 消" class="spbg buttombg buttombgs f14 lf buttomb"/>

                </dd>
            </dl>
        </div>
    </form>
    <!-- main end-->
    <!-- footer begin-->

</div>
<!--footer end-->

</div>
</body>
</html>
