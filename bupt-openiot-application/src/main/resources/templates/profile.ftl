<!DOCTYPE html>
<html>
  <head>
    <title>设备影子</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="this is my page">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
     <link rel="stylesheet" type="text/css" href="${request.contextPath}/static/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/static/bootstrap/css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="${request.contextPath}/static/css/login.css">

  </head>
  
  <body>
   <nav class="navbar navbar-inverse bar" role="navigation">
    <div class="container-fluid">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse"
                data-target="#example-navbar-collapse">
            <span class="sr-only">切换导航</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="${request.contextPath}/api/noauth/homepage"><span>CHENSI </span><span> 物管理</span></a>
    </div>
<div class="collapse navbar-collapse " id="example-navbar-collapse" >
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    chensi <b class="caret"></b>
                </a>
                
                <ul class="dropdown-menu">
                    <li><a href="${request.contextPath}/api/noauth/user/personui">个人中心</a></li>
                    <li><a href="${request.contextPath}/">退出登录</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>

<div class="container" style='margin-top: -19px;width:100%'>
	<div class="row">
		<div class="col-md-2 nav_left">
			<ul class="nav nav-stacked nav-pills">
  				<li ><a href="${request.contextPath}/api/noauth/homepage"><span> < 返回设备列表</span></a></li>
  				<li class="active"><a href="#"><span class="glyphicon glyphicon-inbox"></span> 设备影子</a></li>	
			</ul>
		</div>
		<div class="col-md-10 col-md-offset-2 nav_right">
		<div>
		<div class="panel panel-default">
    		<div class="panel-heading">
        		<span class='d_name'> 设备名:${device.name}</span>
        		<span class='d_state btn-success'> 状态:${device.status}</span>
    		</div>
    		
    		
    		<div class="panel-body">
                    <!-- Wrapper -->
                    <div class="wrapper">

                            <div class="row">
                                <!-- Vertical Navigation -->
                                <div class="col-md-3">
                                    <div class="panel-group bs-sidebar" id="help-nav-bar" data-spy="affix" data-offset-top="100">
                                        <div class="panel">
                                            <div class="panel-heading">
                                                <a data-toggle="collapse" data-parent="#help-nav-bar" href="#help-nav-zeor">
                                                    <div class="btn btn-primary" style="    padding: 3px 21px;
                                                                                            font-size: 15px;">模板信息</div>
                                                </a>
                                            </div>
                                            <div id="help-nav-zeor" class="panel-collapse collapse in">
                                                <div class="panel-body" style="font-size: 20px;">
                                                    <ul>
                                                        <li><a href="#Attribute">属性</a></li>
                                                        <li><a href="#State">状态</a></li>
                                                        <li><a href="#Action">动作</a></li>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- / .col-md-3 -->
                                <div class="col-md-9" style="font-family:'微软雅黑';">
                                    <form class="form-horizontal" id="formid">
                                        <div class="panel-group" id="help-nav1">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <a data-toggle="collapse" id="Attribute" data-parent="#help-nav1" href="#help-nav-con-one">
                                                        <strong>属性</strong>
                                                    </a>
                                                </div>
                                                <div id="help-nav-con-one" class="panel-collapse collapse in">
                                                    <div class="panel-body">
                                                        <div class="form-group">
                                                            <label for="ThingType" class="col-sm-2 control-label col-sm-offset-1">物体类型</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control col-md-9" id="ThingType" placeholder="物体类型" name="ThingType">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="CoreFunction" class="col-sm-2 control-label col-sm-offset-1">核心功能</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="CoreFunction" placeholder="核心功能" name="CoreFunction">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Appearance" class="col-sm-2 control-label col-sm-offset-1">外观</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="Appearance" placeholder="外观" name="Appearance">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Environment" class="col-sm-2 control-label col-sm-offset-1">使用环境</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="Environment" placeholder="使用环境" name="Environment">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="ProducerName" class="col-sm-2 control-label col-sm-offset-1">生产商名称</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="ProducerName" placeholder="生产商名称" name="ProducerName">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Model" class="col-sm-2 control-label col-sm-offset-1">物体型号</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="Model" placeholder="物体型号" name="Model">
                                                            </div>
                                                        </div>
                                                        <div class="form-group">
                                                            <label for="Comment" class="col-sm-2 control-label col-sm-offset-1">其他信息</label>
                                                            <div class="col-sm-6">
                                                                <input type="text" class="form-control" id="Comment" placeholder="其他信息" name="Comment">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-group" id="help-nav2">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <a data-toggle="collapse" id="State" data-parent="#help-nav2" href="#help-nav-con-two">
                                                        <strong>状态</strong>
                                                    </a>
                                                </div>
                                                <div id="help-nav-con-two" class="panel-collapse collapse in">
                                                    <div class="panel-body">
                                                        <div id="usingstate-head">
                                                            <div id="usingstate">
                                                                <div class="page-header col-sm-10 col-sm-offset-1">
                                                                    <div class="col-sm-8">
                                                                        <h4>使用状态</h4>
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                    	<a class="btn btn-info " onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                                                                    	<a class="btn btn-danger " style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="usingStateID" class="col-sm-2 control-label col-sm-offset-1">状态标识</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="usingStateID" placeholder="状态标识" name="usingStateID">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="usingStateName" class="col-sm-2 control-label col-sm-offset-1">状态名称</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="usingStateName" placeholder="状态名称" name="usingStateName">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="usingStateValueType" class="col-sm-2 control-label col-sm-offset-1">状态值类型</label>
                                                                    <div class="col-sm-6">
                                                                        <!-- <input type="text" class="form-control" id="usingStateValueType" placeholder="状态值类型" name="usingStateValueType"> -->
                                                                        <select class="form-control" id="usingStateValueType" name="usingStateValueType"></select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="usingDefaultValue" class="col-sm-2 control-label col-sm-offset-1">默认值</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="usingDefaultValue" placeholder="默认值" name="usingDefaultValue">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="usingStateUnit" class="col-sm-2 control-label col-sm-offset-1">状态值单位</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="usingStateUnit" placeholder="状态值单位" name="usingStateUnit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="faultstate-head">
                                                            <div id="faultstate">
                                                                <div class="page-header col-sm-10 col-sm-offset-1">
                                                                    <div class="col-sm-8">
                                                                        <h4>故障状态</h4>
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                    	<a class="btn btn-info " onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                                                                    	<a class="btn btn-danger " style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="faultStateID" class="col-sm-2 control-label col-sm-offset-1">状态标识</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="faultStateID" placeholder="状态标识" name="faultStateID">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="faultStateName" class="col-sm-2 control-label col-sm-offset-1">状态名称</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="faultStateName" placeholder="状态名称" name="faultStateName">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="faultStateValueType" class="col-sm-2 control-label col-sm-offset-1">状态值类型</label>
                                                                    <div class="col-sm-6">
                                                                       <!--  <input type="text" class="form-control" id="faultStateValueType" placeholder="状态值类型" name="faultStateValueType"> -->
                                                                        <select class="form-control" id="faultStateValueType" name="faultStateValueType"></select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="faultDefaultValue" class="col-sm-2 control-label col-sm-offset-1">默认值</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="faultDefaultValue" placeholder="默认值" name="faultDefaultValue">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="faultStateUnit" class="col-sm-2 control-label col-sm-offset-1">状态值单位</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="faultStateUnit" placeholder="状态值单位" name="faultStateUnit">
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel-group" id="help-nav3">
                                            <div class="panel">
                                                <div class="panel-heading">
                                                    <a data-toggle="collapse" id="Action" data-parent="#help-nav3" href="#help-nav-con-three">
                                                        <strong>动作</strong>
                                                    </a>
                                                </div>
                                                <div id="help-nav-con-three" class="panel-collapse collapse in">
                                                    <div class="panel-body">
                                                        <div id="interface-head">
                                                            <div id="interface">
                                                                <div class="page-header col-sm-10 col-sm-offset-1">
                                                                    <div class="col-sm-8">
                                                                        <h4>接口</h4>
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                    	<a class="btn btn-info " onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                                                                    	<a class="btn btn-danger " style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="InterfaceID" class="col-sm-2 control-label col-sm-offset-1">接口标识</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="InterfaceID" placeholder="接口标识" name="InterfaceID">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="InterfaceName" class="col-sm-2 control-label col-sm-offset-1">接口名称</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="InterfaceName" placeholder="接口名称" name="InterfaceName">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="FunctionEffect" class="col-sm-2 control-label col-sm-offset-1">接口描述</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="FunctionEffect" placeholder="功能描述" name="FunctionEffect">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="InterfaceDirection" class="col-sm-2 control-label col-sm-offset-1">接口方向</label>
                                                                    <div class="col-sm-6">
                                                                        <select class="form-control" id="InterfaceDirection" name="InterfaceDirection"></select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group" id="interfaceParameter-head">
                                                                    <div id="interfaceParameter">
                                                                        <div class="page-header col-sm-10  col-sm-offset-1">
                                                                            <div class="col-sm-8">
                		                                                        <h4>接口参数</h4>
                		                                                    </div>
                		                                                    <div class="col-sm-4">
                		                                                    	<a class="btn btn-info " onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                		                                                    	<a class="btn btn-danger " style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                		                                                    </div>

                                                                        </div>
                                                                        <div >
                                                                            <div class="form-group">
                                                                                <label for="ParameterID" class="col-sm-3 control-label ">参数标识</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="ParameterID" placeholder="参数标识" name="ParameterID">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="ParameterType" class="col-sm-3 control-label">参数类型</label>
                                                                                <div class="col-sm-6">
                                                                                    <!-- <input type="text" class="form-control" id="ParameterType" placeholder="参数类型" name="ParameterType"> -->
                                                                                    <select class="form-control" id="ParameterType" name="ParameterType"></select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="ParameterComment" class="col-sm-3 control-label">参数描述</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="ParameterComment" placeholder="参数描述" name="ParameterComment">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="Value" class="col-sm-3 control-label">参数值</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="value" placeholder="参数值" name="Value">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="ValueCommet" class="col-sm-3 control-label">参数值描述</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="valueComment" placeholder="参数值描述" name="ValueComment">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group" id="interfaceResult-head">
                                                                    <div id="interfaceResult">
                                                                        <div class="page-header col-sm-10 col-sm-offset-1">
                                                                            <div class="col-sm-8">
                		                                                        <h4>接口返回值</h4>
                		                                                    </div>
                		                                                    <div class="col-sm-4">
                		                                                    	<a class="btn btn-info" onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                		                                                    	<a class="btn btn-danger" style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                		                                                    </div>
                                                                        </div>
                                                                        <div >
                                                                            <div class="form-group">
                                                                                <label for="ResultID" class="col-sm-3 control-label">返回值标识</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="ResultID" placeholder="返回值标识" name="ResultID">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="ResultType" class="col-sm-3 control-label">返回值类型</label>
                                                                                <div class="col-sm-6">
                                                                                    <select class="form-control" id="ResultType" name="ResultType"></select>
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="ResultComment" class="col-sm-3 control-label">返回值描述</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="ResultComment" placeholder="返回值描述" name="ResultComment">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="value" class="col-sm-3 control-label">返回值</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="value" placeholder="返回值" name="Value">
                                                                                </div>
                                                                            </div>
                                                                            <div class="form-group">
                                                                                <label for="valueCommet" class="col-sm-3 control-label">返回值描述</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="valueComment" placeholder="返回值描述" name="ValueComment">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div id="interface-head">
                                                            <div id="interface">
                                                                <div class="page-header col-sm-10 col-sm-offset-1">
                                                                    <h4>通信</h4>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="ComMethod" class="col-sm-2 control-label col-sm-offset-1">通信方式</label>
                                                                    <div class="col-sm-6">
                                                                        <select class="form-control" id="ComMethod" name="ComMethod"></select>
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="ComProtocol" class="col-sm-2 control-label col-sm-offset-1">通信协议</label>
                                                                    <div class="col-sm-6">
                                                                        <select class="form-control" id="ComProtocol" name="ComProtocol"></select>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- <div class="panel">
                                                <div class="panel-heading">
                                                    <a data-toggle="collapse" id="Capability" data-parent="#help-nav" href="#help-nav-con-four">
                                                        <strong>能力</strong>
                                                    </a>
                                                </div>
                                                <div id="help-nav-con-four" class="panel-collapse collapse in">
                                                    <div class="panel-body">
                                                        <div id="function-head">
                                                            <div id="function">
                                                                <div class="page-header col-sm-10 col-sm-offset-1">
                                                                    <div class="pull-left">
                                                                        <h4>功能</h4>
                                                                    </div>
                                                                    <a class="btn btn-info btn-xs pull-right" style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                                                                    <a class="btn btn-warning btn-xs pull-right" onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="FunctionID" class="col-sm-2 control-label col-sm-offset-1">功能标识</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="FunctionID" placeholder="功能标识" name="FunctionID">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="FunctionName" class="col-sm-2 control-label col-sm-offset-1">功能名称</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="FunctionName" placeholder="功能名称" name="FunctionName">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group">
                                                                    <label for="FunctionEffect" class="col-sm-2 control-label col-sm-offset-1">功能描述</label>
                                                                    <div class="col-sm-6">
                                                                        <input type="text" class="form-control" id="FunctionEffect" placeholder="功能描述" name="FunctionEffect">
                                                                    </div>
                                                                </div>
                                                                <div class="form-group" id="functionRelate-head">
                                                                    <div id="functionRelate">
                                                                        <div class="page-header col-sm-10 col-sm-offset-2">
                                                                            <div class="pull-left">
                                                                                <h4>功能关联接口</h4>
                                                                            </div>
                                                                            <a class="btn btn-info btn-xs pull-right" style="margin-left:10px;" onclick="delItem(this)"><i class="fa fa-minus"></i>删除</a>
                                                                            <a class="btn btn-warning btn-xs pull-right" onclick="addItem(this)"><i class="fa fa-plus"></i>添加</a>
                                                                        </div>
                                                                        <div class="col-sm-offset-2">
                                                                            <div class="form-group">
                                                                                <label for="functionInterfaceID" class="col-sm-3 control-label">接口标识</label>
                                                                                <div class="col-sm-6">
                                                                                    <input type="text" class="form-control" id="InterfaceID" placeholder="接口标识" name="functionInterfaceID">
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> -->
                                        </div>

                                        <br />
                                        <a id="createMod" class="btn-animate btn-style btn-lg btn-d btn-blue" data-loading-text="加载中...">提交</a>
                                        <a href="${request.contextPath}/api/noauth/homepage" class="btn-animate btn-style btn-lg btn-d btn-blue" data-loading-text="加载中...">取消</a>
                                    </form>
                                </div>
                                <!-- / .col-md-9 -->
                            </div>
                            <!-- / .row -->
                        </div>
                        <!-- / .container -->
                    </div>
    		</div>
    		
		</div>
        </div>
		</div>

