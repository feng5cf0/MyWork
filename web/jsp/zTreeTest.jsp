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
    <link rel="stylesheet" type="text/css" href="css/zTree/zTreeStyle/zTreeStyle.css">
    <script type="text/javascript" src="js/jQuery/jquery-1.4.4.min.js"></script>
    <script type="text/javascript" src="js/jQuery/zTree/jquery.ztree.all-3.5.js"></script>

    <script language="JavaScript">
        var setting = {
            view: {
                //dblClickExpand: false,
                expandSpeed: 100 //设置树展开的动画速度
            },
            //获取json数据
            async : {
                enable : true,
                //url : "${projectUtil.getWebRealPath()}/treeview/treeview!zTreeJSON.action", // Ajax 获取数据的 URL 地址
                url : 'test/ztreeAction!getData',
                autoParam : [ "id", "name" ] //ajax提交的时候，传的是id值
            },
            data:{ // 必须使用data
                    simpleData : {
                        enable : true,
                        idKey : "id", // id编号命名
                        pIdKey : "pId", // 父id编号命名
                        rootPId : 0
                    }
            },
            // 回调函数
            //treeId
            callback : {
                onClick : function(event, treeId, treeNode, clickFlag) {
                    if(true) {
                        alert(" 节点id是：" + treeNode.id + ", 节点文本是：" + treeNode.name);
                    }
                },
                //捕获异步加载出现异常错误的事件回调函数 和 成功的回调函数
                onAsyncSuccess : function(event, treeId, treeNode, msg){
                }
            }
        };

        // 过滤函数
        function filter(treeId, parentNode, childNodes) {
            if (!childNodes)
                return null;
            for ( var i = 0, l = childNodes.length; i < l; i++) {
                childNodes[i].name = childNodes[i].name.replace(/\.n/g, '.');
            }
            return childNodes;
        }

        //
        $(document).ready(function() {
            $.fn.zTree.init($("#tree"), setting );
        });
    </script>
</head>

    <body>
        <div id="tree" class="ztree"></div>
    </body>
</html>