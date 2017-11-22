<!DOCTYPE html>
<html>
  <head>
    <title>物管理</title>
	
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
<div class="container container_body" style='margin-top: -19px;width:100%;min-height: 800px;'>
	<div class="row">
		<div class="col-md-2 nav_left">
		
			<ul class="nav nav-stacked nav-pills">
			<li style='font-size: 18px;

    margin-left: -5px;'><a href="${request.contextPath}/api/noauth/homepage"><span class="glyphicon glyphicon-home"></span> <span> 物管理</span></a></li>
			<hr style='margin-top: 0px; border-top: 1px solid black;'>
  				<li class="active"><a href="${request.contextPath}/api/noauth/homepage"><span class="glyphicon glyphicon-th-list"></span> <span> 设备列表</span></a></li>
  				<li><a href="${request.contextPath}/api/noauth/devicegroup"><span class="glyphicon glyphicon-inbox"></span> 设备组</a></li>
  				  				<li><a href="${request.contextPath}/api/noauth/capability/evaluate"><span class="glyphicon glyphicon-inbox"></span> 能力评估</a></li>
  				
			</ul>
		</div>
		<div class="col-md-10 col-md-offset-2 nav_right">
		<div>
			<div class="panel panel-default">
    			<div class="panel-heading">
        			<h3 class="panel-title">设备列表</h3>
   				</div>
    			<div class="panel-body">	
       				<button class="btn btn-primary" data-toggle="modal" data-target="#myModal">+ 创建设备</button>
    			</div>
    			<table class="table">
        			<th>设备名称</th>
        			<th>状态 </th>
        			<th>描述 </th>
        			<th>最后一次活跃时间 </th>
        			<th>设备影子 </th>
        			<th>操作 </th>
        			<th></th>
					<tbody>
						<#list pageInfo.list as device>
							<tr>
								<td><a href='${request.contextPath}/api/noauth/devicemanage/property?deviceId=${device.deviceid}'>${device.name}</a></td>
								<td>${device.status}</td>
								<td>${device.description}</td>
								<td>${device.lasttime?datetime}</td>
								<td><a href='${request.contextPath}/api/noauth/profile?deviceId=${device.deviceid}'>编辑</a></td>
								<td><a href='${request.contextPath}/api/noauth/device/delete?deviceId=${device.deviceid}' class='btn btn-danger'>删除</a>
									<a href='${request.contextPath}/api/noauth/devicemanage/control?deviceId=${device.deviceid}' class='btn btn-success'>控制</a></td>
							</tr>
						</#list>
					</tbody>

    			</table>
                <ul class="pager">
                   <li><a href="#">上一页</a></li>
                   <li><a href="#">下一页</a></li>
                </ul>
			</div>
			</div>
		</div>
	</div>
</div>
       				<!-- 模态框（Modal） -->
					<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    					<div class="modal-dialog">
       		 				<div class="modal-content">
            					<div class="modal-header">
                					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                					<h4 class="modal-title" id="myModalLabel">创建设备</h4>
            					</div>
            					<div class="modal-body">
            						<form class="form-horizontal" role="form" action="#" >
	
										<div class="form-group">
											<label  class="col-sm-3 control-label" style='text-align: left;'>设备名称</label>
											<div class="col-sm-9">
												<input type="text" class="form-control" id="name" placeholder="请输入名称" />
											</div>
										</div>
										<div class="form-group">
											<label  class="col-sm-3 control-label control-label1" style='text-align: left;'>设备描述</label>
											<div class="col-sm-9">
												<textarea class="form-control" rows="3" placeholder="长度n个字符" id="description"></textarea>
											</div>
										</div>
										<div class="form-group">
											<label  class="col-sm-3 control-label" style='text-align: left;'>通信协议</label>
											<div class="col-sm-9">
												MQTT
											</div>
										</div>
										<div class="form-group">
											<label  class="col-sm-3 control-label" style='text-align: left;'>选择设备组</label>
											<div class="col-sm-9" >
												<input type="text" class='add' placeholder="请输入名称" id="devicegroup"/>
												<input type="button" id="add" class= 'btn btn-primary pull-right' value="添加" />
											</div>
											<div class="col-sm-9 col-sm-offset-3" id='content'>
											</div>

										</div>
	
            					</div>
            						<div class="modal-footer">
            						<button type="button" class="btn btn-primary" id="create">创建</button>
                					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                					
            						</div>
        						</div><!-- /.modal-content -->
    					   </div><!-- /.modal -->
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
<script type="text/javascript">
	$("#add").click(){function({
		$("#content").html(123)
	});
	}
	i = 1;
	document.getElementById("add").onclick=function(){
		document.getElementById("content").innerHTML+='<input name="text" id="text_'+i+'" type="text" class="add" /><input type="button" id="btn_'+i+'"class="btn btn-danger pull-right" value="删除"  onclick="del('+i+')"/>';
		i = i + 1;
	}
	function del(o){
	 document.getElementById("content").removeChild(document.getElementById("text_"+o));
	 document.getElementById("content").removeChild(document.getElementById("btn_"+o));
	}
</script>
<script src="${request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#create").click(function (e) {
                e.preventDefault();
                var name = $("#name").val();
                var description = $("#description").val();
                var devicegroup = $("#devicegroup").val();
                $.ajax({
                    url: "${request.contextPath}/api/noauth/device/create",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    data: JSON.stringify({'name': name, 'description': description, 'devicegroup': devicegroup}),
                    dataType: "text",
                    success: function (result) {
                        console.log('success');
					<#--刷新-->
                        window.location.href = "${request.contextPath}/api/noauth/homepage";
                    },
                    error: function (msg) {
                        alert(msg.message);
                    }
                });
                return false;
            });
        });
    </script>

    <#--<script type="text/javascript">
        $(document).ready(function() {
            $("#dg").mousedown(function (e) {
                e.preventDefault();
                $.ajax({
                    url: "${request.contextPath}/api/noauth/devicegroup/data",
                    type: "GET",
                    contentType: "application/json;charset=utf-8",
                    dataType: "json",
                    success: function (result) {
                        console.log(result);
                        $("#devicegroup").html("");
						for (var i=0; i<result.size; i++) {
                            $("#devicegroup").append( "<option value=result.list[i].id>" + result.list[i].path + "</option>" );
						}
                    },
                    error: function (msg) {
                        alert(msg.message);
                    }
                });
                return false;
            });
        });
    </script>-->


  </body>
 
</html>
