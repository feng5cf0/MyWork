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
        <script type="text/java" src="js/ligerUI/ligerRadio.js"></script>

        <script type="text/javascript">
            $(function () {
                //$("#d1 input:radio").ligerRadio();

                $("#btnGet").click(function () {
                    var str = "";
                    $("#d1 input:radio").each(function () {
                        str += this.checked + ",";
                    });
                    alert(str);
                });
            });

        </script>
    </head>
    <body>
        <form>
            <div id="d1">
                <table>
                    <tr><td><input type="radio" value="18-25" name="age" /></td><td>18-25</td></tr>
                    <tr><td><input type="radio" value="26-35" name="age" /></td><td>26-35</td></tr>
                    <tr><td><input type="radio" value="36-45" name="age" /></td><td>36-45</td></tr>
                </table>
            </div>

            <input type="button" id="btnGet" value="获取值" class="l-button"/>
        </form>
    </body>
</html>