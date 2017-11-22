<!DOCTYPE html>
<html>
  <head>
    <title>能力评估</title>
	
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
        <a class="navbar-brand" href="${request.contextPath}/api/noauth/homepage"><span>CHENSI </span><span> 毕设2017</span></a>
    </div>
    <div class="collapse navbar-collapse " id="example-navbar-collapse" >
        <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                    chensi <b class="caret"></b>
                </a>
                
                <ul class="dropdown-menu">
                    <li><a href="${request.contextPath}/api/noauth/user/personui">个人中心</a></li>
                    <li><a href="${request.contextPath}/api/noauth/homepage">物管理</a></li>
                    <li><a href="${request.contextPath}/api/noauth/deviceaccess">物接入</a></li>
                    <li><a href="${request.contextPath}/">退出登录</a></li>
                </ul>
            </li>
        </ul>
    </div>
    </div>
</nav>
<div class="container container_body" >
<div class="row">
<div class="col-md-2 nav_left">
<ul class="nav nav-stacked nav-pills">
<li style='font-size: 18px;

    margin-left: -5px;'><a href="${request.contextPath}/api/noauth/homepage"><span class="glyphicon glyphicon-home"></span> <span> 物管理</span></a></li>
			<hr style='margin-top: 0px; border-top: 1px solid black;'>
  				<li ><a href="${request.contextPath}/api/noauth/homepage"><span class="glyphicon glyphicon-th-list"></span> <span> 设备列表</span></a></li>
  				<li ><a href="${request.contextPath}/api/noauth/devicegroup"><span class="glyphicon glyphicon-inbox"></span> 设备组</a></li>
  				
  				<li class="active"><a href="${request.contextPath}/api/noauth/capability/evaluate"><span class="glyphicon glyphicon-inbox"></span> 能力评估</a></li>
			</ul>
</div>
<div class="col-md-10 col-md-offset-2 ">

	<div class="panel panel-default" style='margin-top: 40px;'> 
    	<div class="panel-heading">
        	<h3 class="panel-title">能力展示表</h3>
   		</div>
   		
    	<div class="panel-body">
    	
    	 <ul class="nav nav-tabs">
    		<#--<li class="active"><a data-toggle="tab" href="#menu">飞行能力</a></li>
    		<li><a data-toggle="tab" href="#menu1">运输能力</a></li>
    		<li><a data-toggle="tab" href="#menu2">拍照能力</a></li>-->
             <tbody>
				 <#list pageInfo.list as capability>
                 	<li><a data-toggle="tab" href="#menu${capability.id}">${capability.name}</a></li>
				 </#list>
             </tbody>
  		</ul>

  		<div class="tab-content">
            <tbody>
				<#list pageInfo.list as capability>
					<div id="menu${capability.id}" class="tab-pane">
						<table class="table table-hover">
							<caption class='tab'>${capability.name}</caption>
							<thead>
							<tr>
								<th>编号</th>
								<th>设备名</th>
								<th>评估值</th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td><a href='${request.contextPath}/api/noauth/devicemanage/property?deviceId=${capability.deviceid}' >${capability.id}</a></td>
								<td>${capability.deviceName}</td>
								<td>${capability.cost}</td>
							</tr>
                            <tr>
                                <td><a href='${request.contextPath}/api/noauth/devicemanage/property?deviceId=${capability.deviceid}' >6</a></td>
                                <td>机器人</td>
                                <td>7</td>
                            </tr>
                            <tr>
                                <td><a href='${request.contextPath}/api/noauth/devicemanage/property?deviceId=${capability.deviceid}' >8</a></td>
                                <td>摄像头</td>
                                <td>4</td>
                            </tr>
                            <tr>
                                <td><a href='${request.contextPath}/api/noauth/devicemanage/property?deviceId=${capability.deviceid}' >14</a></td>
                                <td>小车</td>
                                <td>6</td>
                            </tr>

							</tbody>
						</table>
					</div>
				</#list>
            </tbody>
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
  </body>
</html>
