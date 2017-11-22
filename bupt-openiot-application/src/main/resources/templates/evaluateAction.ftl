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
<div id='header'></div>
    <div class="container container_body" style='margin-top: -19px;width:100%;min-height: 800px;'>
	<div class="row">
	 <div id='left'></div>
	 <div class='col-md-10' style='    margin-left: 6%; margin-top: 49px;'>
	 	<div class="form-group">
	 	<div style='padding: 10px 1px;font-weight: 900;'>正在评估：${capability.name}</div>
		<table class="table table-bordered">
          <caption class='mark1'>打分表（按属性重要程度打分，1~10分）</caption>
          <thead>
            <tr>
              <th>重要度</th>
              <th>分数</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>非常不重要</td>
              <td>1</td>
            </tr>
            <tr>
              <td>不重要</td>
              <td>3</td>
            </tr>
            <tr>
              <td>一般重要</td>
              <td>5</td>
            </tr>
            <tr>
            <td>比较重要</td>
            <td>7</td>
            </tr>
            <tr>
            <td>非常重要</td>
            <td>9</td>
            </tr>
          </tbody>
        </table>
		<div id='attribute'>
            <form class="bs-example bs-example-form" role="form">
                <div class="input-group">
                    <span class="input-group-addon">最大高度</span>
                    <input type="text" class="form-control" placeholder="" id="maxhigh">
                </div> <br>
                <div class="input-group">
                    <span class="input-group-addon">爬升速度</span>
                    <input type="text" class="form-control" placeholder="" id="upspeed">
                </div> <br>
                <div class="input-group">
                    <span class="input-group-addon">平飞速度</span>
                    <input type="text" class="form-control" placeholder="" id="speed">
                </div> <br>
                <div class="input-group">
                    <span class="input-group-addon">续航时间</span>
                    <input type="text" class="form-control" placeholder="" id="endurancetime">
                </div> <br>
                <div class="input-group">
                    <span class="input-group-addon">耗费油量</span>
                    <input type="text" class="form-control" placeholder="" id="consumeoil">
                </div>
                <div class="input-group" style="display:none;">
                    <input type="text" class="form-control" placeholder="" id="capabilityId" value="${capability.capabilityid}">
                </div>
            </form>
		</div>

		<div style="text-align: center;margin-top: 15px;"><button class="btn btn-success " id="submit">提交</button></div>
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
<script>
$(document).ready(function(){
        var w1='<form class="bs-example bs-example-form" role="form">'+
                        '<div class="input-group">'+
                            '<span class="input-group-addon">最大高度</span>'+
                          ' <input type="text" class="form-control" placeholder="">' +
                       '</div>'+'<br>' +'<div class="input-group">'+
                     '<span class="input-group-addon"> 爬升速度</span>'+
                       ' <input type="text" class="form-control" placeholder="">' +
                       '</div>'+'<br>'+'<div class="input-group">'+
                         '<span class="input-group-addon"> 平飞速度</span>'+
                       ' <input type="text" class="form-control" placeholder="">' +
                        '</div>'+'<br>'+'<div class="input-group">'+
                       '<span class="input-group-addon"> 续航时间</span>'+
                        ' <input type="text" class="form-control" placeholder="">' +
                        '</div>'+'<br>'+'<div class="input-group">'+
                 '<span class="input-group-addon"> 耗费油量</span>'+
                     '<input type="text" class="form-control" placeholder="">' +
                        '</div>'+'</form>';
        var w2='<form class="bs-example bs-example-form" role="form">'+
                        '<div class="input-group">'+
                            '<span class="input-group-addon">最大载重量</span>'+
                          ' <input type="text" class="form-control" placeholder="">' +
                       '</div>'+'<br>' +'<div class="input-group">'+
                     '<span class="input-group-addon"> 行驶速度 </span>'+
                       ' <input type="text" class="form-control" placeholder="">' +
                       '</div>'+'<br>'+'<div class="input-group">'+
                         '<span class="input-group-addon">最大加速度</span>'+
                       ' <input type="text" class="form-control" placeholder="">' +
                        '</div>'+'<br>'+'<div class="input-group">'+
                 '<span class="input-group-addon"> 耗费油量</span>'+
                     '<input type="text" class="form-control" placeholder="">' +
                        '</div>'+'</form>';
    	/*$("select").change(function(){
    	var select=$(this).val();
		switch(select)
		{
    		*//*case "1":
        	$("#attribute").html(w1);
       		break;
    		case "2":
        	$("#attribute").html(w2);
        	break;
        	case "3":
        	$("#attribute").html(w1);
        	break;
    		default:
        	break;*//*
		}
		});*/
});
    </script>

    <script type="text/javascript">
        $(document).ready(function() {
            $("#submit").click(function (e) {
                e.preventDefault();
                var maxhigh = $("#maxhigh").val();
                var upspeed = $("#upspeed").val();
                var speed = $("#speed").val();
                var endurancetime = $("#endurancetime").val();
                var consumeoil = $("#consumeoil").val();
                var capabilityId = $("#capabilityId").val();
                $.ajax({
                    url: "${request.contextPath}/api/noauth/capability/evaluateValue",
                    type: "POST",
                    contentType: "application/json;charset=utf-8",
                    data: JSON.stringify({'maxhigh': maxhigh, 'upspeed': upspeed, 'speed': speed,
                        'endurancetime': endurancetime, 'consumeoil': consumeoil, 'capabilityId':capabilityId}),
                    dataType: "text",
                    success: function (result) {
                        console.log('success');
                    <#--刷新-->
                        window.location.href = "${request.contextPath}/api/noauth/devicemanage/property?deviceId=${capability.deviceid}";
                    },
                    error: function (msg) {
                        alert(msg.message);
                    }
                });
                return false;
            });
        });
    </script>
  </body>
</html>
