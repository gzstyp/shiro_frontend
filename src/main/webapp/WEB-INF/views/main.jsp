<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>后台管理系统</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>
    <!--[if !IE]> -->
    <link rel="stylesheet" href="/css/pace.css"/>
    <script data-pace-options='{ "ajax": true, "document": true, "eventLag": false, "elements": false }' src="/js/pace.js"></script>
    <!-- <![endif]-->
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="/css/bootstrap.css"/>
    <link rel="stylesheet" href="/css/font-awesome.min.css"/>
    <!-- text fonts -->
    <link rel="stylesheet" href="/css/ace-fonts.css"/>
    <!-- ace styles -->
    <link rel="stylesheet" href="/css/ace.css" class="ace-main-stylesheet" id="main-ace-style"/>
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-part2.css" class="ace-main-stylesheet"/>
    <![endif]-->
    <!--[if lte IE 9]>
    <link rel="stylesheet" href="/css/ace-ie.css"/>
    <![endif]-->
    <!-- ace settings handler -->
    <script src="/js/ace-extra.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lte IE 8]>
    <script src="/js/html5shiv.js"></script>
    <script src="/js/respond.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="/js/checkbox/checkbox-radio.css" />
    <link rel="stylesheet" type="text/css" href="/js/zTree/css/bootstrapztree.css"/>
</head>
<body class="no-skin">
<!-- #section:basics/navbar.layout -->
<div id="navbar" class="navbar navbar-default ace-save-state">
    <div class="navbar-container ace-save-state" id="navbar-container">
        <!-- #section:basics/sidebar.mobile.toggle -->
        <button type="button" title="显示导航菜单" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
            <span class="sr-only">显示导航菜单</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <!-- /section:basics/sidebar.mobile.toggle -->
        <div class="navbar-header pull-left">
            <!-- #section:basics/navbar.layout.brand -->
            <a href="javascript:;" class="navbar-brand">
                <small>
                    <i class="fa fa-leaf"></i>
                    云学府智慧校园
                </small>
            </a>
            <!-- /section:basics/navbar.layout.brand -->
            <!-- #section:basics/navbar.toggle -->
            <!-- /section:basics/navbar.toggle -->
        </div>
        <!-- #section:basics/navbar.dropdown -->
        <div class="navbar-buttons navbar-header pull-right" role="navigation">
            <ul class="nav ace-nav">
                <li class="grey">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">
                        <i class="ace-icon fa fa-tasks"></i>
                        <span class="badge badge-grey">4</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-check"></i>
                            4 Tasks to complete
                        </li>
                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">Software Update</span>
                                            <span class="pull-right">65%</span>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width:65%" class="progress-bar"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">Hardware Upgrade</span>
                                            <span class="pull-right">35%</span>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width:35%" class="progress-bar progress-bar-danger"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">Unit Testing</span>
                                            <span class="pull-right">15%</span>
                                        </div>
                                        <div class="progress progress-mini">
                                            <div style="width:15%" class="progress-bar progress-bar-warning"></div>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">Bug Fixes</span>
                                            <span class="pull-right">90%</span>
                                        </div>
                                        <div class="progress progress-mini progress-striped active">
                                            <div style="width:90%" class="progress-bar progress-bar-success"></div>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-footer">
                            <a href="javascript:;">
                                See tasks with details
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="purple">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">
                        <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                        <span class="badge badge-important">8</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-exclamation-triangle"></i>
                            8 Notifications
                        </li>
                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar navbar-pink">
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
                                                New Comments
                                            </span>
                                            <span class="pull-right badge badge-info">+12</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <i class="btn btn-xs btn-primary fa fa-user"></i>
                                        Bob just signed up as an editor ...
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
                                                暂无订单
                                            </span>
                                            <span class="pull-right badge badge-success">+8</span>
                                        </div>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;">
                                        <div class="clearfix">
                                            <span class="pull-left">
                                                <i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
                                                Followers
                                            </span>
                                            <span class="pull-right badge badge-info">+11</span>
                                        </div>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-footer">
                            <a href="javascript:;">
                                See all notifications
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="green">
                    <a data-toggle="dropdown" class="dropdown-toggle" href="javascript:;">
                        <i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
                        <span class="badge badge-success">5</span>
                    </a>
                    <ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
                        <li class="dropdown-header">
                            <i class="ace-icon fa fa-envelope-o"></i>
                            5 消息
                        </li>
                        <li class="dropdown-content">
                            <ul class="dropdown-menu dropdown-navbar">
                                <li>
                                    <a href="javascript:;" class="clearfix">
                                        <img src="/avatars/avatar.png" class="msg-photo" alt="Alex's Avatar"/>
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Alex:</span>
                                                Ciao sociis natoque penatibus et auctor ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>1分钟之前</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" class="clearfix">
                                        <img src="/avatars/avatar3.png" class="msg-photo" alt="Susan's Avatar"/>
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Susan:</span>
                                                Vestibulum id ligula porta felis euismod ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>20 minutes ago</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" class="clearfix">
                                        <img src="/avatars/avatar4.png" class="msg-photo" alt="Bob's Avatar"/>
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Bob:</span>
                                                Nullam quis risus eget urna mollis ornare ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>3:15 pm</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" class="clearfix">
                                        <img src="/avatars/avatar2.png" class="msg-photo" alt="Kate's Avatar"/>
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Kate:</span>
                                                Ciao sociis natoque eget urna mollis ornare ...
                                            </span>
                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>1:33 pm</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="javascript:;" class="clearfix">
                                        <img src="/avatars/avatar5.png" class="msg-photo" alt="Fred's Avatar"/>
                                        <span class="msg-body">
                                            <span class="msg-title">
                                                <span class="blue">Fred:</span>
                                                Vestibulum id penatibus et auctor  ...
                                            </span>

                                            <span class="msg-time">
                                                <i class="ace-icon fa fa-clock-o"></i>
                                                <span>10:09 am</span>
                                            </span>
                                        </span>
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown-footer">
                            <a href="#page/inbox">
                                See all messages
                                <i class="ace-icon fa fa-arrow-right"></i>
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- #section:basics/navbar.user_menu -->
                <li class="light-blue">
                    <a data-toggle="dropdown" href="javascript:;" class="dropdown-toggle">
                        <img class="nav-user-photo" src="/avatars/user.jpg" alt="Jason's Photo"/>
                        <span class="user-info"><small>欢迎</small>${login_user}</span>
                        <i class="ace-icon fa fa-caret-down"></i>
                    </a>
                    <ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
                        <li>
                            <a href="javascript:;">
                                <i class="ace-icon fa fa-cog"></i>
                                设置
                            </a>
                        </li>
                        <li>
                            <a href="#page/profile">
                                <i class="ace-icon fa fa-user"></i>
                                配置
                            </a>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <a href="login.html">
                                <i class="ace-icon fa fa-power-off"></i>
                                退出
                            </a>
                        </li>
                    </ul>
                </li>
                <!-- /section:basics/navbar.user_menu -->
            </ul>
        </div>
        <!-- /section:basics/navbar.dropdown -->
    </div><!-- /.navbar-container -->
