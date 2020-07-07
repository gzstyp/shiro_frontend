<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<div class="row">
    <div class="col-xs-12">
        <div class="row">
            <div class="col-xs-12">
                内容处,如果页面往左边移且水平出现滚动条的话，一定是加了class="row"在最里层
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var scripts = [null,null];
    $('.page-content-area').ace_ajax('loadScripts',scripts,function(){
        //已初始化,在编写js代码时的数组}最后不能多写“,”否则会报错不是对象
    });
</script>

<!--搜索栏的下拉列表-->
<td class="hidden-480" style="padding: 0px 6px;">权限类型</td>
<td class="hidden-480">
    <div class="input-group">
    <span class="input-group-btn">
        <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle col-sm-12" style="margin-left:0.01em">
            <span id="dropdowncategory">权限类型</span><!--注意显示文字-->
            <i class="ace-icon fa fa-angle-down"></i>
        </button>
        <ul class="dropdown-menu col-sm-12" style="margin-left:-1px;width:99px;min-width:99px;"><!--注意宽度-->
            <li>
                <a href="javascript:winFn.dropdown('#key_category','','#dropdowncategory','权限类型');">权限类型</a><!--注意显示文字-->
            </li>
            <li>
                <a href="javascript:winFn.dropdown('#key_category',1,'#dropdowncategory','查询权限');">查询权限</a>
            </li>
            <li>
                <a href="javascript:winFn.dropdown('#key_category',2,'#dropdowncategory','编辑权限');">编辑权限</a>
            </li>
        </ul>
        <input id="key_category" type="hidden"><!--注意搜索时隐藏域-->
    </span>
    </div>
</td>

表单时-复选框
<label class="col-sm-3 control-label no-padding-right"><div class="hr-4"></div>爱好</label>
<div class="col-sm-7">
    <div class="hr-4"></div>
    <div class="checkbox">
        <label>
            <input name="hobby" type="checkbox" class="ace" />
            <span class="lbl">登山</span>
        </label>
        <label>
            <input name="hobby" type="checkbox" class="ace" />
            <span class="lbl">游泳</span>
        </label>
        <label>
            <input name="hobby" type="checkbox" class="ace" disabled=""/>
            <span class="lbl">禁用</span>
        </label>
    </div>
</div>

取值:
var checkboxValue = '';
$("input[name='checkbox1']:checked").each(function(){
    var v = $(this).val();
    if(checkboxValue.length > 0){
        checkboxValue = checkboxValue + ',' + v;
    }else{
        checkboxValue = v;
    }
});
console.info(checkboxValue);
赋值:
方式1：
$("input:checkbox[value='1']").prop("checked",true);

方式2：
var arrs = [1,2];
$.each(arrs,function(index,value){
    $("input[name='checkbox1'][value="+value+"]").prop("checked",true);
});
方式3：
$("input[name='checkbox1']").each(function(index,element){
    var v = $(this).val();
    if(v == 1){
        $(this).prop("checked",true);
    }
});

表单时-单选框
<label class="col-sm-3 control-label no-padding-right"><div class="hr-4"></div>性别</label>
<div class="col-sm-7">
    <div class="hr-4"></div>
    <div class="radio">
        <label>
            <input name="gender" type="radio" class="ace" />
            <span class="lbl">男生</span>
        </label>
        <label>
            <input name="gender" type="radio" class="ace" />
            <span class="lbl">女生</span>
        </label>
        <label>
            <input name="gender" type="radio" class="ace" />
            <span class="lbl">保密</span>
        </label>
        <label>
            <input name="gender" type="radio" class="ace" disabled=""/>
            <span class="lbl">禁用</span>
        </label>
    </div>
</div>
赋值：
$("input[name='radio']").each(function(index,element){
    var v = $(this).val();
    if(v == 1){
        $(this).prop("checked",true);
    }
});
$.each(map.data,function(k,v){
    try{
        if(k =='STATE'){
            $("input[name='STATE']").each(function(index,element){
                var value = $(this).val();
                if(v == value){
                    $(this).prop("checked",true);
                }
            });
        }
        $('#'+k).val(v);
    }catch(e){}
});

取值：
var STATE = $("input[name='STATE']:checked").val();
console.info(STATE);



表单时-下拉列表项
<label class="col-sm-3 control-label no-padding-right"><div class="hr-4"></div>菜单权限标识</label>
<div class="col-sm-7">
    <div class="hr-4"></div>
    <div class="input-group">
        <span class="input-group-btn">
            <button data-toggle="dropdown" class="btn btn-primary btn-white dropdown-toggle col-sm-12" style="margin-left:0.01em">
                <span id="dropdownType">权限类型</span><!--注意显示文字-->
                <i class="ace-icon fa fa-angle-down"></i>
            </button>
            <ul class="dropdown-menu col-sm-12" style="margin-left:-1px;width:276px;min-width:276px;"><!--注意宽度-->
                <li>
                    <a href="javascript:winFn.dropdown('#dropdown_type','','#dropdownType','权限类型');">权限类型</a>
                </li>
                <li>
                    <a href="javascript:winFn.dropdown('#dropdown_type',1,'#dropdownType','查询权限');">查询权限</a>
                </li>
                <li>
                    <a href="javascript:winFn.dropdown('#dropdown_type',2,'#dropdownType','编辑权限');">编辑权限</a>
                </li>
            </ul>
            <input id="dropdown_type" type="hidden"><!--注意隐藏域-->
        </span>
    </div>
</div>