</div>
<footer class="footer">
<div class='container'>
<div class='row'>
	<div class= 'col-md-3'>联系我们</div>
	<div class= 'col-md-3'>教程指导</div>
	<div class= 'col-md-3'>Powered by CHENSI</div>
	
</div>

</div>
</footer>
<script src="${request.contextPath}/static/js/jquery.min.js"></script>
<script src="${request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript">
    //增加项目
    function addItem(item) {
    	var par = item.parentNode.parentNode.parentNode;
		var items = $(par).clone(true);

        items.find("input").each(function() {
            $(this).val("");
        })

        $(par.parentNode).append(items);

    }
    // 删除项目
    function delItem(obj) {
        var d_obj = obj.parentNode.parentNode.parentNode;
        var num = d_obj.parentNode.children.length;

        if (num > 1) {
            if (confirm("您确实要删除此条信息？")) {
                d_obj.parentNode.removeChild(d_obj);
            }
        } else {
            alert("至少要有1个");
        }
    }

    $(function() {
        //通信方式
        $.ajax({
            url: "${request.contextPath}/api/noauth/communicationmethod",
            type: "get",
            dataType: "json",
            success: function(result) {
                $("#ComMethod").html("<option value=''>请选择</option>");
                $.each(result, function(key, data) {
                    $("#ComMethod").append("<option value=" + data.comMethodId + ">" + data.comMethod + "</option>");
                })
            }
        })
        //通信协议
        $.ajax({
            url: "${request.contextPath}/api/noauth/communicationprotocol",
            type: "get",
            dataType: "json",
            success: function(result) {
                $("#ComProtocol").html("<option value=''>请选择</option>");
                $.each(result, function(key, data) {
                    $("#ComProtocol").append("<option value=" + data.comProtocolId + ">" + data.comProtocol + "</option>");
                })
            }
        })
        //接口方向
        $.ajax({
            url: "${request.contextPath}/api/noauth/functiondirection",
            type: "get",
            dataType: "json",
            success: function(result) {
                $("#InterfaceDirection").html("<option value=''>请选择</option>");
                $.each(result, function(key, data) {
                    $("#InterfaceDirection").append("<option value=" + data.funDirectionId + ">" + data.funDirection + "</option>");
                })
            }
        })

        //返回值类型
        $.ajax({
            url: "${request.contextPath}/api/noauth/parametertype",
            type: "get",
            dataType: "json",
            success: function(result) {
            	$("#usingStateValueType").html("<option value=''>请选择</option>");
                $("#faultStateValueType").html("<option value=''>请选择</option>");
                $("#ResultType").html("<option value=''>请选择</option>");
                $("#ParameterType").html("<option value=''>请选择</option>");

                $.each(result, function(key, data) {
                	$("#usingStateValueType").append("<option value=" + data.parameterTypeId + ">" + data.parameterType + "</option>");
                    $("#faultStateValueType").append("<option value=" + data.parameterTypeId + ">" + data.parameterType + "</option>");
                    $("#ResultType").append("<option value=" + data.parameterTypeId + ">" + data.parameterType + "</option>");
                    $("#ParameterType").append("<option value=" + data.parameterTypeId + ">" + data.parameterType + "</option>");
                })


            }
        })

        function serializationForm(){
        	var arr = $("#formid").serializeArray();
            console.log(JSON.stringify(arr));

            var res = {
                Attribute: {
                    Identification: {
                        ThingID: "",
                        ThingName: "",
                        ThingType: "",
                        Keywords: ""
                    },
                    Characteristic: {
                        CoreFunction: "",
                        Appearance: "",
                        Evironment: "",
                        Production: {
                            ProducerName: "",
                            Model: "",
                            ProduceTime: "",
                            ValidTime: "",
                            Comment: ""
                        }
                    }
                },
                State: {
                    Working: {
                        UsingState: [],
                        FaultState: []
                    },
                    Location: {
                        NetworkLocation: {
                            IPAddress: {IP:"",UserName:"",Password:""},
                            MacAddress: "",
                            OtherAddress: ""
                        },
                        GeoLocation: {
                            Country: "",
                            Province: "",
                            City: "",
                            DetailLocation: "",
                            Longitude: "",
                            Latitude: "",
                            Altitude: ""
                        },
                        TimeReference: ""
                    }
                },
                Action: {
                    Interface: [],
                    Accessibility: {
                        Communication: {
                            ComMethod: "",
                            ComProtocol: ""
                        },
                        Administration: {
                            Contact: "",
                            ContactAddress: "",
                            ContactComment: "",
                            LegalConstraints: "",
                            SecurityConstraints: ""
                        }
                    }
                },
                Capability: {
                    Function: [],
                    Data: [{"DataID":"","DataType":"","DataEffect":"","DataRelate":[{"InterfaceID":""}]}]
                }
            };

            for (var i = 0; i < arr.length; i++) {

                if (arr[i].name == 'usingStateID' && arr[i].value != '') {
                    var usingstate = {"StateID":"","StateName":"","StateValueType":"","DefaultValue":"","StateUnit":""};
                    for (var j = i; j < i + 5; j++) {
                    	if(arr[j].name === "usingStateValueType"){
                    		var value = getSelectChecked($("#"+arr[j].name)[0],arr[j].value);
                    		addPro(usingstate, arr[j].name.slice(5), value);
                    	}else addPro(usingstate, arr[j].name.slice(5), arr[j].value);

                    }
                    res.State.Working.UsingState.push(usingstate);
                    i += 4;
                } else if (arr[i].name == 'faultStateID' && arr[i].value != '') {
                    var faultstate = {"StateID":"","StateName":"","StateValueType":"","DefaultValue":"","StateUnit":""};
                    for (var j = i; j < i + 5; j++) {
                    	if(arr[j].name === "faultStateValueType"){
                    		if(arr[i].value=="") continue;
                    		var value = getSelectChecked($("#"+arr[j].name)[0],arr[j].value);
                    		addPro(faultstate, arr[j].name.slice(5), value);
                    	}else addPro(faultstate, arr[j].name.slice(5), arr[j].value);
                    }
                    res.State.Working.FaultState.push(faultstate);
                    i += 4;
                } else if (arr[i].name == 'InterfaceID') {
                    var interface = {
                        InterfaceParameter: [], InterfaceResult: []
                    };
                    var capfunction = {
                    	FunctionID : "",
						FunctionName : "",
						FunctionEffect : "",
                        FunctionRelate: {InterfaceID:""}
                    };
                    for (var j = i; j < i + 4; j++) {
                    	if(arr[j].name === "FunctionEffect"){
                    		capfunction.FunctionEffect = arr[j].value;
                    		continue;
                    	}

                    	if(arr[j].name === "InterfaceDirection"){

                    		var value = getSelectChecked($("#InterfaceDirection")[0],arr[j].value);

                    		addPro(interface, arr[j].name, value);
                    	}else addPro(interface, arr[j].name, arr[j].value);

                    }
                    capfunction.FunctionID = interface.InterfaceID;
                    capfunction.FunctionName = interface.InterfaceName;
                    capfunction.FunctionRelate.InterfaceID = interface.InterfaceID;

                    i += 4;
                    while (arr[i].name == 'ParameterID'&& arr[i].value != '') {
                        var interfaceParameter = {"ParameterID":"","ParameterType":"","ParameterComment":"","Value":"","ValueComment":""};
                        //var flag=false;
                        for (var k = i; k < i + 5; k++) {
                        	if(arr[k].name === "ParameterType"){
                        		if(arr[k].value=="") continue;
                        		var value = getSelectChecked($("#ParameterType")[0],arr[k].value);
                        		addPro(interfaceParameter, arr[k].name, value);
                        	}else addPro(interfaceParameter, arr[k].name, arr[k].value);
                        }
                        console.log(interfaceParameter);
                        interface.InterfaceParameter.push(interfaceParameter);
                        i += 5;
                    }
                    while (arr[i].name == 'ParameterID' && arr[i].value == '') {
                        i += 5;
                    }
                    while (arr[i].name == 'ResultID'&& arr[i].value != '') {
                        var interfaceResult = {"ResultID":"","ResultType":"","ResultComment":"","value":"","valueComment":""};
                        for (var k = i; k < i + 5; k++) {
                        	if(arr[k].name === "ResultType"){
                        		if(arr[k].value=="") continue;
                        		var value = getSelectChecked($("#ResultType")[0],arr[k].value);
                        		addPro(interfaceResult, arr[k].name, value);
                        	}else addPro(interfaceResult, arr[k].name, arr[k].value);
                        }
                        console.log(interfaceResult);
                        interface.InterfaceResult.push(interfaceResult);
                        i += 5;
                    }
                    //console.log(interface);
                    res.Action.Interface.push(interface);
                    res.Capability.Function.push(capfunction);
                    i--;
                }else jiexi(arr[i], res);
                /*else if (arr[i].name == 'FunctionID') {
                    var capfunction = {
                        FunctionRelate: []
                    };
                    for (var j = i; j < i + 3; j++) {
                        addPro(capfunction, arr[j].name, arr[j].value);
                    }
                    i += 3;
                    while (i < arr.length && arr[i].name == 'functionInterfaceID') {
                        var interfaceID = {};
                        addPro(interfaceID, 'InterfaceID', arr[i].value);
                        capfunction.FunctionRelate.push(interfaceID);
                        i++;
                    }
                    res.Capability.Function.push(capfunction);
                } */
            }


			console.log(JSON.stringify(res));
            return res;
        }
        $("#downloadMod").click(function() {
        	var $btn = $(this).button('loading');

			if ($('.form-horizontal').validate().form()) {

            	var result = serializationForm();
				console.log(result);
                $.ajax({
                    url: "petemplate/register.do",
                    type: "post",
                    data: {
                        petemplate: JSON.stringify(result)
                    },
                    success: function(data) {
                        if (data == "success")
                        	window.open("petemplate/download.do?ProducerName=" + result.Attribute.Characteristic.Production.ProducerName + "&ThingType=" + result.Attribute.Identification.ThingType + "&Model=" + result.Attribute.Characteristic.Production.Model);
                        	//window.open("petemplate/download/" + result.Attribute.Identification.ThingType + "/" + result.Attribute.Characteristic.Production.ProducerName + "/" + result.Attribute.Characteristic.Production.Model + ".do");
                        else
                            alert(data);
                    },
                    error: function() {

                    }
                })
            }
			setTimeout(function () {$btn.button("reset");},800);
        })
        $("#createMod").click(function() {
        	var $btn = $(this).button('loading');
            var result = serializationForm();
            console.log(result);
            $.ajax({
                url: "${request.contextPath}/api/noauth/device/createMod",
                type: "post",
                data: {
                    petemplate: JSON.stringify(result)
                },
                success: function(data) {
                    window.location.href = "${request.contextPath}/api/noauth/homepage";
                },
                error: function() {

                }
            })
            setTimeout(function () {$btn.button("reset");},800);
        })

        function jiexi(obj, res) {
            var name = obj.name;
            var value = obj.value;
            switch (name) {
                case "ThingType":
                    addPro(res.Attribute.Identification, name, value);
                    break;
                case "CoreFunction":
                case "Appearance":
                case "Environment":
                    addPro(res.Attribute.Characteristic, name, value);
                    break;
                case "ProducerName":
                case "Model":
                case "Comment":
                    addPro(res.Attribute.Characteristic.Production, name, value);
                    break;
                case "ComMethod":
                    addPro(res.Action.Accessibility.Communication, name,  $("#ComMethod option:selected").text());
                    break;
                case "ComProtocol":
                    addPro(res.Action.Accessibility.Communication, name, $("#ComProtocol option:selected").text());
                    break;
            }

        }
        // 参数：prop = 属性，val = 值
        function addPro(obj, prop, val) {

            // 如果 val 被忽略
            if (typeof val === "undefined") {
                // 删除属性
                delete obj[prop];
            }
            else {
                // 添加 或 修改
                obj[prop] = val;
            }
        }

        function getSelectChecked(select, checkValue){

            for(var i=1; i<select.options.length; i++){
                if(select.options[i].value == checkValue){
                    return  select.options[i].innerHTML;
                }
            }
        };
    })
    </script>
  </body>
</html>
