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
    <link type="text/css" rel="stylesheet" href="css/ligerUI/ligerui-all.css">

    <script type="text/javascript" src="js/jQuery/jquery-1.3.2.min.js" ></script>
    <script type="text/javascript" src="js/ligerUI/base.js" ></script>
    <script type="text/javascript" src="js/ligerUI/ligerTextBox.js"></script>

    <script type="text/javascript">
        $(function ()
        {

            $("#txt1").ligerTextBox({ nullText: '不能为空', currency: true });

            $("#txt1").ligerTextBox({ nullText: '不能为空222' ,label:'LABEL44'});

            $("#txt2").ligerTextBox({ initValue: '不能为空' ,label:'设置初始值', labelWidth:100, labelAlign:'right'});
            $("#btnSet").bind('click',function(){
                $("#txt1").ligerGetTextBoxManager().setValue('设置值');
            });
            $("#btnGet").bind('click',function(){
                alert($("#txt1").ligerGetTextBoxManager().getValue());
            });
            $("#btnDisabled").bind('click',function(){
                $("#txt1").ligerGetTextBoxManager().setDisabled();
            });
            $("#btnEnabled").bind('click',function(){
                $("#txt1").ligerGetTextBoxManager().setEnabled();
            });
        });
    </script>
</head>

<body>
    <input type="button" id="btnSet" value="设置值" />
    <input type="button" id="btnGet" value="获取值" />
    <input type="button" id="btnDisabled" value="设置只读" />
    <input type="button" id="btnEnabled" value="取消只读" />
    <div>
        <input type="text" id="txt1" value="" style="width:200px"/>
    </div>
    <div>
        <input type="text" id="txt2" value=""/>
    </div>
    <div style="display:none;"></div>
</body>
</html>