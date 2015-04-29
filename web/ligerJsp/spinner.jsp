<%@ page language="java" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title></title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <link rel="stylesheet" type="text/css" href="css/ligerUI/ligerui-all.css">
    <script type="text/javascript" src="js/jQuery/jquery-1.3.2.min.js" ></script>
    <script type="text/javascript" src="js/ligerUI/base.js" ></script>
    <script type="text/javascript" src="js/ligerUI/ligerSpinner.js"></script>

    <script type="text/javascript">

        $(function () {
            $("#txt1").ligerSpinner({ height: 28});
            $("#txt2").ligerSpinner({ height: 28, type: 'time' });
            $("#txt3").ligerSpinner({ height: 28, type: 'int',isNegative:false });
            //$("#txt4").ligerSpinner({ height: 28, type: 'time' });
        });

    </script>
</head>

<body>
    <h3>示例一：浮点数(默认)</h3>
    <input id="txt1" type="text" value="3" />
    <br />
    <h3>示例二：整数</h3>
    <input id="txt2" type="text" value="2.3" />
    <br />
    <h3>示例三：非负整数</h3>
    <input id="txt3" type="text" value="3" />
    <br />
    <!--    <h3>示例四：时间</h3>
        <input id="txt4" type="text"/>
        <br />-->

    <div style="display:none;">

</div>
</body>
</html>