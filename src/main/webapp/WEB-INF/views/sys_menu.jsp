<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<div class="row">
    <div class="col-xs-12">
        <!-- PAGE CONTENT BEGINS -->
        <div class="row">
            <div class="col-xs-12">
                <div class="clearfix">
                    <table class="no-border" style="display:inline">
                        <tr>
                            <td class="hidden-480" style="padding: 0px 6px;">菜单类型</td>
                            <td class="hidden-480">
                                <div class="btn-group">
                                    <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle">
                                        <span id="menuShow">选择类型</span>
                                        <i class="ace-icon fa fa-angle-down"></i>
                                    </button>
                                    <ul class="dropdown-menu" style="width:99px;min-width:90px;">
                                        <li>
                                            <a href="javascript:;" id="choiceType">选择类型</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceNav">导航菜单</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceBtn">普通按钮</a>
                                        </li>
                                        <li>
                                            <a href="javascript:;" id="choiceRow">行内按钮</a>
                                        </li>
                                    </ul>
                                    <input id="key_type" type="hidden">
                                </div>
                            </td>
                            <td style="padding: 0px 6px;">
                                菜单名称
                            </td>
                            <td>
                                <div class="input-group">
                                    <input type="text" id="key_name" class="form-control search-query" placeholder="菜单名称" style="width:140px"/>
                                </div>
                            </td>
                            <td class="hidden-480" style="padding: 0px 6px;">
                                父级菜单
                            </td>
                            <td>
                                <div class="input-group">
                                    <input type="text" id="key_pName" class="form-control search-query hidden-480" placeholder="父级菜单" style="width:140px"/>
                                    <span class="input-group-btn">
                                    <button type="button" class="btn btn-inverse btn-white" id="btnSearch">
                                        <span class="ace-icon fa fa-search bigger-110"></span>
                                        搜索
                                    </button>
                                </span>
                                </div>
                            </td>
                            <td>
                                <div class="input-group">
                                <span class="input-group-btn">
                                    <button type="button" class="btn btn-inverse btn-white" id="btnAdd">
                                        <span class="ace-icon glyphicon glyphicon-plus bigger-110"></span>
                                        添加
                                    </button>
                                </span>
                                </div>
                            </td>
                        </tr>
                    </table>
                    <div class="hidden-480 pull-right tableTools-container"></div>
                </div>
                <table id="tableListMenu" class="table table-striped table-bordered table-hover"></table>
            </div>
        </div>
        <!-- PAGE CONTENT ENDS -->
    </div>
</div>
<div id="div_menu_edit" style="display:none;padding:4px 0px;">
    <form class="form-horizontal" id="form_menu_edit" role="form">
        <label class="col-sm-3 control-label no-padding-right" for="name"><div class="hr-1"></div>菜单名称</label>
        <div class="col-sm-7">
            <input type="text" id="name" placeholder="菜单名称" class="form-control"/>
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="url"><div class="hr-4"></div>菜单url路径</label>
        <div class="col-sm-7"><div class="hr-4"></div><%--input--%>
            <input type="text" id="url" placeholder="菜单url路径;注意命名规则方便管理;不能重复" class="form-control" />
        </div>
        <label class="col-sm-3 control-label no-padding-right"><div class="hr-4"></div>菜单类型</label>
        <div class="col-sm-7">
            <div class="hr-4"></div><%--换行符,hr-4是高度--%>
            <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle col-sm-12">
                <span id="dropdownMenuType">选择类型</span>
                <i class="ace-icon fa fa-angle-down"></i>
            </button>
            <ul class="dropdown-menu col-sm-12" style="margin-left:4px;width:312px;">
                <li>
                    <a href="javascript:winFn.dropdown('#type','','#dropdownMenuType','选择类型');thisPage.divDisplay('0');">选择类型</a>
                </li>
                <li>
                    <a href="javascript:winFn.dropdown('#type',1,'#dropdownMenuType','导航菜单');thisPage.divDisplay('1');">导航菜单</a>
                </li>
                <li>
                    <a href="javascript:winFn.dropdown('#type',2,'#dropdownMenuType','普通按钮');thisPage.divDisplay('2');">普通按钮</a>
                </li>
                <li>
                    <a href="javascript:winFn.dropdown('#type',3,'#dropdownMenuType','行内按钮');thisPage.divDisplay('3');">行内按钮</a>
                </li>
            </ul>
            <input id="type" type="hidden">
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="permission"><div class="hr-4"></div>菜单权限标识</label>
        <div class="col-sm-7"><div class="hr-4"></div><%--select--%>
            <div class="input-group">
                <input type="text" id="permission" class="form-control search-query" placeholder="权限标识;注意命名规则;不能重复" />
                <span class="input-group-btn">
                    <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle col-sm-12" style="margin-left:0.01em"><%--下拉菜单时才需要这个样式--%>
                        <span id="dropdownCategory">权限类型</span>
                        <i class="ace-icon fa fa-angle-down"></i>
                    </button>
                    <ul class="dropdown-menu col-sm-12" style="margin-left:-1px;width:99px;min-width:99px;">
                        <li>
                            <a href="javascript:winFn.dropdown('#category','','#dropdownCategory','权限类型');">权限类型</a>
                        </li>
                        <li>
                            <a href="javascript:winFn.dropdown('#category',1,'#dropdownCategory','查询权限');">查询权限</a>
                        </li>
                        <li>
                            <a href="javascript:winFn.dropdown('#category',2,'#dropdownCategory','编辑权限');">编辑权限</a>
                        </li>
                        <li>
                            <a href="javascript:winFn.dropdown('#category',3,'#dropdownCategory','删除权限');">删除权限</a>
                        </li>
                        <li>
                            <a href="javascript:winFn.dropdown('#category',4,'#dropdownCategory','添加权限');">添加权限</a>
                        </li>
                    </ul>
                    <input id="category" type="hidden">
                </span>
            </div>
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="pName"><div class="hr-4"></div>父级菜单节点</label>
        <div class="col-sm-7"><div class="hr-4"></div>
            <div class="input-group">
                <input type="text" id="pName" readonly="readonly" class="form-control search-query" placeholder="无父级菜单节点" />
                <span class="input-group-btn">
                    <button type="button" class="btn btn-inverse btn-white" id="btnDelPid">
                        <span class="ace-icon fa fa-trash-o green bigger-110"></span>
                        删除父节点
                    </button>
                </span>
                <input id="pid" type="hidden">
            </div>
        </div>
        <div class="col-sm-12"><%--解决获取数据失败时占据整行而样式不变--%>
            <label class="col-sm-3 control-label no-padding-right">选择父级菜单</label>
            <div class="col-sm-7">
                <ul id="treeDom" class="ztree">
                    <li style="margin-top:2px;">
                        <span>获取数据失败</span>
                    </li>
                </ul>
            </div>
        </div>
        <div id="div_controller_subset">
            <label class="col-sm-3 control-label no-padding-right">是否还有子页面</label>
            <div class="col-sm-7">
                <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle col-sm-12">
                    <span id="dropdownSubset">菜单选项</span>
                    <i class="ace-icon fa fa-angle-down"></i>
                </button>
                <ul class="dropdown-menu col-sm-12" style="margin-left:4px;width:312px;">
                    <li>
                        <a href="javascript:winFn.dropdown('#subset','','#dropdownSubset','菜单选项');">菜单选项</a>
                    </li>
                    <li>
                        <a href="javascript:winFn.dropdown('#subset',0,'#dropdownSubset','无子页面');">无子页面</a>
                    </li>
                    <li>
                        <a href="javascript:winFn.dropdown('#subset',1,'#dropdownSubset','有子页面');">有子页面</a>
                    </li>
                </ul>
                <input id="subset" type="hidden">
            </div>
        </div>
        <div id="div_controller_icon">
            <label class="col-sm-3 control-label no-padding-right" for="icon_style"><div class="hr-4"></div>菜单图标</label>
            <div class="col-sm-7"><div class="hr-4"></div>
                <div class="input-group">
                    <input type="text" id="icon_style" placeholder="顶级菜单的图标" title="若是顶级的菜单必须选择右边的按钮选择图标" onkeyup="value=''" style="background:#dadada;outline:none;cursor:not-allowed;-webkit-box-shadow: 0 0 0px 1000px #dadada inset !important; outline-color: invert ;outline-style: none ;outline-width: 0px ;border: none ;border-style: none ;text-shadow: none ;-webkit-appearance: none ;-webkit-user-select: text ;outline-color:#dadada;box-shadow: none;" class="form-control search-query"/>
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-inverse btn-white" id="btnIconStyle" title="点击预览图标" style="margin-left:0.05888em;">
                            <span class="ace-icon fa fa-eye bigger-110"></span>
                            预览
                        </button>
                    </span>
                    <span class="input-group-btn">
                        <button type="button" class="btn btn-inverse btn-white" id="btnPickIcon" title="点击选择菜单图标">
                            <span class="fa fa-hand-o-up bigger-110"></span>
                            选择
                        </button>
                    </span>
                </div>
            </div>
        </div>
        <label class="col-sm-3 control-label no-padding-right" for="order_by"><div class="hr-4"></div>显示排序</label>
        <div class="col-sm-7"><div class="hr-4"></div><%--input--%>
            <input type="text" id="order_by" placeholder="排序顺序,值越大越往后" class="form-control" oninput = "value=value.replace(/[^\d]/g,'')"/>
        </div>
        <input type="hidden" id="subId" />
    </form>
