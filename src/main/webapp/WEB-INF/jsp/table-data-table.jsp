<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description"
          content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>Data Table - Vali Admin</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css"
          href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .error {
            color: red;
        }
    </style>
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="index.html">Vali</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar"
                                    aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <li class="app-search">
            <input class="app-search__input" type="search" placeholder="Search">
            <button class="app-search__button"><i class="fa fa-search"></i></button>
        </li>
        <!--Notification Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Show notifications"><i
                class="fa fa-bell-o fa-lg"></i></a>
            <ul class="app-notification dropdown-menu dropdown-menu-right">
                <li class="app-notification__title">You have 4 new notifications.</li>
                <div class="app-notification__content">
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-primary"></i><i
                            class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Lisa sent you a mail</p>
                            <p class="app-notification__meta">2 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-danger"></i><i
                            class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Mail server not working</p>
                            <p class="app-notification__meta">5 min ago</p>
                        </div>
                    </a></li>
                    <li><a class="app-notification__item" href="javascript:;"><span class="app-notification__icon"><span
                            class="fa-stack fa-lg"><i class="fa fa-circle fa-stack-2x text-success"></i><i
                            class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                        <div>
                            <p class="app-notification__message">Transaction complete</p>
                            <p class="app-notification__meta">2 days ago</p>
                        </div>
                    </a></li>
                    <div class="app-notification__content">
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-primary"></i><i
                                class="fa fa-envelope fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Lisa sent you a mail</p>
                                <p class="app-notification__meta">2 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-danger"></i><i
                                class="fa fa-hdd-o fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Mail server not working</p>
                                <p class="app-notification__meta">5 min ago</p>
                            </div>
                        </a></li>
                        <li><a class="app-notification__item" href="javascript:;"><span
                                class="app-notification__icon"><span class="fa-stack fa-lg"><i
                                class="fa fa-circle fa-stack-2x text-success"></i><i
                                class="fa fa-money fa-stack-1x fa-inverse"></i></span></span>
                            <div>
                                <p class="app-notification__message">Transaction complete</p>
                                <p class="app-notification__meta">2 days ago</p>
                            </div>
                        </a></li>
                    </div>
                </div>
                <li class="app-notification__footer"><a href="#">See all notifications.</a></li>
            </ul>
        </li>
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i
                class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-cog fa-lg"></i> Settings</a></li>
                <li><a class="dropdown-item" href="page-user.html"><i class="fa fa-user fa-lg"></i> Profile</a></li>
                <li><a class="dropdown-item" href="page-login.html"><i class="fa fa-sign-out fa-lg"></i> Logout</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user"><img class="app-sidebar__user-avatar"
                                        src="https://s3.amazonaws.com/uifaces/faces/twitter/jsa/48.jpg"
                                        alt="User Image">
        <div>
            <p class="app-sidebar__user-name">John Doe</p>
            <p class="app-sidebar__user-designation">Frontend Developer</p>
        </div>
    </div>
    <ul class="app-menu">
        <li><a class="app-menu__item" href="index.html"><i class="app-menu__icon fa fa-dashboard"></i><span
                class="app-menu__label">Dashboard</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">UI Elements</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="bootstrap-components.html"><i class="icon fa fa-circle-o"></i>
                    Bootstrap Elements</a></li>
                <li><a class="treeview-item" href="https://fontawesome.com/v4.7.0/icons/" target="_blank"
                       rel="noopener"><i class="icon fa fa-circle-o"></i> Font Icons</a></li>
                <li><a class="treeview-item" href="ui-cards.html"><i class="icon fa fa-circle-o"></i> Cards</a></li>
                <li><a class="treeview-item" href="widgets.html"><i class="icon fa fa-circle-o"></i> Widgets</a></li>
            </ul>
        </li>
        <li><a class="app-menu__item" href="charts.html"><i class="app-menu__icon fa fa-pie-chart"></i><span
                class="app-menu__label">Charts</span></a></li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-edit"></i><span class="app-menu__label">Forms</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="form-components.html"><i class="icon fa fa-circle-o"></i> Form
                    Components</a></li>
                <li><a class="treeview-item" href="form-custom.html"><i class="icon fa fa-circle-o"></i> Custom
                    Components</a></li>
                <li><a class="treeview-item" href="form-samples.html"><i class="icon fa fa-circle-o"></i> Form
                    Samples</a></li>
                <li><a class="treeview-item" href="form-notifications.html"><i class="icon fa fa-circle-o"></i> Form
                    Notifications</a></li>
            </ul>
        </li>
        <li class="treeview is-expanded"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-th-list"></i><span class="app-menu__label">Tables</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="table-basic.html"><i class="icon fa fa-circle-o"></i> Basic
                    Tables</a></li>
                <li><a class="treeview-item active" href="table-data-table.jsp"><i class="icon fa fa-circle-o"></i> Data
                    Tables</a></li>
            </ul>
        </li>
        <li class="treeview"><a class="app-menu__item" href="#" data-toggle="treeview"><i
                class="app-menu__icon fa fa-file-text"></i><span class="app-menu__label">Pages</span><i
                class="treeview-indicator fa fa-angle-right"></i></a>
            <ul class="treeview-menu">
                <li><a class="treeview-item" href="blank-page.html"><i class="icon fa fa-circle-o"></i> Blank Page</a>
                </li>
                <li><a class="treeview-item" href="page-login.html"><i class="icon fa fa-circle-o"></i> Login Page</a>
                </li>
                <li><a class="treeview-item" href="page-lockscreen.html"><i class="icon fa fa-circle-o"></i> Lockscreen
                    Page</a></li>
                <li><a class="treeview-item" href="page-user.html"><i class="icon fa fa-circle-o"></i> User Page</a>
                </li>
                <li><a class="treeview-item" href="page-invoice.html"><i class="icon fa fa-circle-o"></i> Invoice
                    Page</a></li>
                <li><a class="treeview-item" href="page-calendar.html"><i class="icon fa fa-circle-o"></i> Calendar Page</a>
                </li>
                <li><a class="treeview-item" href="page-mailbox.html"><i class="icon fa fa-circle-o"></i> Mailbox</a>
                </li>
                <li><a class="treeview-item" href="page-error.html"><i class="icon fa fa-circle-o"></i> Error Page</a>
                </li>
            </ul>
        </li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-th-list"></i> 欢迎来到用户管理系统</h1>
            <p>Welcome to Management System</p>
        </div>
        <ul class="app-breadcrumb breadcrumb side">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item">Tables</li>
            <li class="breadcrumb-item active"><a href="#">Data Table</a></li>
        </ul>
    </div>
    <div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="myModalTitle">添加用户</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <div class="modal-body">
                    <form class="form-horizontal" id="myForm">
                        <input id="id" name="id" type="hidden">
                        <div class="form-group">
                            <label for="username" class="col-sm-2 control-label">用户名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="username" name="username"
                                       placeholder="请输入用户名">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-2 control-label">密码</label>
                            <div class="col-sm-10">
                                <input type="password" class="form-control" id="password" name="password"
                                       placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="name" class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="name" name="name" placeholder="请输入真实姓名">
                            </div>
                        </div>
                        <div class="form-group" style="padding-left: 15px">
                            <label>性别</label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex1" value="1"> 男
                            </label>
                            <label class="radio-inline">
                                <input type="radio" name="sex" id="sex2" value="0"> 女
                            </label>
                        </div>
                        <div class="form-group">
                            <label for="age" class="col-sm-2 control-labe">年龄</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="age" name="age" placeholder="请输入年龄">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="phone" class="col-sm-2 control-label">电话</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="phone" name="phone" placeholder="请输入电话">
                            </div>
                        </div>
                        <%--<div class="form-group">--%>
                            <%--<label for="email" class="col-sm-2 control-label">邮箱</label>--%>
                            <%--<div class="col-sm-10">--%>
                                <%--<input type="email" class="form-control" id="email" name="email" placeholder="Email">--%>
                            <%--</div>--%>
                        <%--</div>--%>
                        <div class="form-group">
                            <label for="address" class="col-sm-2 control-label">地址</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" id="address" name="address" placeholder="请输入地址">
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal" id="add_user_form_close">
                                关闭
                            </button>
                            <button type="submit" class="btn btn-primary" id="add_user_form_save">保存</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <button id="createUser" class="btn btn-default" type="button">新增</button>
                    <input id="deleteUser" class="btn btn-default" type="button" value="删除">
                    <table id="mytable"></table>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<!-- Page specific javascripts-->
