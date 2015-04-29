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
    <link href="css/ligerUI/Aqua/css/ligerui-all.css" rel="stylesheet" type="text/css" />
    <script src="js/jQuery/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/ligerUI/ligerui.all.js"></script>

    <script type="text/javascript">
        var grid = null;
        $(function () {
            grid = $("#maingrid4").ligerGrid({
                columns: [
                    { display: '主键', name: 'CustomerID', align: 'left', width:'25%'},
                    { display: '公司名', name: 'CompanyName', minWidth: 60 ,width:'25%',
                        render:function(rowData){
                            if(rowData.City == 'xm'){
                                return "<span style='color:red'>"+rowData.CompanyName+"</span>";
                            }
                        }},
                    { display: '联系名', name: 'ContactName', width: 50,align:'left',width:'25%' },
                    { display: '城市', name: 'City' ,width:'25%'}
                ],
                pageSize:30,where : f_getWhere(),
                url : 'test/departmentAction!getDataForPage',
                width: '100%', height:'100%'
            });

            $("#pageloading").hide();
        });
        function f_search()
        {
            grid.options.data = $.extend(true, {}, CustomersData);
            grid.loadData(f_getWhere());
        }
        function f_getWhere()
        {
            if (!grid) return null;
            var clause = function (rowdata, rowindex)
            {
                var key = $("#txtKey").val();
                return rowdata.CustomerID.indexOf(key) > -1;
            };
            return clause;
        }
    </script>
</head>
    <body style="padding:6px; overflow:hidden;">
    <div id="searchbar">
        主键：<input id="txtKey" type="text" />
        <input id="btnOK" type="button" value="button" onclick="f_search()" />
    </div>
    <div id="maingrid4" style="margin:0; padding:0"></div>

    <div style="display:none;">
        <!-- g data total ttt -->
    </div>

    </body>
</html>