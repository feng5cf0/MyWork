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
        var tree;
        $(function ()
        {
            tree = $("#tree1").ligerTree({
                //整个树的宽度  对单个节点无影响
                nodeWidth: 200,
                //是否复选框,复选框可以进行选中 以及多选，无复选框只能点击链接，最后一个节点
                checkbox:true,
                idFieldName: 'id',
                delay: [1,2],//1级和2级都延迟
                slide: false,
                onAfterAppend: function ()
                {
                },
                onBeforeAppend: function ()
                {
                }
            });

            showNodesCountMessage();
        });

        $(".nodescount").live('change', function ()
        {
            showNodesCountMessage();
        });


        function f_load()
        {
            var data = createData();
            var op = {
                isExpand: parseInt($("#expandLevel").val()),
                delay: []
            };
            $(".delayChk").each(function ()
            {
                if (this.checked)
                {
                    op.delay.push(parseInt(this.value));
                }
            });
            if (!op.delay.length) op.delay = false;
            tree.set(op);
            var time1 = new Date();
            tree.set('data', data);
            var time2 = new Date();
            var showed = $("#tree1 li").length;
            var h = "节点总数:" + getNodesCount() + ",已渲染节点总数:" + showed + ",耗时:" + (time2 - time1) + "毫秒";
            $("#message").append("<p>" + h + "</p>");
            alert(h);
        }
        function createData(e)
        {
            e = e || {};
            var level = e.level || 1,
                    prev = e.prev || "",
                    count = $("#nodescount" + level).val(),
                    data = [],
                    nextLevelNodesCount = $("#nodescount" + (level + 1)).val();
            var hasChildren = false;
            if (nextLevelNodesCount && nextLevelNodesCount != "0")
            {
                hasChildren = true;
            }
            for (var i = 0, l = parseInt(count) ; i < l ; i++)
            {
                var num = i + 1, id = prev + num;
                var o = {
                    text: "node" + id
                };
                if (hasChildren)
                {
                    o.children = createData({
                        level: level + 1,
                        prev: id + "-"
                    });
                }
                data.push(o);
            }
            return data;
        }

        function getNodesCount(level)
        {
            if (level == null) level = getMaxLevel();
            if (level == 0) return 0;
            var sum = 1;
            for (var i = 1; i <= level; i++)
            {
                var value =  $("#nodescount" + i).val();
                if (value == "0" || !value) continue;
                sum = sum * parseInt(value);
            }
            return sum + getNodesCount(level - 1);
        }
        function getMaxLevel()
        {
            for (var i = 4; i >= 1; i--)
            {
                var value =  $("#nodescount" + i).val();
                if (value == "0" || !value) continue;
                return i;
            }
        }
        function showNodesCountMessage()
        {
            $("#nodesCountMessage").html("总节点数:" + getNodesCount());
        }
    </script>
</head>

    <body>
        <div>
            <span>第一级节点数</span>
                <select id="nodescount1"  class="nodescount">
                    <option>50</option>
                    <option>60</option>
                    <option>70</option>
                    <option>80</option>
                    <option>90</option>
                    <option selected="selected">100</option>
                    <option>150</option>
                    <option>200</option>
                    <option>300</option>
                    <option>400</option>
                    <option>500</option>
                    <option>600</option>
                    <option>700</option>
                    <option>800</option>
                    <option>900</option>
                    <option>1000</option>
                    <option>1500</option>
                    <option>2000</option>
                    <option>3000</option>
                    <option>4000</option>
                    <option>5000</option>
                </select>

            <span>第二级节点数</span>
            <select id="nodescount2"  class="nodescount">
                <option value="0"></option>
                <option selected="selected">10</option>
                <option>20</option>
                <option>30</option>
                <option>40</option>
                <option>50</option>
                <option>60</option>
                <option>70</option>
                <option>80</option>
                <option>90</option>
                <option>100</option>
                <option>150</option>
                <option>200</option>
                <option>300</option>
                <option>400</option>
                <option>500</option>
            </select>

            <span>第三级节点数</span>
            <select id="nodescount3"  class="nodescount">
                <option value="0"></option>
                <option selected="selected">10</option>
                <option>20</option>
                <option>30</option>
                <option>40</option>
                <option>50</option>
                <option>60</option>
                <option>70</option>
                <option>80</option>
                <option>90</option>
                <option>100</option>
            </select>

            <span>第四级节点数</span>
            <select id="nodescount4" class="nodescount">
                <option value="0"></option>
                <option>10</option>
                <option>20</option>
                <option>30</option>
                <option>40</option>
                <option>50</option>
                <option>50</option>
                <option>60</option>
                <option>70</option>
                <option>80</option>
                <option>90</option>
                <option>100</option>
            </select>
            <span id="nodesCountMessage"></span>
            <span>展开</span>
            <select id="expandLevel">
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
            </select>
            <span>级</span>

            <span>延迟加载</span>
            <label for="delayChk1">1</label><input type="checkbox" value="1" checked="checked" id="delayChk1" class="delayChk" />
            <label for="delayChk2">2</label><input type="checkbox" value="2" checked="checked" id="delayChk2" class="delayChk"/>
            <label for="delayChk3">3</label><input type="checkbox" value="3" checked="checked" id="delayChk3" class="delayChk"/>

            <input type="button" value="确定" onclick="f_load()" style="padding:0px 5px;" />
        </div>
        <div style="width:300px; height:400px; margin:10px; position: relative; border:1px solid #ccc; overflow:auto;">
            <ul id="tree1"></ul>
        </div>
        <div id="help">
        </div>
        <div id="message">

        </div>
        <div style="display:none">

        </div>
    </body>
</html>