</div>
<!-- /section:basics/navbar.layout -->
<div class="main-container" id="main-container">
    <div id="sidebar" class="sidebar responsive ace-save-state">
        <ul class="nav nav-list" id="ulMenus">
            <li class=""><a data-url="welcome.html" href="#welcome.html"><i class="menu-icon glyphicon glyphicon-home"></i><span class="menu-text">欢迎使用</span></a><b class="arrow"></b></li>
            ${menuData}
        </ul>
        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse" title="展开收缩" style="cursor:pointer">
            <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
    </div>
    <div class="main-content">
        <div class="main-content-inner">
            <div class="breadcrumbs" id="breadcrumbs">
                <ul class="breadcrumb">欢迎使用</ul><!-- /.breadcrumb --><!--标题提示-->
            </div>
            <div class="page-content">
                <div class="page-content-area" data-ajax-content="true"></div>
            </div><!-- /.page-content -->
        </div>
    </div><!-- /.main-content -->
    <div class="footer">
        <div class="footer-inner">
            <!-- #section:basics/footer -->
            <div class="footer-content">
                <span class="bigger-120">
                    <span class="blue bolder">Ace</span>
                    Application &copy; 2013-2014
                </span>
                &nbsp; &nbsp;
                <span class="action-buttons">
                    <a href="javascript:;">
                        <i class="ace-icon fa fa-twitter-square light-blue bigger-150"></i>
                    </a>

                    <a href="javascript:;">
                        <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
                    </a>

                    <a href="javascript:;">
                        <i class="ace-icon fa fa-rss-square orange bigger-150"></i>
                    </a>
                </span>
            </div>
            <!-- /section:basics/footer -->
        </div>
    </div>
    <a href="javascript:;" title="返回顶部" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
    </a>
</div><!-- /.main-container -->
<!-- basic scripts -->
<!--[if !IE]> -->
<script src="/js/jquery.js"></script>
<!-- <![endif]-->
<!--[if IE]>
<script src="/js/jquery-1.12.4.min.js"></script>
<![endif]-->
<script type="text/javascript">
    if('ontouchstart' in document.documentElement) document.write("<script src='/js/jquery.mobile.custom.js'>" + "<" + "/script>");
</script>
<script src="/js/jquery.placeholder.min.js"></script>
<script src="/js/bootstrap.js"></script>
<!-- ace scripts -->
<script src="/js/ace/elements.scroller.js"></script>
<script src="/js/ace/elements.fileinput.js"></script>
<script src="/js/ace/elements.typeahead.js"></script>
<script src="/js/ace/elements.wysiwyg.js"></script>
<%--<script src="/js/ace/elements.spinner.js"></script>--%>
<script src="/js/ace/elements.wizard.js"></script>
<script src="/js/ace/elements.aside.js"></script>
<script src="/js/ace/ace.js"></script>
<script src="/js/ace/ace.ajax-content.js"></script>
<script src="/js/ace/ace.touch-drag.js"></script>
<script src="/js/ace/ace.sidebar.js"></script>
<script src="/js/ace/ace.sidebar-scroll-1.js"></script>
<script src="/js/ace/ace.submenu-hover.js"></script>
<script src="/js/ace/ace.widget-box.js"></script>
<%--<script src="/js/ace/ace.settings.js"></script>
<script src="/js/ace/ace.settings-rtl.js"></script>
<script src="/js/ace/ace.settings-skin.js"></script>--%>
<script src="/js/ace/ace.widget-on-reload.js"></script>
<script src="/js/zTree/js/jquery.ztree.core.js"></script>
<script src="/js/zTree/js/jquery.ztree.excheck.js"></script>

<script src="/js/dataTables/jquery.dataTables.js"></script>
<script src="/js/dataTables/jquery.dataTables.bootstrap.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/dataTables.buttons.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.flash.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.html5.js"></script>
<script src="/js/dataTables/extensions/Buttons/js/buttons.print.js"></script>
<script src="/js/dataTables/extensions/Select/js/dataTables.select.js"></script>
<script src="/js/checkbox/jquery-checkbox-radio.js"></script>

<script src="/js/ace/ace.searchbox-autocomplete.js"></script>
<script src="/js/layer/layer.js"></script>
<script src="/js/page.common.js"></script>
<script src="/js/main.js"></script>
<script src="/js/dataTables/datatable.lib.js"></script>
</body>
</html>