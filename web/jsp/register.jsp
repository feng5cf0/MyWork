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

    <%@include file="templeJsp.jsp"%>
    <link rel="stylesheet" type="text/css" href="css/ligerUI/gray/all.css">
    <script type="text/javascript" src="js/jQuery/validator/jquery.validate.min.js"></script>
    <script type="text/javascript" src="js/jQuery/validator/jquery.metadata.js"></script>
    <script type="text/javascript" src="js/jQuery/validator/messages_cn.js"></script>

    <style type="text/css">
        body{ font-size:12px;}
        .l-table-edit {}
        .l-table-edit-td{ padding:4px;}
        .l-button-submit,.l-button-test{width:80px; float:left; margin-left:10px; padding-bottom:2px;}
    </style>

    <script type="text/javascript">
        var eee;
        $(function ()
        {
            $.validator.addMethod(
                    "notnull",
                    function (value, element, regexp)
                    {
                        if (!value) return true;
                        return !$(element).hasClass("l-text-field-null");
                    },
                    "不能为空"
            );

            $.metadata.setType("attr", "validate");

            var v = $("form").validate({
                //调试状态，不会提交数据的
                debug: true,
                errorPlacement: function (lable, element)
                {

                    if (element.hasClass("l-textarea"))
                    {
                        element.addClass("l-textarea-invalid");
                    }
                    else if (element.hasClass("l-text-field"))
                    {
                        element.parent().addClass("l-text-invalid");
                    }
                    $(element).removeAttr("title").ligerHideTip();
                    $(element).attr("title", lable.html()).ligerTip();
                },
                success: function (lable)
                {
                    var element = $("#" + lable.attr("for"));
                    if (element.hasClass("l-textarea"))
                    {
                        element.removeClass("l-textarea-invalid");
                    }
                    else if (element.hasClass("l-text-field"))
                    {
                        element.parent().removeClass("l-text-invalid");
                    }
                    $(element).removeAttr("title").ligerHideTip();
                },
                submitHandler: function ()
                {
                    alert("Submitted!");
                }

            });
            $("form").ligerForm();
            $(".l-button-test").click(function ()
            {
                alert(v.element($("#txtName")));
            });

        });
    </script>

</head>
<body style="padding:10px">
    <div>
        <form name="form1" method="post"  id="form1">
            <table cellpadding="0" cellspacing="0" class="l-table-edit" >
                <tr>
                    <td align="right" class="l-table-edit-td">名字:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px" ><input name="txtName" type="text" id="txtName" ltype="text" validate="{required:true,minlength:3,maxlength:10,notnull:true}" nullText="不能为空!"/></td>
                    <td align="left"></td>
                </tr>

                <tr>
                    <td align="right" class="l-table-edit-td" valign="top">性别:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px">
                        <input id="rbtnl_0" type="radio" name="rbtnl" value="1" checked="checked" /><label for="rbtnl_0">男</label> <input id="rbtnl_1" type="radio" name="rbtnl" value="2" /><label for="rbtnl_1">女</label>
                    </td>
                    <td align="left"></td>
                </tr>

                <tr>
                    <td align="right" class="l-table-edit-td">Email:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px"><input name="txtEmail" type="text" id="txtEmail" ltype="text" validate="{required:true,email:true}" /></td>
                    <td align="left"></td>
                </tr>
                <tr>
                    <td align="right" class="l-table-edit-td" valign="top">爱好:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px">
                        <input id="CheckBoxList1_0" type="checkbox" name="CheckBoxList1$0" checked="checked" /><label for="CheckBoxList1_0">篮球</label><br /><input id="CheckBoxList1_1" type="checkbox" name="CheckBoxList1$1" /><label for="CheckBoxList1_1">网球</label> <br /><input id="CheckBox1" type="checkbox" name="CheckBoxList1$1" /><label for="CheckBoxList1_1">足球</label>
                    </td><td align="left"></td>
                </tr>

                <tr>
                    <td align="right" class="l-table-edit-td">入职日期:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px">
                        <input name="txtDate" type="text" id="txtDate" ltype="date" validate="{required:true}" />
                    </td><td align="left"></td>
                </tr>
                <tr>
                    <td align="right" class="l-table-edit-td">年龄:</td>
                    <td align="left" class="l-table-edit-td" style="width:160px">
                        <input name="txtAge" type="text" id="txtAge" ltype='spinner' ligerui="{type:'int'}" value="20" class="required" validate="{digits:true,min:1,max:100}" />
                    </td><td align="left"></td>
                </tr>
                <tr>
                    <td align="right" class="l-table-edit-td">部门:</td>
                    <td align="left" class="l-table-edit-td" style="width:180px">
                        <select name="ddlDepart" id="ddlDepart" ltype="select">
                            <option value="1">主席</option>
                            <option value="2">研发中心</option>
                            <option value="3">销售部</option>
                            <option value="4">市场部</option>
                            <option value="5">顾问组</option>
                        </select>
                    </td><td align="left"></td>
                </tr>
                <tr>
                    <td align="right" class="l-table-edit-td">地址:</td>
                    <td align="left" class="l-table-edit-td" colspan="2">
                        <textarea cols="100" rows="4" class="l-textarea" id="address" style="width:400px" validate="{required:true}" ></textarea>
                    </td> <td align="left"></td>
                </tr>
            </table>
            <br />
            <input type="submit" value="提交" id="Button1" class="l-button l-button-submit" />
            <input type="button" value="测试" class="l-button l-button-test"/>
        </form>
    </div>
</body>
</html>