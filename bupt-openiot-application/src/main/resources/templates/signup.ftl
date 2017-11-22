<!DOCTYPE html>
<html>
  <head>
    <title>用户注册</title>
	
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
        <a class="navbar-brand" href="${request.contextPath}/"><span>CHENSI </span><span> 毕设</span></a>
    </div>
    <div class="collapse navbar-collapse navbar-right " id="example-navbar-collapse" >
        <ul class="nav navbar-nav">

            <li><a href="${request.contextPath}/api/noauth/signinui"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>

        </ul>
    </div>
    </div>
</nav>
    <div class = 'content'>
	<div class ='content-body'>
        <div class = 'header_first'><span class='header'>注册</span> <span class='header_content'>已有账号，立即<a href='${request.contextPath}/api/noauth/signinui'> 登录</a></span></div>
<form class="form-horizontal" role="form" action="#" >
	
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label" style='text-align: left;'
		>用户名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="name" 
				   placeholder="请输入名字" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label control-label1" style='text-align: left;'>登录密码</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="password" 
				   placeholder="请输入密码" />
		</div>
	</div>
	
	<div class="form-group">
		<label for="sex" class="col-sm-2 control-label control-label1" style='text-align: left;'>性别</label>
		<div class="col-sm-10">
			<input type="radio" name="optionsRadiosinline" id="optionsRadios3" value="1" /> 男
			<input type="radio" name="optionsRadiosinline" id="optionsRadios4" value="2" "/> 女
            <input type="radio" name="optionsRadiosinline" id="optionsRadios4"  value="3" "/> 保密
		</div>
	</div>
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <a href="${request.contextPath}/api/noauth/homepage" class="btn btn-default" style='padding: 10px 35px;'>注册</a>
    </div>
    </div>
</form>
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