</div>
<div id="divKeyColumns" style="display:none;padding:1px 0px;"></div>
<div id="divIconOptions" style="display:none;padding:1px 0px;">
    <div id="new" class="mainParts">
        <h2 class="page-header" style="margin:7px 0 18px 11px">新增41个全新的图标</h2>
        <div class="col-xs-12">
            <div>
                <div class="col-xs-12">
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-book" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-book</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-book-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-book-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-card</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-card-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-card-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bandcamp" aria-hidden="true"></i> <span class="sr-only">Example of </span>bandcamp</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bath" aria-hidden="true"></i> <span class="sr-only">Example of </span>bath</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bathtub" aria-hidden="true"></i> <span class="sr-only">Example of </span>bathtub <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-drivers-license" aria-hidden="true"></i> <span class="sr-only">Example of </span>drivers-license <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-drivers-license-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>drivers-license-o <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eercast" aria-hidden="true"></i> <span class="sr-only">Example of </span>eercast</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-open" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-open</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-open-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-open-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-etsy" aria-hidden="true"></i> <span class="sr-only">Example of </span>etsy</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-free-code-camp" aria-hidden="true"></i> <span class="sr-only">Example of </span>free-code-camp</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-grav" aria-hidden="true"></i> <span class="sr-only">Example of </span>grav</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-handshake-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>handshake-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-badge" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-badge</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-card</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-card-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-card-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-imdb" aria-hidden="true"></i> <span class="sr-only">Example of </span>imdb</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-linode" aria-hidden="true"></i> <span class="sr-only">Example of </span>linode</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-meetup" aria-hidden="true"></i> <span class="sr-only">Example of </span>meetup</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-microchip" aria-hidden="true"></i> <span class="sr-only">Example of </span>microchip</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-podcast" aria-hidden="true"></i> <span class="sr-only">Example of </span>podcast</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-quora" aria-hidden="true"></i> <span class="sr-only">Example of </span>quora</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ravelry" aria-hidden="true"></i> <span class="sr-only">Example of </span>ravelry</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-s15" aria-hidden="true"></i> <span class="sr-only">Example of </span>s15 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shower" aria-hidden="true"></i> <span class="sr-only">Example of </span>shower</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-snowflake-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>snowflake-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-superpowers" aria-hidden="true"></i> <span class="sr-only">Example of </span>superpowers</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-telegram" aria-hidden="true"></i> <span class="sr-only">Example of </span>telegram</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-0" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-0 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-1" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-1 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-2" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-2 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-3" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-3 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-4" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-4 <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-empty" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-empty</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-full" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-full</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-half" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-half</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-quarter" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-quarter</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-three-quarters" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-three-quarters</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-rectangle" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-rectangle <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-rectangle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-rectangle-o <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-circle</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-circle-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-vcard" aria-hidden="true"></i> <span class="sr-only">Example of </span>vcard <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-vcard-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>vcard-o <span class="text-muted">(alias)</span></a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-close</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-close-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-close-o</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-maximize" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-maximize</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-minimize" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-minimize</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-restore" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-restore</a></div>
                    <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wpexplorer" aria-hidden="true"></i> <span class="sr-only">Example of </span>wpexplorer</a></div>
                </div>
            </div>
        </div>
    </div>
    <div>
        <section id="web-application" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">网页</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-book" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-book</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-book-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-book-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-card</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-address-card-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>address-card-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-adjust" aria-hidden="true"></i> <span class="sr-only">Example of </span>adjust</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i> <span class="sr-only">Example of </span>american-sign-language-interpreting</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-anchor" aria-hidden="true"></i> <span class="sr-only">Example of </span>anchor</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-archive" aria-hidden="true"></i> <span class="sr-only">Example of </span>archive</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-area-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>area-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-h" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-h</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-v" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-v</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-asl-interpreting" aria-hidden="true"></i> <span class="sr-only">Example of </span>asl-interpreting <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-assistive-listening-systems" aria-hidden="true"></i> <span class="sr-only">Example of </span>assistive-listening-systems</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-asterisk" aria-hidden="true"></i> <span class="sr-only">Example of </span>asterisk</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-at" aria-hidden="true"></i> <span class="sr-only">Example of </span>at</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-audio-description" aria-hidden="true"></i> <span class="sr-only">Example of </span>audio-description</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-automobile" aria-hidden="true"></i> <span class="sr-only">Example of </span>automobile <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-balance-scale" aria-hidden="true"></i> <span class="sr-only">Example of </span>balance-scale</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ban" aria-hidden="true"></i> <span class="sr-only">Example of </span>ban</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bank" aria-hidden="true"></i> <span class="sr-only">Example of </span>bank <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bar-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>bar-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bar-chart-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>bar-chart-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-barcode" aria-hidden="true"></i> <span class="sr-only">Example of </span>barcode</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bars" aria-hidden="true"></i> <span class="sr-only">Example of </span>bars</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bath" aria-hidden="true"></i> <span class="sr-only">Example of </span>bath</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bathtub" aria-hidden="true"></i> <span class="sr-only">Example of </span>bathtub <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-0" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-0 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-1" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-1 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-2" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-2 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-3" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-3 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-4" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-4 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-empty" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-empty</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-full" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-full</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-half" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-half</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-quarter" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-quarter</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-battery-three-quarters" aria-hidden="true"></i> <span class="sr-only">Example of </span>battery-three-quarters</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bed" aria-hidden="true"></i> <span class="sr-only">Example of </span>bed</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-beer" aria-hidden="true"></i> <span class="sr-only">Example of </span>beer</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bell" aria-hidden="true"></i> <span class="sr-only">Example of </span>bell</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bell-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>bell-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bell-slash" aria-hidden="true"></i> <span class="sr-only">Example of </span>bell-slash</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bell-slash-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>bell-slash-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bicycle" aria-hidden="true"></i> <span class="sr-only">Example of </span>bicycle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-binoculars" aria-hidden="true"></i> <span class="sr-only">Example of </span>binoculars</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-birthday-cake" aria-hidden="true"></i> <span class="sr-only">Example of </span>birthday-cake</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-blind" aria-hidden="true"></i> <span class="sr-only">Example of </span>blind</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bluetooth" aria-hidden="true"></i> <span class="sr-only">Example of </span>bluetooth</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bluetooth-b" aria-hidden="true"></i> <span class="sr-only">Example of </span>bluetooth-b</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bolt" aria-hidden="true"></i> <span class="sr-only">Example of </span>bolt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bomb" aria-hidden="true"></i> <span class="sr-only">Example of </span>bomb</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-book" aria-hidden="true"></i> <span class="sr-only">Example of </span>book</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bookmark" aria-hidden="true"></i> <span class="sr-only">Example of </span>bookmark</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bookmark-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>bookmark-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-braille" aria-hidden="true"></i> <span class="sr-only">Example of </span>braille</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-briefcase" aria-hidden="true"></i> <span class="sr-only">Example of </span>briefcase</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bug" aria-hidden="true"></i> <span class="sr-only">Example of </span>bug</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-building" aria-hidden="true"></i> <span class="sr-only">Example of </span>building</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-building-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>building-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bullhorn" aria-hidden="true"></i> <span class="sr-only">Example of </span>bullhorn</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bullseye" aria-hidden="true"></i> <span class="sr-only">Example of </span>bullseye</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bus" aria-hidden="true"></i> <span class="sr-only">Example of </span>bus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cab" aria-hidden="true"></i> <span class="sr-only">Example of </span>cab <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calculator" aria-hidden="true"></i> <span class="sr-only">Example of </span>calculator</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar-check-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar-check-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar-minus-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar-minus-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar-plus-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar-plus-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-calendar-times-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>calendar-times-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-camera" aria-hidden="true"></i> <span class="sr-only">Example of </span>camera</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-camera-retro" aria-hidden="true"></i> <span class="sr-only">Example of </span>camera-retro</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-car" aria-hidden="true"></i> <span class="sr-only">Example of </span>car</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cart-arrow-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>cart-arrow-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cart-plus" aria-hidden="true"></i> <span class="sr-only">Example of </span>cart-plus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-certificate" aria-hidden="true"></i> <span class="sr-only">Example of </span>certificate</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check" aria-hidden="true"></i> <span class="sr-only">Example of </span>check</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-child" aria-hidden="true"></i> <span class="sr-only">Example of </span>child</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle-o-notch" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle-o-notch</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle-thin" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle-thin</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-clock-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>clock-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-clone" aria-hidden="true"></i> <span class="sr-only">Example of </span>clone</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-close" aria-hidden="true"></i> <span class="sr-only">Example of </span>close <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cloud" aria-hidden="true"></i> <span class="sr-only">Example of </span>cloud</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cloud-download" aria-hidden="true"></i> <span class="sr-only">Example of </span>cloud-download</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cloud-upload" aria-hidden="true"></i> <span class="sr-only">Example of </span>cloud-upload</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-code" aria-hidden="true"></i> <span class="sr-only">Example of </span>code</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-code-fork" aria-hidden="true"></i> <span class="sr-only">Example of </span>code-fork</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-coffee" aria-hidden="true"></i> <span class="sr-only">Example of </span>coffee</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cog" aria-hidden="true"></i> <span class="sr-only">Example of </span>cog</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cogs" aria-hidden="true"></i> <span class="sr-only">Example of </span>cogs</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-comment" aria-hidden="true"></i> <span class="sr-only">Example of </span>comment</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-comment-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>comment-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-commenting" aria-hidden="true"></i> <span class="sr-only">Example of </span>commenting</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-commenting-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>commenting-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-comments" aria-hidden="true"></i> <span class="sr-only">Example of </span>comments</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-comments-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>comments-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-compass" aria-hidden="true"></i> <span class="sr-only">Example of </span>compass</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-copyright" aria-hidden="true"></i> <span class="sr-only">Example of </span>copyright</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-creative-commons" aria-hidden="true"></i> <span class="sr-only">Example of </span>creative-commons</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-credit-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>credit-card</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-credit-card-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>credit-card-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-crop" aria-hidden="true"></i> <span class="sr-only">Example of </span>crop</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-crosshairs" aria-hidden="true"></i> <span class="sr-only">Example of </span>crosshairs</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cube" aria-hidden="true"></i> <span class="sr-only">Example of </span>cube</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cubes" aria-hidden="true"></i> <span class="sr-only">Example of </span>cubes</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cutlery" aria-hidden="true"></i> <span class="sr-only">Example of </span>cutlery</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-dashboard" aria-hidden="true"></i> <span class="sr-only">Example of </span>dashboard <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-database" aria-hidden="true"></i> <span class="sr-only">Example of </span>database</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-deaf" aria-hidden="true"></i> <span class="sr-only">Example of </span>deaf</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-deafness" aria-hidden="true"></i> <span class="sr-only">Example of </span>deafness <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-desktop" aria-hidden="true"></i> <span class="sr-only">Example of </span>desktop</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-diamond" aria-hidden="true"></i> <span class="sr-only">Example of </span>diamond</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-dot-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>dot-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-download" aria-hidden="true"></i> <span class="sr-only">Example of </span>download</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-drivers-license" aria-hidden="true"></i> <span class="sr-only">Example of </span>drivers-license <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-drivers-license-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>drivers-license-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-edit" aria-hidden="true"></i> <span class="sr-only">Example of </span>edit <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ellipsis-h" aria-hidden="true"></i> <span class="sr-only">Example of </span>ellipsis-h</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ellipsis-v" aria-hidden="true"></i> <span class="sr-only">Example of </span>ellipsis-v</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-open" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-open</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-open-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-open-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-envelope-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>envelope-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eraser" aria-hidden="true"></i> <span class="sr-only">Example of </span>eraser</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-exchange" aria-hidden="true"></i> <span class="sr-only">Example of </span>exchange</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-exclamation" aria-hidden="true"></i> <span class="sr-only">Example of </span>exclamation</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-exclamation-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>exclamation-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> <span class="sr-only">Example of </span>exclamation-triangle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-external-link" aria-hidden="true"></i> <span class="sr-only">Example of </span>external-link</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-external-link-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>external-link-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eye" aria-hidden="true"></i> <span class="sr-only">Example of </span>eye</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eye-slash" aria-hidden="true"></i> <span class="sr-only">Example of </span>eye-slash</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eyedropper" aria-hidden="true"></i> <span class="sr-only">Example of </span>eyedropper</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fax" aria-hidden="true"></i> <span class="sr-only">Example of </span>fax</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-feed" aria-hidden="true"></i> <span class="sr-only">Example of </span>feed <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-female" aria-hidden="true"></i> <span class="sr-only">Example of </span>female</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fighter-jet" aria-hidden="true"></i> <span class="sr-only">Example of </span>fighter-jet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-archive-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-archive-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-audio-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-audio-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-code-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-code-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-excel-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-excel-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-image-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-image-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-movie-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-movie-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-pdf-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-photo-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-photo-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-picture-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-picture-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-powerpoint-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-sound-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-sound-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-video-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-video-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-word-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-word-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-zip-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-zip-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-film" aria-hidden="true"></i> <span class="sr-only">Example of </span>film</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-filter" aria-hidden="true"></i> <span class="sr-only">Example of </span>filter</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fire" aria-hidden="true"></i> <span class="sr-only">Example of </span>fire</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fire-extinguisher" aria-hidden="true"></i> <span class="sr-only">Example of </span>fire-extinguisher</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-flag" aria-hidden="true"></i> <span class="sr-only">Example of </span>flag</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-flag-checkered" aria-hidden="true"></i> <span class="sr-only">Example of </span>flag-checkered</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-flag-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>flag-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-flash" aria-hidden="true"></i> <span class="sr-only">Example of </span>flash <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-flask" aria-hidden="true"></i> <span class="sr-only">Example of </span>flask</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-folder" aria-hidden="true"></i> <span class="sr-only">Example of </span>folder</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-folder-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>folder-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-folder-open" aria-hidden="true"></i> <span class="sr-only">Example of </span>folder-open</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-folder-open-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>folder-open-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-frown-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>frown-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-futbol-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>futbol-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gamepad" aria-hidden="true"></i> <span class="sr-only">Example of </span>gamepad</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gavel" aria-hidden="true"></i> <span class="sr-only">Example of </span>gavel</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gear" aria-hidden="true"></i> <span class="sr-only">Example of </span>gear <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gears" aria-hidden="true"></i> <span class="sr-only">Example of </span>gears <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gift" aria-hidden="true"></i> <span class="sr-only">Example of </span>gift</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-glass" aria-hidden="true"></i> <span class="sr-only">Example of </span>glass</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-globe" aria-hidden="true"></i> <span class="sr-only">Example of </span>globe</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-graduation-cap" aria-hidden="true"></i> <span class="sr-only">Example of </span>graduation-cap</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-group" aria-hidden="true"></i> <span class="sr-only">Example of </span>group <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-grab-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-grab-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-lizard-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-lizard-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-paper-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-paper-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-peace-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-peace-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-pointer-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-pointer-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-rock-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-rock-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-scissors-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-scissors-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-spock-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-spock-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-stop-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-stop-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-handshake-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>handshake-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hard-of-hearing" aria-hidden="true"></i> <span class="sr-only">Example of </span>hard-of-hearing <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hashtag" aria-hidden="true"></i> <span class="sr-only">Example of </span>hashtag</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hdd-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hdd-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-headphones" aria-hidden="true"></i> <span class="sr-only">Example of </span>headphones</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-heart" aria-hidden="true"></i> <span class="sr-only">Example of </span>heart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-heart-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>heart-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-heartbeat" aria-hidden="true"></i> <span class="sr-only">Example of </span>heartbeat</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-history" aria-hidden="true"></i> <span class="sr-only">Example of </span>history</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-home" aria-hidden="true"></i> <span class="sr-only">Example of </span>home</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hotel" aria-hidden="true"></i> <span class="sr-only">Example of </span>hotel <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-1" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-1 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-2" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-2 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-3" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-3 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-end" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-end</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-half" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-half</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hourglass-start" aria-hidden="true"></i> <span class="sr-only">Example of </span>hourglass-start</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-i-cursor" aria-hidden="true"></i> <span class="sr-only">Example of </span>i-cursor</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-badge" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-badge</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-card</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-id-card-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>id-card-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-image" aria-hidden="true"></i> <span class="sr-only">Example of </span>image <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-inbox" aria-hidden="true"></i> <span class="sr-only">Example of </span>inbox</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-industry" aria-hidden="true"></i> <span class="sr-only">Example of </span>industry</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-info" aria-hidden="true"></i> <span class="sr-only">Example of </span>info</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-info-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>info-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-institution" aria-hidden="true"></i> <span class="sr-only">Example of </span>institution <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-key" aria-hidden="true"></i> <span class="sr-only">Example of </span>key</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-keyboard-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>keyboard-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-language" aria-hidden="true"></i> <span class="sr-only">Example of </span>language</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-laptop" aria-hidden="true"></i> <span class="sr-only">Example of </span>laptop</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-leaf" aria-hidden="true"></i> <span class="sr-only">Example of </span>leaf</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-legal" aria-hidden="true"></i> <span class="sr-only">Example of </span>legal <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-lemon-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>lemon-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-level-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>level-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-level-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>level-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-life-bouy" aria-hidden="true"></i> <span class="sr-only">Example of </span>life-bouy <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-life-buoy" aria-hidden="true"></i> <span class="sr-only">Example of </span>life-buoy <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-life-ring" aria-hidden="true"></i> <span class="sr-only">Example of </span>life-ring</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-life-saver" aria-hidden="true"></i> <span class="sr-only">Example of </span>life-saver <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-lightbulb-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>lightbulb-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-line-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>line-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-location-arrow" aria-hidden="true"></i> <span class="sr-only">Example of </span>location-arrow</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-lock" aria-hidden="true"></i> <span class="sr-only">Example of </span>lock</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-low-vision" aria-hidden="true"></i> <span class="sr-only">Example of </span>low-vision</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-magic" aria-hidden="true"></i> <span class="sr-only">Example of </span>magic</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-magnet" aria-hidden="true"></i> <span class="sr-only">Example of </span>magnet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mail-forward" aria-hidden="true"></i> <span class="sr-only">Example of </span>mail-forward <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mail-reply" aria-hidden="true"></i> <span class="sr-only">Example of </span>mail-reply <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mail-reply-all" aria-hidden="true"></i> <span class="sr-only">Example of </span>mail-reply-all <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-male" aria-hidden="true"></i> <span class="sr-only">Example of </span>male</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-map" aria-hidden="true"></i> <span class="sr-only">Example of </span>map</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-map-marker" aria-hidden="true"></i> <span class="sr-only">Example of </span>map-marker</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-map-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>map-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-map-pin" aria-hidden="true"></i> <span class="sr-only">Example of </span>map-pin</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-map-signs" aria-hidden="true"></i> <span class="sr-only">Example of </span>map-signs</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-meh-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>meh-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-microchip" aria-hidden="true"></i> <span class="sr-only">Example of </span>microchip</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-microphone" aria-hidden="true"></i> <span class="sr-only">Example of </span>microphone</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-microphone-slash" aria-hidden="true"></i> <span class="sr-only">Example of </span>microphone-slash</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mobile" aria-hidden="true"></i> <span class="sr-only">Example of </span>mobile</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mobile-phone" aria-hidden="true"></i> <span class="sr-only">Example of </span>mobile-phone <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-money" aria-hidden="true"></i> <span class="sr-only">Example of </span>money</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-moon-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>moon-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mortar-board" aria-hidden="true"></i> <span class="sr-only">Example of </span>mortar-board <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-motorcycle" aria-hidden="true"></i> <span class="sr-only">Example of </span>motorcycle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mouse-pointer" aria-hidden="true"></i> <span class="sr-only">Example of </span>mouse-pointer</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-music" aria-hidden="true"></i> <span class="sr-only">Example of </span>music</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-navicon" aria-hidden="true"></i> <span class="sr-only">Example of </span>navicon <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-newspaper-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>newspaper-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-object-group" aria-hidden="true"></i> <span class="sr-only">Example of </span>object-group</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-object-ungroup" aria-hidden="true"></i> <span class="sr-only">Example of </span>object-ungroup</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paint-brush" aria-hidden="true"></i> <span class="sr-only">Example of </span>paint-brush</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paper-plane" aria-hidden="true"></i> <span class="sr-only">Example of </span>paper-plane</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paper-plane-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>paper-plane-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paw" aria-hidden="true"></i> <span class="sr-only">Example of </span>paw</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pencil" aria-hidden="true"></i> <span class="sr-only">Example of </span>pencil</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pencil-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>pencil-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pencil-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>pencil-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-percent" aria-hidden="true"></i> <span class="sr-only">Example of </span>percent</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-phone" aria-hidden="true"></i> <span class="sr-only">Example of </span>phone</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-phone-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>phone-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-photo" aria-hidden="true"></i> <span class="sr-only">Example of </span>photo <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-picture-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>picture-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pie-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>pie-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plane" aria-hidden="true"></i> <span class="sr-only">Example of </span>plane</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plug" aria-hidden="true"></i> <span class="sr-only">Example of </span>plug</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-podcast" aria-hidden="true"></i> <span class="sr-only">Example of </span>podcast</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-power-off" aria-hidden="true"></i> <span class="sr-only">Example of </span>power-off</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-print" aria-hidden="true"></i> <span class="sr-only">Example of </span>print</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-puzzle-piece" aria-hidden="true"></i> <span class="sr-only">Example of </span>puzzle-piece</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-qrcode" aria-hidden="true"></i> <span class="sr-only">Example of </span>qrcode</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-question" aria-hidden="true"></i> <span class="sr-only">Example of </span>question</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-question-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>question-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-question-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>question-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-quote-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>quote-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-quote-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>quote-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-random" aria-hidden="true"></i> <span class="sr-only">Example of </span>random</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-recycle" aria-hidden="true"></i> <span class="sr-only">Example of </span>recycle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-refresh" aria-hidden="true"></i> <span class="sr-only">Example of </span>refresh</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-registered" aria-hidden="true"></i> <span class="sr-only">Example of </span>registered</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-remove" aria-hidden="true"></i> <span class="sr-only">Example of </span>remove <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-reorder" aria-hidden="true"></i> <span class="sr-only">Example of </span>reorder <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-reply" aria-hidden="true"></i> <span class="sr-only">Example of </span>reply</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-reply-all" aria-hidden="true"></i> <span class="sr-only">Example of </span>reply-all</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-retweet" aria-hidden="true"></i> <span class="sr-only">Example of </span>retweet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-road" aria-hidden="true"></i> <span class="sr-only">Example of </span>road</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rocket" aria-hidden="true"></i> <span class="sr-only">Example of </span>rocket</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rss" aria-hidden="true"></i> <span class="sr-only">Example of </span>rss</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rss-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>rss-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-s15" aria-hidden="true"></i> <span class="sr-only">Example of </span>s15 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-search" aria-hidden="true"></i> <span class="sr-only">Example of </span>search</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-search-minus" aria-hidden="true"></i> <span class="sr-only">Example of </span>search-minus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-search-plus" aria-hidden="true"></i> <span class="sr-only">Example of </span>search-plus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-send" aria-hidden="true"></i> <span class="sr-only">Example of </span>send <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-send-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>send-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-server" aria-hidden="true"></i> <span class="sr-only">Example of </span>server</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-share" aria-hidden="true"></i> <span class="sr-only">Example of </span>share</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-share-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>share-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-share-alt-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>share-alt-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-share-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>share-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-share-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>share-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shield" aria-hidden="true"></i> <span class="sr-only">Example of </span>shield</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ship" aria-hidden="true"></i> <span class="sr-only">Example of </span>ship</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shopping-bag" aria-hidden="true"></i> <span class="sr-only">Example of </span>shopping-bag</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shopping-basket" aria-hidden="true"></i> <span class="sr-only">Example of </span>shopping-basket</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shopping-cart" aria-hidden="true"></i> <span class="sr-only">Example of </span>shopping-cart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shower" aria-hidden="true"></i> <span class="sr-only">Example of </span>shower</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sign-in" aria-hidden="true"></i> <span class="sr-only">Example of </span>sign-in</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sign-language" aria-hidden="true"></i> <span class="sr-only">Example of </span>sign-language</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sign-out" aria-hidden="true"></i> <span class="sr-only">Example of </span>sign-out</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-signal" aria-hidden="true"></i> <span class="sr-only">Example of </span>signal</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-signing" aria-hidden="true"></i> <span class="sr-only">Example of </span>signing <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sitemap" aria-hidden="true"></i> <span class="sr-only">Example of </span>sitemap</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sliders" aria-hidden="true"></i> <span class="sr-only">Example of </span>sliders</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-smile-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>smile-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-snowflake-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>snowflake-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-soccer-ball-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>soccer-ball-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-alpha-asc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-alpha-asc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-alpha-desc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-alpha-desc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-amount-asc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-amount-asc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-amount-desc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-amount-desc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-asc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-asc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-desc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-desc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-down <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-numeric-asc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-numeric-asc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-numeric-desc" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-numeric-desc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sort-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>sort-up <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-space-shuttle" aria-hidden="true"></i> <span class="sr-only">Example of </span>space-shuttle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-spinner" aria-hidden="true"></i> <span class="sr-only">Example of </span>spinner</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-spoon" aria-hidden="true"></i> <span class="sr-only">Example of </span>spoon</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star" aria-hidden="true"></i> <span class="sr-only">Example of </span>star</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star-half" aria-hidden="true"></i> <span class="sr-only">Example of </span>star-half</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star-half-empty" aria-hidden="true"></i> <span class="sr-only">Example of </span>star-half-empty <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star-half-full" aria-hidden="true"></i> <span class="sr-only">Example of </span>star-half-full <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star-half-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>star-half-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-star-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>star-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sticky-note" aria-hidden="true"></i> <span class="sr-only">Example of </span>sticky-note</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sticky-note-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>sticky-note-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-street-view" aria-hidden="true"></i> <span class="sr-only">Example of </span>street-view</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-suitcase" aria-hidden="true"></i> <span class="sr-only">Example of </span>suitcase</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sun-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>sun-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-support" aria-hidden="true"></i> <span class="sr-only">Example of </span>support <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tablet" aria-hidden="true"></i> <span class="sr-only">Example of </span>tablet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tachometer" aria-hidden="true"></i> <span class="sr-only">Example of </span>tachometer</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tag" aria-hidden="true"></i> <span class="sr-only">Example of </span>tag</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tags" aria-hidden="true"></i> <span class="sr-only">Example of </span>tags</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tasks" aria-hidden="true"></i> <span class="sr-only">Example of </span>tasks</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-taxi" aria-hidden="true"></i> <span class="sr-only">Example of </span>taxi</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-television" aria-hidden="true"></i> <span class="sr-only">Example of </span>television</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-terminal" aria-hidden="true"></i> <span class="sr-only">Example of </span>terminal</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-0" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-0 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-1" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-1 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-2" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-2 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-3" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-3 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-4" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-4 <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-empty" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-empty</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-full" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-full</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-half" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-half</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-quarter" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-quarter</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thermometer-three-quarters" aria-hidden="true"></i> <span class="sr-only">Example of </span>thermometer-three-quarters</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumb-tack" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumb-tack</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ticket" aria-hidden="true"></i> <span class="sr-only">Example of </span>ticket</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times" aria-hidden="true"></i> <span class="sr-only">Example of </span>times</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-rectangle" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-rectangle <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-times-rectangle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>times-rectangle-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tint" aria-hidden="true"></i> <span class="sr-only">Example of </span>tint</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-down <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-left <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-off" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-off</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-on" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-on</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-right <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-up <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-trademark" aria-hidden="true"></i> <span class="sr-only">Example of </span>trademark</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-trash" aria-hidden="true"></i> <span class="sr-only">Example of </span>trash</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-trash-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>trash-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tree" aria-hidden="true"></i> <span class="sr-only">Example of </span>tree</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-trophy" aria-hidden="true"></i> <span class="sr-only">Example of </span>trophy</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-truck" aria-hidden="true"></i> <span class="sr-only">Example of </span>truck</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tty" aria-hidden="true"></i> <span class="sr-only">Example of </span>tty</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tv" aria-hidden="true"></i> <span class="sr-only">Example of </span>tv <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-umbrella" aria-hidden="true"></i> <span class="sr-only">Example of </span>umbrella</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-universal-access" aria-hidden="true"></i> <span class="sr-only">Example of </span>universal-access</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-university" aria-hidden="true"></i> <span class="sr-only">Example of </span>university</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-unlock" aria-hidden="true"></i> <span class="sr-only">Example of </span>unlock</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-unlock-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>unlock-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-unsorted" aria-hidden="true"></i> <span class="sr-only">Example of </span>unsorted <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-upload" aria-hidden="true"></i> <span class="sr-only">Example of </span>upload</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user" aria-hidden="true"></i> <span class="sr-only">Example of </span>user</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-plus" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-plus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-secret" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-secret</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-user-times" aria-hidden="true"></i> <span class="sr-only">Example of </span>user-times</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-users" aria-hidden="true"></i> <span class="sr-only">Example of </span>users</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-vcard" aria-hidden="true"></i> <span class="sr-only">Example of </span>vcard <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-vcard-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>vcard-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-video-camera" aria-hidden="true"></i> <span class="sr-only">Example of </span>video-camera</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-volume-control-phone" aria-hidden="true"></i> <span class="sr-only">Example of </span>volume-control-phone</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-volume-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>volume-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-volume-off" aria-hidden="true"></i> <span class="sr-only">Example of </span>volume-off</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-volume-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>volume-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-warning" aria-hidden="true"></i> <span class="sr-only">Example of </span>warning <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wifi" aria-hidden="true"></i> <span class="sr-only">Example of </span>wifi</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-close" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-close</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-close-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-close-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-maximize" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-maximize</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-minimize" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-minimize</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-window-restore" aria-hidden="true"></i> <span class="sr-only">Example of </span>window-restore</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wrench" aria-hidden="true"></i> <span class="sr-only">Example of </span>wrench</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="accessibility">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">辅助功能</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-american-sign-language-interpreting" aria-hidden="true"></i> <span class="sr-only">Example of </span>american-sign-language-interpreting</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-asl-interpreting" aria-hidden="true"></i> <span class="sr-only">Example of </span>asl-interpreting <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-assistive-listening-systems" aria-hidden="true"></i> <span class="sr-only">Example of </span>assistive-listening-systems</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-audio-description" aria-hidden="true"></i> <span class="sr-only">Example of </span>audio-description</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-blind" aria-hidden="true"></i> <span class="sr-only">Example of </span>blind</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-braille" aria-hidden="true"></i> <span class="sr-only">Example of </span>braille</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-deaf" aria-hidden="true"></i> <span class="sr-only">Example of </span>deaf</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-deafness" aria-hidden="true"></i> <span class="sr-only">Example of </span>deafness <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hard-of-hearing" aria-hidden="true"></i> <span class="sr-only">Example of </span>hard-of-hearing <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-low-vision" aria-hidden="true"></i> <span class="sr-only">Example of </span>low-vision</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-question-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>question-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sign-language" aria-hidden="true"></i> <span class="sr-only">Example of </span>sign-language</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-signing" aria-hidden="true"></i> <span class="sr-only">Example of </span>signing <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-tty" aria-hidden="true"></i> <span class="sr-only">Example of </span>tty</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-universal-access" aria-hidden="true"></i> <span class="sr-only">Example of </span>universal-access</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-volume-control-phone" aria-hidden="true"></i> <span class="sr-only">Example of </span>volume-control-phone</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair-alt</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="hand" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">手势</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-grab-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-grab-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-lizard-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-lizard-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-paper-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-paper-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-peace-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-peace-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-pointer-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-pointer-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-rock-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-rock-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-scissors-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-scissors-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-spock-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-spock-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-stop-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-stop-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-thumbs-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>thumbs-up</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="transportation" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">运输</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ambulance" aria-hidden="true"></i> <span class="sr-only">Example of </span>ambulance</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-automobile" aria-hidden="true"></i> <span class="sr-only">Example of </span>automobile <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bicycle" aria-hidden="true"></i> <span class="sr-only">Example of </span>bicycle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bus" aria-hidden="true"></i> <span class="sr-only">Example of </span>bus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cab" aria-hidden="true"></i> <span class="sr-only">Example of </span>cab <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-car" aria-hidden="true"></i> <span class="sr-only">Example of </span>car</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fighter-jet" aria-hidden="true"></i> <span class="sr-only">Example of </span>fighter-jet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-motorcycle" aria-hidden="true"></i> <span class="sr-only">Example of </span>motorcycle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plane" aria-hidden="true"></i> <span class="sr-only">Example of </span>plane</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rocket" aria-hidden="true"></i> <span class="sr-only">Example of </span>rocket</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ship" aria-hidden="true"></i> <span class="sr-only">Example of </span>ship</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-space-shuttle" aria-hidden="true"></i> <span class="sr-only">Example of </span>space-shuttle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-subway" aria-hidden="true"></i> <span class="sr-only">Example of </span>subway</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-taxi" aria-hidden="true"></i> <span class="sr-only">Example of </span>taxi</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-train" aria-hidden="true"></i> <span class="sr-only">Example of </span>train</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-truck" aria-hidden="true"></i> <span class="sr-only">Example of </span>truck</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-wheelchair-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>wheelchair-alt</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="gender" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">性别</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-genderless" aria-hidden="true"></i> <span class="sr-only">Example of </span>genderless</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-intersex" aria-hidden="true"></i> <span class="sr-only">Example of </span>intersex <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mars" aria-hidden="true"></i> <span class="sr-only">Example of </span>mars</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mars-double" aria-hidden="true"></i> <span class="sr-only">Example of </span>mars-double</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mars-stroke" aria-hidden="true"></i> <span class="sr-only">Example of </span>mars-stroke</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mars-stroke-h" aria-hidden="true"></i> <span class="sr-only">Example of </span>mars-stroke-h</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mars-stroke-v" aria-hidden="true"></i> <span class="sr-only">Example of </span>mars-stroke-v</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-mercury" aria-hidden="true"></i> <span class="sr-only">Example of </span>mercury</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-neuter" aria-hidden="true"></i> <span class="sr-only">Example of </span>neuter</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-transgender" aria-hidden="true"></i> <span class="sr-only">Example of </span>transgender</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-transgender-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>transgender-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-venus" aria-hidden="true"></i> <span class="sr-only">Example of </span>venus</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-venus-double" aria-hidden="true"></i> <span class="sr-only">Example of </span>venus-double</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-venus-mars" aria-hidden="true"></i> <span class="sr-only">Example of </span>venus-mars</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="file-type" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">文件类型</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file" aria-hidden="true"></i> <span class="sr-only">Example of </span>file</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-archive-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-archive-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-audio-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-audio-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-code-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-code-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-excel-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-excel-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-image-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-image-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-movie-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-movie-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-pdf-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-pdf-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-photo-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-photo-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-picture-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-picture-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-powerpoint-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-powerpoint-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-sound-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-sound-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-text" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-text</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-text-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-text-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-video-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-video-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-word-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-word-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-zip-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-zip-o <span class="text-muted">(alias)</span></a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="spinner" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">可旋转</h2>
                <div class="col-xs-12">
                    <div>
                        <div class="col-xs-12">
                            <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle-o-notch" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle-o-notch</a></div>
                            <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cog" aria-hidden="true"></i> <span class="sr-only">Example of </span>cog</a></div>
                            <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gear" aria-hidden="true"></i> <span class="sr-only">Example of </span>gear <span class="text-muted">(alias)</span></a></div>
                            <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-refresh" aria-hidden="true"></i> <span class="sr-only">Example of </span>refresh</a></div>
                            <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-spinner" aria-hidden="true"></i> <span class="sr-only">Example of </span>spinner</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section id="form-control" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">表单</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-check-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>check-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-dot-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>dot-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-minus-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>minus-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus-square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-plus-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>plus-square-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-square" aria-hidden="true"></i> <span class="sr-only">Example of </span>square</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-square-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>square-o</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="payment" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">支付</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-amex" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-amex</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-diners-club" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-diners-club</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-discover" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-discover</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-jcb" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-jcb</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-mastercard" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-mastercard</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-paypal" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-paypal</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-stripe" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-stripe</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cc-visa" aria-hidden="true"></i> <span class="sr-only">Example of </span>cc-visa</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-credit-card" aria-hidden="true"></i> <span class="sr-only">Example of </span>credit-card</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-credit-card-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>credit-card-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-google-wallet" aria-hidden="true"></i> <span class="sr-only">Example of </span>google-wallet</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paypal" aria-hidden="true"></i> <span class="sr-only">Example of </span>paypal</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="chart" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">图表</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-area-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>area-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bar-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>bar-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bar-chart-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>bar-chart-o <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-line-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>line-chart</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pie-chart" aria-hidden="true"></i> <span class="sr-only">Example of </span>pie-chart</a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="currency" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">货币</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bitcoin" aria-hidden="true"></i> <span class="sr-only">Example of </span>bitcoin <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-btc" aria-hidden="true"></i> <span class="sr-only">Example of </span>btc</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cny" aria-hidden="true"></i> <span class="sr-only">Example of </span>cny <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-dollar" aria-hidden="true"></i> <span class="sr-only">Example of </span>dollar <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eur" aria-hidden="true"></i> <span class="sr-only">Example of </span>eur</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-euro" aria-hidden="true"></i> <span class="sr-only">Example of </span>euro <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gbp" aria-hidden="true"></i> <span class="sr-only">Example of </span>gbp</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gg" aria-hidden="true"></i> <span class="sr-only">Example of </span>gg</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-gg-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>gg-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ils" aria-hidden="true"></i> <span class="sr-only">Example of </span>ils</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-inr" aria-hidden="true"></i> <span class="sr-only">Example of </span>inr</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-jpy" aria-hidden="true"></i> <span class="sr-only">Example of </span>jpy</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-krw" aria-hidden="true"></i> <span class="sr-only">Example of </span>krw</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-money" aria-hidden="true"></i> <span class="sr-only">Example of </span>money</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rmb" aria-hidden="true"></i> <span class="sr-only">Example of </span>rmb <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rouble" aria-hidden="true"></i> <span class="sr-only">Example of </span>rouble <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rub" aria-hidden="true"></i> <span class="sr-only">Example of </span>rub</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-ruble" aria-hidden="true"></i> <span class="sr-only">Example of </span>ruble <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rupee" aria-hidden="true"></i> <span class="sr-only">Example of </span>rupee <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-shekel" aria-hidden="true"></i> <span class="sr-only">Example of </span>shekel <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-sheqel" aria-hidden="true"></i> <span class="sr-only">Example of </span>sheqel <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-try" aria-hidden="true"></i> <span class="sr-only">Example of </span>try</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-turkish-lira" aria-hidden="true"></i> <span class="sr-only">Example of </span>turkish-lira <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-usd" aria-hidden="true"></i> <span class="sr-only">Example of </span>usd</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-won" aria-hidden="true"></i> <span class="sr-only">Example of </span>won <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-yen" aria-hidden="true"></i> <span class="sr-only">Example of </span>yen <span class="text-muted">(alias)</span></a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="text-editor" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">文本编辑</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-align-center" aria-hidden="true"></i> <span class="sr-only">Example of </span>align-center</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-align-justify" aria-hidden="true"></i> <span class="sr-only">Example of </span>align-justify</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-align-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>align-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-align-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>align-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-bold" aria-hidden="true"></i> <span class="sr-only">Example of </span>bold</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chain" aria-hidden="true"></i> <span class="sr-only">Example of </span>chain <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chain-broken" aria-hidden="true"></i> <span class="sr-only">Example of </span>chain-broken</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-clipboard" aria-hidden="true"></i> <span class="sr-only">Example of </span>clipboard</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-columns" aria-hidden="true"></i> <span class="sr-only">Example of </span>columns</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-copy" aria-hidden="true"></i> <span class="sr-only">Example of </span>copy <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-cut" aria-hidden="true"></i> <span class="sr-only">Example of </span>cut <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-dedent" aria-hidden="true"></i> <span class="sr-only">Example of </span>dedent <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eraser" aria-hidden="true"></i> <span class="sr-only">Example of </span>eraser</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file" aria-hidden="true"></i> <span class="sr-only">Example of </span>file</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-text" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-text</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-file-text-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>file-text-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-files-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>files-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-floppy-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>floppy-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-font" aria-hidden="true"></i> <span class="sr-only">Example of </span>font</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-header" aria-hidden="true"></i> <span class="sr-only">Example of </span>header</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-indent" aria-hidden="true"></i> <span class="sr-only">Example of </span>indent</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-italic" aria-hidden="true"></i> <span class="sr-only">Example of </span>italic</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-link" aria-hidden="true"></i> <span class="sr-only">Example of </span>link</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-list" aria-hidden="true"></i> <span class="sr-only">Example of </span>list</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-list-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>list-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-list-ol" aria-hidden="true"></i> <span class="sr-only">Example of </span>list-ol</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-list-ul" aria-hidden="true"></i> <span class="sr-only">Example of </span>list-ul</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-outdent" aria-hidden="true"></i> <span class="sr-only">Example of </span>outdent</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paperclip" aria-hidden="true"></i> <span class="sr-only">Example of </span>paperclip</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paragraph" aria-hidden="true"></i> <span class="sr-only">Example of </span>paragraph</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-paste" aria-hidden="true"></i> <span class="sr-only">Example of </span>paste <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-repeat" aria-hidden="true"></i> <span class="sr-only">Example of </span>repeat</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rotate-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>rotate-left <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-rotate-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>rotate-right <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-save" aria-hidden="true"></i> <span class="sr-only">Example of </span>save <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-scissors" aria-hidden="true"></i> <span class="sr-only">Example of </span>scissors</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-strikethrough" aria-hidden="true"></i> <span class="sr-only">Example of </span>strikethrough</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-subscript" aria-hidden="true"></i> <span class="sr-only">Example of </span>subscript</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-superscript" aria-hidden="true"></i> <span class="sr-only">Example of </span>superscript</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-table" aria-hidden="true"></i> <span class="sr-only">Example of </span>table</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-text-height" aria-hidden="true"></i> <span class="sr-only">Example of </span>text-height</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-text-width" aria-hidden="true"></i> <span class="sr-only">Example of </span>text-width</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-th" aria-hidden="true"></i> <span class="sr-only">Example of </span>th</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-th-large" aria-hidden="true"></i> <span class="sr-only">Example of </span>th-large</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-th-list" aria-hidden="true"></i> <span class="sr-only">Example of </span>th-list</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-underline" aria-hidden="true"></i> <span class="sr-only">Example of </span>underline</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-undo" aria-hidden="true"></i> <span class="sr-only">Example of </span>undo</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-unlink" aria-hidden="true"></i> <span class="sr-only">Example of </span>unlink <span class="text-muted">(alias)</span></a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="directional" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">指示方向</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-double-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-double-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-double-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-double-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-double-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-double-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-double-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-double-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-angle-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>angle-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-o-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-o-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-o-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-circle-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-circle-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrow-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrow-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-h" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-h</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-v" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-v</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-square-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-square-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-caret-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>caret-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-circle-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-circle-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-circle-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-circle-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-circle-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-circle-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-circle-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-circle-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-chevron-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>chevron-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-exchange" aria-hidden="true"></i> <span class="sr-only">Example of </span>exchange</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-hand-o-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>hand-o-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-long-arrow-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>long-arrow-down</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-long-arrow-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>long-arrow-left</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-long-arrow-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>long-arrow-right</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-long-arrow-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>long-arrow-up</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-down" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-down <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-left" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-left <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-right" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-right <span class="text-muted">(alias)</span></a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-toggle-up" aria-hidden="true"></i> <span class="sr-only">Example of </span>toggle-up <span class="text-muted">(alias)</span></a></div>
                    </div>
                </div>
            </div>
        </section>
        <section id="video-player" class="mainParts">
            <div class="col-xs-12">
                <h2 class="page-header" style="margin:7px 0 18px 11px">视频播放</h2>
                <div>
                    <div class="col-xs-12">
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-arrows-alt" aria-hidden="true"></i> <span class="sr-only">Example of </span>arrows-alt</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-backward" aria-hidden="true"></i> <span class="sr-only">Example of </span>backward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-compress" aria-hidden="true"></i> <span class="sr-only">Example of </span>compress</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-eject" aria-hidden="true"></i> <span class="sr-only">Example of </span>eject</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-expand" aria-hidden="true"></i> <span class="sr-only">Example of </span>expand</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fast-backward" aria-hidden="true"></i> <span class="sr-only">Example of </span>fast-backward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-fast-forward" aria-hidden="true"></i> <span class="sr-only">Example of </span>fast-forward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-forward" aria-hidden="true"></i> <span class="sr-only">Example of </span>forward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pause" aria-hidden="true"></i> <span class="sr-only">Example of </span>pause</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pause-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>pause-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-pause-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>pause-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-play" aria-hidden="true"></i> <span class="sr-only">Example of </span>play</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-play-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>play-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-play-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>play-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-random" aria-hidden="true"></i> <span class="sr-only">Example of </span>random</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-step-backward" aria-hidden="true"></i> <span class="sr-only">Example of </span>step-backward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-step-forward" aria-hidden="true"></i> <span class="sr-only">Example of </span>step-forward</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-stop" aria-hidden="true"></i> <span class="sr-only">Example of </span>stop</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-stop-circle" aria-hidden="true"></i> <span class="sr-only">Example of </span>stop-circle</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-stop-circle-o" aria-hidden="true"></i> <span class="sr-only">Example of </span>stop-circle-o</a></div>
                        <div class="fa-hover col-md-3 col-sm-4"><a><i class="fa fa-youtube-play" aria-hidden="true"></i> <span class="sr-only">Example of </span>youtube-play</a></div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>
