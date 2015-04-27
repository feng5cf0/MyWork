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
    <script type="text/javascript" src="js/ligerUI/ligerDateEditor.js"></script>

    <script type="text/javascript">
        $(function ()
        {
            $("#txt1").ligerDateEditor({ showTime: true, label: '带时间', labelWidth: 100, labelAlign: 'left' });

            $("#txt2").ligerDateEditor({ label: '测试只读', labelWidth: 100, labelAlign: 'right', initValue: '2011-03-07' });

            $("#txt3").ligerDateEditor(
                    {

                        format: "MM/dd/yyyy",
                        label: '格式化日期',
                        labelWidth: 100,
                        labelAlign: 'center',
                        cancelable : false
                    });


            $("#txt4").ligerDateEditor();


            $(".btn").click(function ()
            {
                alert("txt1:" + $("#txt1").val());
                alert("txt2:" + $("#txt2").val());
            });

            $("#txt1").change(function ()
            {
                $(".message").html("txt1 value change:" + $("#txt1").val())
            });

            $(".btn2").click(function ()
            {
                $("#txt2").ligerGetDateEditorManager().setDisabled();
            });
            $(".btn3").click(function ()
            {
                $("#txt2").ligerGetDateEditorManager().setEnabled();
            });
            $(".btn4").click(function ()
            {
                alert($("#txt3").ligerGetDateEditorManager().getValue());
            });
            $(".btn5").click(function ()
            {
                $("#txt3").ligerGetDateEditorManager().setValue('2011-03-07');
            });
        });
    </script>
</head>

<body>
    <h3>示例一：不选择时间</h3>
    <input type="text" id="txt2" />
    <br />
    <h3>示例二：选择时间</h3>
    <input type="text" id="txt1" />
    <br />
    <h3>示例三：格式化时间：</h3>
    <input type="text" id="txt3" />
    <br />
    <h3>示例四：选择时间 </h3>
    <input type="text" id="txt4" />


    <br />
    <a class="l-button btn"  >获取值</a>
    <br />
    <a class="l-button btn4"  >获取值2</a>
    <br />
    <a class="l-button btn5"  >设置值</a>
    <br />
    <a class="l-button btn2">设置只读</a>
    <br />
    <a class="l-button btn3">取消只读</a>

    <a class="message"  ></a>
</body>
</html>