<!-- Data table plugin-->
<%--<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>--%>
<%--<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>--%>
<%--<script type="text/javascript">$('#sampleTable').DataTable();</script>--%>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script src="js/bootstrap-table-zh-CN.min.js"></script>
<script type="text/javascript">
    $("#myForm").validate({
        rules: {
            username: "required",
            password:{required: true, minlength: 6, maxlength: 20},
            name: "required",
            age: "required",
            sex: "required",
            phone: {isphoneNum: true},
            email: {email: true}
        },
        messages: {
            username: "用户名不能为空",
            password:{required: "请输入密码", minlength: "密码长度应在6-20之间", maxlength: "密码长度应在6-20之间"},
            name: "姓名不能为空",
            age: "年龄不能为空",
            sex: "性别不能为空",
            phone: {isphoneNum: "请输入正确的手机号"},
            email: {email: "请输入正确的邮箱"}
        },
        submitHandler: function () {
            var user_data = $("#myForm").serialize();
            var method = $("#myModalTitle").text();
            if (method == "添加用户") {
                var url = "user/createUser";
                $.ajax({
                    url:url,
                    dataType:"text",
                    type:"POST",
                    data:user_data,
                    success:function (msg) {
                        alert("添加成功");
                        $("#add_user_form_close").trigger("click");
                        $("#mytable").bootstrapTable("refresh");
                    }
                });
            } else {
                var url = "user/editUser";
                if(confirm("确定编辑吗？")){
                    $.ajax({
                        url:url,
                        dataType:"text",
                        type:"POST",
                        data:user_data,
                        success:function (msg) {
                            $("#add_user_form_close").trigger("click");
                            $("#mytable").bootstrapTable("refresh");
                        }
                    });
                }
            }
        }
    });

    //自定义手机号验证
    jQuery.validator.addMethod("isphoneNum", function (value, element) {
        debugger
        var length = value.length;
        var mobile = /^1[3|5|8]{1}[0-9]{9}$/;
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请正确填写您的手机号码");

    $("#createUser").click(function () {
        $("#myModalTitle").text("添加用户");
        //数据回显
        $("#id").val("");
        $("#username").val("");
        $("#password").val("");
        $("#name").val("");
        $("#sex1").attr("checked", false);
        $("#sex2").attr("checked", false);
        $("#age").val("");
        $("#phone").val("");
        $("#email").val("");
        $("#address").val("");
        $("#myModal").modal({
            backdrop: "static"
        });
    });

    //批量删除
    $("#deleteUser").click(function () {
        var idList = new Array();
        var rows = $("#mytable").bootstrapTable("getSelections");
        if(rows.length == 0){
            alert("请至少选择一条数据！");
            return;
        }
        for(var i = 0;i<rows.length;i++){
            idList.push(rows[i].id);
        }
        // $(rows).each(function (index) {
        //     idList.push(this.id);
        // });
        // var nickname = "";
        var url = "user/deleteUsers";
        if(confirm("确定要删除吗？")){
            $.ajax({
                url: url,
                type: 'POST',
                dataType: "text",
                contentType: "application/json",
                data: JSON.stringify(idList),
                // data:{ids:idList},
                success: function (value) {
                    $("#mytable").bootstrapTable("refresh");
                }
            });
        }
    });
    $(function () {
        //初始化表格
        $("#mytable").bootstrapTable({
            //列参数
            columns: [
                {field: 'state', checkbox: true, align:'center'},
                {
                    title: '序号', formatter: function (value, row, index) {
                        return index + 1;
                    },align:'center'
                },
                {field: 'name', title: '姓名', sortable: true, align: 'center'},
                {
                    field: 'sex',
                    title: '性别',
                    sortable: true,
                    align: 'center',
                    formatter: function (value, row, index) {
                        if (row.sex == 1) {
                            value = "男";
                        } else {
                            value = "女";
                        }
                        return value;
                    }
                },
                {field: 'age', title: '年龄', sortable: true, align: 'center'},
                {field: 'phone', title: '手机', sortable: true, align: 'center'},
                // {field: 'email', title: '邮箱', sortable: true, align: 'center'},
                {field: 'address', title: '地址', sortable: true, align: 'center'},
                {
                    field: 'action',
                    title: '操作',
                    // halign: 'center',
                    align: 'center',
                    formatter: function actionFormatter(value, row, index) {
                        return [
                            '<button id="edit" type="button" class="edit"  style="background-color:aliceblue">编辑</button>',
                            '<button id="delete" type="button" class="delete" onclick="deleteUser(row.id)" style="background-color: aliceblue">删除</button>'
                        ].join('');
                    },
                    events: 'actionEvents',
                    clickToSelect: false
                }],
            //要绑定的数据
            //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
            //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
            //请求地址
            striped: true,
            url: 'users',
            //请求方式
            method: 'post',
//              data: [{ id: 1, name: 'Item 1', price: '$1' }, { id: 2, name: 'Item 2', price: '$2' }, { id: 3, name: 'Item 3', price: '$3' }],
            //打开搜索框
            search: true,
            showColumns: true,
            //按回车键后进行搜索
            searchOnEnterKey: true,
            showRefresh: true,
            showPaginationSwitch:true,
            clickToSelect: true,
            //开启分页功能
            pagination: true,
            //第一次加载第一页
            pageNumber: 1,
            //每页显示条数
            pageSize: 7,
            //分页方式：默认客户端分页，修改为服务端分页
            sidePagination: 'server',
            pageList: [7, 10, 25]
        });

        window.actionEvents = {
            //编辑
            'click .edit': function (e, value, row, index) {
                $.post(
                    "${pageContext.request.contextPath}/user/findUser",
                    {'id': row.id},
                    function (msg) {
                        $("#myModalTitle").text("编辑用户");
                        //数据回显
                        $("#id").val(msg.id);
                        $("#username").val(msg.username);
                        $("#password").val(msg.password);
                        $("#name").val(msg.name);
                        if (msg.sex == 1) {
                            $("#sex1").attr("checked", true);
                        } else {
                            $("#sex2").attr("checked", true);
                        }
                        $("#age").val(msg.age);
                        $("#phone").val(msg.phone);
                        $("#email").val(msg.email);
                        $("#address").val(msg.address);
                        //弹出模态框
                        $("#myModal").modal();
                    },
                    "json"
                );
            },
            'click .delete': function (e, value, row, index) {
                if (confirm("确认删除吗？")) {
                    $.post(
                        "${pageContext.request.contextPath}/user/deleteUser",
                        {'id': row.id},
                        function (msg) {
                            if (msg) {
                                $("#mytable").bootstrapTable('refresh');
                            }
                        },
                        "text"
                    );
                }
            }
        }
    });
</script>
<!-- Google analytics script-->
<script type="text/javascript">
    if (document.location.hostname == 'pratikborsadiya.in') {
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r;
            i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date();
            a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
            a.async = 1;
            a.src = g;
            m.parentNode.insertBefore(a, m)
        })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>