<input type="hidden" id="menu_edit_keyId"/><%--编辑时用的id--%>
<script type="text/javascript">
    var scripts = [null,null];
    $('.page-content-area').ace_ajax('loadScripts',scripts,function(){
        var tableDom = '#tableListMenu';
        var ztreeReqFlag = true;
        $(function(){
            var urlRoute = '/menu/';/*请求controller层的url*/
            var urlListData = urlRoute + 'listData';/*获取菜单列表,此处不需要添加的,已在请求的url添加了前缀*/
            var urlAdd = urlRoute + 'add';/*添加*/
            var urlEdit = urlRoute + 'edit';/*编辑*/
            var urlDelById = urlRoute + 'delById';/*根据id查询对应的数据*/
            var urlQueryById = urlRoute + 'queryById';/*根据id查询对应的数据*/
            var urlQueryTreeMenu = urlPrefix + urlRoute + 'queryTreeMenu';/*获取所有当前登录人的权限菜单*/
            var thisTable = pageDataTable.initDataTable({
                tableDom : tableDom,
                sAjaxSource: urlListData,
                fnServerParams : function(params){
                    params.push({"name":"name","value":$("#key_name").val()},{"name":"pName","value":$("#key_pName").val()},{"name":"type","value":$("#key_type").val()});
                },
                aoColumns : [
                    {
                        bSortable: false,
                        mData : "kid",
                        sWidth : "38px",
                        sClass : "center",
                        sTitle : '<label class="pos-rel" title="全选|不选"><input type="checkbox" class="ace" /><span class="lbl"></span></label>'
                    },
                    {
                        mData : "name",
                        sTitle : "菜单名称",
                        sWidth : "16%"
                    },
                    {
                        mData : "url",
                        sTitle : "访问路径"
                    },
                    {
                        mData : "pName",
                        sTitle : "上级菜单",
                        sClass : "hidden-480",
                        visible : true,
                        sWidth : "16%"
                    },
                    {
                        mData : "permission",
                        sTitle : "权限标识",
                        sClass : "hidden-480",
                        sWidth : "12%"
                    },
                    {
                        mData : "category",
                        sTitle : "权限类型",
                        sWidth : "8%",
                        sClass : "hidden-480",
                        render : function(value,type,row,meta){
                            if(value === 1){
                                return '查询权限';
                            }else if(value === 2){
                                return '编辑权限';
                            }else if(value === 3){
                                return '删除权限';
                            }else if(value === 4){
                                return '添加权限';
                            }else{
                                return "";
                            }
                        }
                    },
                    {
                        mData : "icon_style",
                        title : "图标",
                        sWidth : "6%",
                        sClass : "hidden-480",
                        render : function(value,type,row,meta){
                            return "<i class='"+value+"'></i>";
                        }
                    },
                    {
                        mData : "type",
                        title : "菜单类型",
                        sWidth : "8%",
                        sClass : "hidden-480",
                        render : function(value,type,row,meta){
                            if(value === 1){
                                return '导航菜单';
                            }else if(value === 2){
                                return '普通按钮';
                            }else if(value === 3){
                                return '行内按钮';
                            }else{
                                return "";
                            }
                        }
                    },
                    {
                        mData : "_kid_",
                        sClass : "hidden-480",
                        sTitle : "<label style='color:#000;'>操作选项</label>",
                        bSortable : false,
                        sWidth : "8%"
                    }
                ],
                columnDefs : [
                    {
                        targets : 0,//指定的列
                        render : function(value,type,row,meta){//第1个参数可能会没有值!!!,当key不存在时就没有值
                            return '<label><input type="checkbox" name="kid" value="'+value+'" style="cursor:pointer;text-decoration:none;outline:none;"/><span class="lbl"></span></label>';
                        }
                    },
                    {
                        targets : -1,//指定的列
                        render : function(value,type,row,meta){
                            return "<a href='javascript:thisPage.rowEdit("+meta.row+");' style='outline:none;text-decoration: none;color:#3b8cff;margin-left:6px;'>编辑</a><a href='javascript:thisPage.rowDel("+meta.row+");' style='outline:none;text-decoration: none;color:#f00;margin-left:6px;'>删除</a>";
                        }
                    },
                    {
                        targets: [1,2,3,4,5,6,7],
                        render: function (value,type,row,meta){
                            return pageDataTable.formatColumn(value);
                        }
                    }
                ]
            });
            pageDataTable.buttons(thisTable);
            pageDataTable.action(thisTable);
            pageDataTable.select(thisTable,tableDom);
            pageDataTable.tooltip();
            var thisJquery = $(tableDom).dataTable();
            var domTree = 'treeDom';
            var tree_obj = null;//变量标识,用于初始化及取消选中操作及获取已选中节点数据
            var setting = {
                view : {
                    expandSpeed : 100,
                    showLine : true,
                    showIcon : true,
                    fontCss : {"color":"#000","outline":"none","text-decoration":"none"}
                },
                data: {
                    simpleData: {
                        enable: true,
                        idKey: "kid",
                        pIdKey: "pid"
                    }
                },
                async : {
                    enable : true,
                    url : urlQueryTreeMenu,
                    cache : false,
                    type: "GET",
                    autoParam : ["kid"],
                    otherParam: ["accessToken",sessionStorage.getItem('accessToken'),"refreshToken",sessionStorage.getItem("refreshToken"),"token",function(){return $("#type").val()}],
                    dataFilter: function(treeId,parentNode,result){
                        layerFn.closeIndex(self.layerIndex);
                        var bl = layerFn.checkLogin(result);
                        if(bl){
                            thisPage.ztreeGetError('未登录或登录超时');
                            return;
                        }
                        if(result.code == AppKey.code.code200)return result.data;
                        if(result){
                            if(result.code != AppKey.code.code201){
                                layerFn.alert(result.msg,result.code);
                            }
                        }
                        return '';
                    }
                },
                callback : {
                    beforeAsync : function(dom){
                        if(ztreeReqFlag){
                            ztreeReqFlag = false;
                            self.layerIndex = layerFn.loading('正在处理……');
                        }
                    },
                    onAsyncSuccess : function(data){
                        layerFn.closeIndex(self.layerIndex);
                    },
                    onAsyncError : function(){
                        layerFn.alert(AppKey.msg_error);
                        thisPage.ztreeGetError('连接服务器失败');
                    },
                    beforeClick : function(treeId,node,clickFlag){// node 是json的数据格式,只是 node.isParent 的值是false或true
                        var _b_ = thisPage.menuOptions();
                        if(!_b_){
                            return false;
                        }
                        var select_type = winFn.getDomValue('#type');
                        var category = winFn.getDomValue('#category');
                        if(select_type == 1){//如果是导航菜单
                            if(category != 1){
                                layerFn.alert('菜单类型和权限类型不匹配',AppKey.code.code199);
                                return false;
                            }
                            if(!node.isParent){//如果不是父节点
                                thisPage.checkMenuTree();
                                return false;
                            }
                        }
                        if (select_type != '1'){//如果不是导航菜单
                            if(node.isParent){//如果是父节点,则提示错误
                                thisPage.checkMenuTree();
                                return false;
                            }
                        }
                        var keyId = winFn.getDomValue('#menu_edit_keyId');
                        if (!verifyFn.isEmpty(keyId) && node.kid == keyId){//在编辑时判断所选的目标导航菜单和当前的菜单是同一个菜单
                            thisPage.checkMenuTree();
                            return false;
                        }
                        return true;
                    },
                    onClick : function(event,treeIdDom,node,clickFlag){
                        winFn.setDomValue('#pName',node.name);
                        winFn.setDomValue('#pid',node.kid);
                    }
                }
            };
            thisPage = {
                init : function(){
                    this.addEvent();
                },
                ztreeGetError : function(msg){
                    msg = (msg == null || msg == '') ? '获取数据失败' : msg;
                    $('#treeDom').html("<li style='margin-top:2px;'><span>"+msg+"</span></li>");
                },
                menuOptions : function(){
                    if (verifyFn.inputRequired('#name')){
                        layerFn.alert('请输入菜单名称',AppKey.code.code199);
                        return false;
                    }
                    if (verifyFn.inputRequired('#url')){
                        layerFn.alert('请输入菜单url路径',AppKey.code.code199);
                        return false;
                    }
                    if (verifyFn.inputRequired('#type')){
                        layerFn.alert('请先选择菜单类型',AppKey.code.code199);
                        return false;
                    }
                    if (verifyFn.inputRequired('#permission')){
                        layerFn.alert('请输入菜单权限标识',AppKey.code.code199);
                        return false;
                    }
                    if (verifyFn.inputRequired('#category')){
                        layerFn.alert('请选择菜单权限类型',AppKey.code.code199);
                        return false;
                    }
                    return true;
                },
                checkMenuTree : function(){
                    thisPage.DelParentNode();
                    layerFn.alert('该节点不是有效的导航菜单',AppKey.code.code199);
                },
                addEvent : function(){
                    this.btnEvent();
                    $('#choiceType').on('click',function(){
                        thisPage.dropdownType('','选择类型');
                    });
                    $('#choiceNav').on('click',function(){
                        thisPage.dropdownType('1','导航菜单');
                    });
                    $('#choiceBtn').on('click',function(){
                        thisPage.dropdownType('2','普通按钮');
                    });
                    $('#choiceRow').on('click',function(){
                        thisPage.dropdownType('3','行内按钮');
                    });
                },
                divDisplay : function(value){
                    if(value == '2' || value == '3'){
                        document.getElementById("div_controller_subset").style.display="none";
                        document.getElementById("div_controller_icon").style.display="none";
                    }else{
                        document.getElementById("div_controller_subset").style.display="";
                        document.getElementById("div_controller_icon").style.display="";
                    }
                },
                btnEvent : function(){
                    $(tableDom +' tbody').on('dblclick','tr',function(){
                        thisPage.trDblclick(thisTable.row(this).data());
                    });
                    $('#btnAdd').on('click',function(){
                        thisPage.edit();
                    });
                    $('#btnSearch').on('click',function(){
                        thisPage.search();
                    });
                    $('#iconColumn').on('click',function(){
                        pageDataTable.columnCustom(thisTable,tableDom,'#divKeyColumns');
                    });
                    $('#iconRefresh').on('click',function(){
                        thisPage.search();
                    });
                    $('#btnDelPid').on('click',function(){
                        thisPage.DelParentNode();
                    });
                    $('#btnIconStyle').on('click',function(){
                        var _iconstyle = winFn.getDomValue('#icon_style');
                        if(_iconstyle == null){
                            layerFn.alert('请先选择菜单图标', AppKey.code.code199);
                            return;
                        }
                        layerFn.alert('<i class="menu-icon '+_iconstyle+' bigger-110"></i>');
                    });
                    $('#btnPickIcon').on('click',function(){
                        self.indexLayerTemp = layerFn.viewDialog('选择顶级菜单的图标','#divIconOptions',['850px','500px']);
                    });
                    $("#divIconOptions div div a i").each(function(){
                        $(this).attr("title","点击获取菜单图标");
                        $(this).css({"cursor":"pointer"});
                        $(this).click(function(){
                            layerFn.closeIndex(self.indexLayerTemp);
                            var _cls = $(this).attr("class");
                            winFn.setDomValue('#icon_style',_cls);
                            /*layerFn.confirm('你确定要选择当前 <i class="menu-icon '+_cls+'"></i> 作为菜单图标吗?',function(){
                                layerFn.closeIndex(self.indexLayerTemp);
                                winFn.setDomValue('#icon_style',_cls);
                            });*/
                        });
                    });
                    $("#divIconOptions div div a").each(function(){
                        $(this).attr("title","点击获取菜单图标");
                        $(this).css({"cursor":"pointer","outline":"none","text-decoration":"none"});
                        $(this).click(function(){
                            layerFn.closeIndex(self.indexLayerTemp);
                            var _cls = $(this).children(":first").attr("class");
                            winFn.setDomValue('#icon_style',_cls);
                        });
                    });
                },
                /*删除父节点*/
                DelParentNode : function(){
                    $('#pid').val('');
                    $('#pName').val('');
                    if(tree_obj != null){//先定义一个变量,再操作,否则会报错 null
                        tree_obj.cancelSelectedNode();//取消选中
                    }
                },
                trDblclick : function(data){
                    thisPage.edit(data.kid);
                },
                search : function(){
                    $(tableDom + ' input[type=checkbox]').prop('checked',false);
                    thisTable.draw();
                },
                resetFormMen : function(){
                    winFn.dropdown('#type','','#dropdownMenuType','选择类型');
                    winFn.dropdown('#category','','#dropdownCategory','权限类型');
                    winFn.dropdown('#subset','','#dropdownSubset','菜单选项');
                    winFn.clearFormData('#form_menu_edit');
                    thisPage.DelParentNode();
                },
                edit : function(kid){
                    ztreeReqFlag = true;
                    var title = '添加菜单';
                    if(kid != null && kid.length >0){
                        title = '编辑菜单';
                        winFn.setDomValue('#menu_edit_keyId',kid);
                        layerFn.queryByIdHint(urlQueryById,kid,function(data){
                            thisPage.openDialog(title,kid,data);
                        });
                    }else{
                        winFn.setDomValue('#menu_edit_keyId','');
                        thisPage.openDialog(title,null,null);
                    }
                },
                openDialog : function(title,kid,map){
                    layerFn.addOrEdit(title,'#div_menu_edit',['550px','500px'],function(index,layero){
                        var _b_ = thisPage.menuOptions();
                        if(!_b_){
                            return false;
                        }
                        var select_type = winFn.getDomValue('#type');
                        var category = winFn.getDomValue('#category');
                        var subId = winFn.getDomValue('#subId');
                        if(subId != null && subId != ''){
                            if(select_type != 1){
                                layerFn.alert('当前编辑的菜单只能是导航菜单',AppKey.code.code199);
                                return;
                            }
                        }
                        if(select_type == 1){
                            if(category != 1){
                                layerFn.alert('菜单类型和权限类型不匹配',AppKey.code.code199);
                                return;
                            }
                            if (verifyFn.inputRequired('#subset')){
                                layerFn.alert('请选择该菜单是否还有子页面',AppKey.code.code199);
                                return;
                            }
                        }
                        if(select_type != 1){
                            var pId = winFn.getDomValue('#pid');
                            if (pId == null || pId == ''){
                                layerFn.alert('您没有选择父级菜单',AppKey.code.code199);
                                return;
                            }
                        }
                        var node = tree_obj.getSelectedNodes();// node 是json的数据格式,但可以打印看看;只是 node.isParent 的值是false或true
                        if(select_type == 1){
                            if(category != 1){
                                layerFn.alert('菜单类型和权限类型不匹配',AppKey.code.code199);
                                return;
                            }
                            if(!verifyFn.isEmpty(node)){
                                if(node.isParent){//如果不是父节点,有提示
                                    thisPage.checkMenuTree();
                                    return;
                                }
                            }
                        }
                        var pId = winFn.getDomValue('#pid');
                        var icon_style = winFn.getDomValue('#icon_style');
                        if(icon_style != null && icon_style != ''){
                            if(icon_style.indexOf("menu-icon") != -1){
                            }else{
                                icon_style = 'menu-icon ' + icon_style;
                            }
                        }
                        if (pId == null || pId == ''){//验证已选择的下拉菜单和父级菜单是不是相吻合;验证当下拉菜单不为导航菜单时,那必须选择父级菜单,也可以采用逆向思维,也就是说当你选择为普通按钮或行按钮时那必须父级菜单!当也必须添加菜单url地址
                            if(select_type == '2' || select_type == '3') {
                                layerFn.alert('请选择父级菜单',AppKey.code.code199);
                                return;
                            }
                            if(verifyFn.inputRequired('#icon_style')){
                                layerFn.alert('请选择菜单图标',AppKey.code.code199);
                                return;
                            }
                        }else{
                            icon_style = null;
                        }
                        var url = winFn.getDomValue('#url');
                        var subset = winFn.getDomValue('#subset');
                        if(select_type == 1){//导航菜单只能是查询
                            if(verifyFn.isEmpty(subset)){
                                layerFn.alert('请选择该菜单是否还有子页面',AppKey.code.code199);
                                return;
                            }
                            if(category != 1){
                                layerFn.alert('权限类型有误',AppKey.code.code199);
                                return;
                            }
                        }
                        if(verifyFn.isEmpty(subset)){
                            subset = 0;
                        }
                        var params = {
                            name : winFn.getDomValue('#name'),
                            permission : winFn.getDomValue('#permission'),
                            category : winFn.getDomValue('#category'),
                            icon_style : winFn.getDomValue('#icon_style'),
                            pid : winFn.getDomValue('#pid'),
                            url : winFn.getDomValue('#url'),
                            subset : subset,
                            type : winFn.getDomValue('#type'),
                            kid : winFn.getDomValue('#menu_edit_keyId'),
                            order_by : winFn.getDomValue('#order_by'),
                        };
                        thisPage.commit(kid,index,params);
                    },'<span style="color:#f84009;">重置</span>',function(){
                        thisPage.resetFormMen();//清空表单
                        tree_obj.cancelSelectedNode();//取消选中
                        tree_obj.expandAll(false);//全部折叠,只能放在这里,否则会报错!
                    });
                    thisPage.resetFormMen();
                    tree_obj = $.fn.zTree.init($("#"+domTree),setting);//初始化树形菜单及并读取数据
                    if(map != null){
                        $.each(map.data,function(k,v){
                            $('#'+k).val(v);
                        });
                        thisPage.callShow(map.data);
                        thisPage.divDisplay(map.data.type);//根据值是否显示‘是否还有子页面’及‘菜单图标’选项
                    }else{
                        thisPage.divDisplay('1');//默认显示‘是否还有子页面’及‘菜单图标’选项
                    }
                },
                callShow : function(values){
                    switch (values.subset){
                        case 1:
                            winFn.writeBack('#dropdownSubset','有子页面');
                            break;
                        case 0:
                            winFn.writeBack('#dropdownSubset','无子页面');
                            break;
                        default:
                            winFn.writeBack('#dropdownSubset','菜单选项');
                            break;
                    }
                    switch (values.category){
                        case 1:
                            winFn.writeBack('#dropdownCategory','查询权限');
                            break;
                        case 2:
                            winFn.writeBack('#dropdownCategory','编辑权限');
                            break;
                        case 3:
                            winFn.writeBack('#dropdownCategory','删除权限');
                            break;
                        case 4:
                            winFn.writeBack('#dropdownCategory','添加权限');
                            break;
                        default:
                            winFn.writeBack('#dropdownCategory','权限类型');
                            break;
                    }
                    switch (values.type){
                        case 1:
                            winFn.writeBack('#dropdownMenuType','导航菜单');
                            break;
                        case 2:
                            winFn.writeBack('#dropdownMenuType','普通按钮');
                            break;
                        case 3:
                            winFn.writeBack('#dropdownMenuType','行内按钮');
                            break;
                        default:
                            winFn.writeBack('#dropdownMenuType','选择类型');
                            break;
                    }
                },
                rowEdit : function(index){
                    thisPage.edit(thisJquery.fnGetData(index).kid);
                },
                rowDel : function(index){
                    var row = thisJquery.fnGetData(index);
                    layerFn.confirm('['+row.name+']删除后连同角色菜单及用户私有菜单都被删除且是无法恢复,确定要删除吗?',function(){
                        layerFn.delByIdHint(urlDelById,row.kid,function(data){
                            thisPage.complete(data,null,true);
                        });
                    });
                },
                /*下拉菜单赋值*/
                dropdownType : function(type,text){
                    $('#key_type').val(type);
                    $('#menuShow').text(text);
                },
                commit : function(kid,index,params){
                    var url = urlAdd;
                    if (kid != null && kid != ''){
                        url = urlEdit;
                    }
                    layerFn.submit(url,params,function(data){
                        thisPage.complete(data,index,true);
                    });
                },
                complete : function(data,index,search){
                    try{
                        if(index){
                            layerFn.closeIndex(index);
                        }
                        if(search){
                            thisPage.search();
                        }
                        if(data){
                            layerFn.handleResult(data.msg,data.code);
                        }
                    }catch(e){}
                }
            };
            thisPage.init();
        });
    });
</script>