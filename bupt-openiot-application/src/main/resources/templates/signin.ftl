<!DOCTYPE html>
<html>
  <head>
    <title>用户登录</title>
	
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

            <li><a href="${request.contextPath}/api/noauth/signupui"><span class="glyphicon glyphicon-log-in"></span> 注册</a></li>

        </ul>
    </div>
    </div>
</nav>

   <div class = 'content'>
	<div class ='content-body'>
        <div class = 'header_first'><span class='header'>登录</span> <span class='header_content'>暂没有账号，立即<a href='${request.contextPath}/api/noauth/signupui'> 注册</a></span></div>
<form class="form-horizontal" role="form">
	
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label" style='text-align: left;'
		>用户名</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="username"
				   placeholder="请输入邮箱" />
		</div>
	</div>
	<div class="form-group">
		<label for="password" class="col-sm-2 control-label control-label1" style='text-align: left;'>登录密码</label>
		<div class="col-sm-10">
			<input type="password" class="form-control" id="password"
				   placeholder="请输入密码" />
		</div>
	</div>
	
	
	<div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
        <#--<input type="submit" class="btn btn-default" id="login" style='padding: 10px 35px;' value="登录"/>-->
      <a type="submit" class="btn btn-default" id="login" style='padding: 10px 35px;'>登录</a>
      <a id="error"></a>
    </div>
    </div>
</form>
	</div>
</div>

<footer class="footer">
<div class='container '>
<div class='row'>
	<div class= 'col-md-3'>联系我们</div>
	<div class= 'col-md-3'>教程指导</div>
	<div class= 'col-md-3'>Powered by CHENSI</div>
	
</div>

</div>
</footer>
<script src="${request.contextPath}/static/js/jquery.min.js"></script>
<script src="${request.contextPath}/static/js/jwt-decode-master/build/jwt-decode.min.js"></script>
<script src="${request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
     <script>
         $(document).ready(function() {
             $("#login").click(function(e) {
                 e.preventDefault();
                 var username = $("#username").val();
                 var password = $("#password").val();
                 $.ajax({
                     url: "${request.contextPath}/api/auth/login",
                     type: "POST",
                     contentType: "application/json;charset=utf-8",
                     data: JSON.stringify({'username':username, 'password':password}),
                     dataType: "text",
                     success: function(result) {
                         var obj = JSON.parse(result);
                         var jwtToken = obj.token;
                         var refreshToken = obj.refreshToken;
                         setUserFromJwtToken(jwtToken, refreshToken);
                         console.log(jwtToken);
                         console.log(refreshToken);
                         <#--// 重置到homepage-->
                         window.location.href="${request.contextPath}/api/noauth/homepage";
                     },
                     error: function(msg) {
                         alert(msg.message);
                     }
                 });
                 return false;
             });

             function setUserFromJwtToken(jwtToken, refreshToken) {
                 updateAndValidateToken(jwtToken, 'jwt_token');
                 updateAndValidateToken(refreshToken, 'refresh_token');

                 /*$.ajax({
                     url: "/api/homepage",
                     type: "POST",
                     contentType: "application/html;charset=utf-8",
                     headers: {
                         "X-Authorization": "Bearer " + localStorage.getItem('jwt_token')
                     },
                     dataType: "html",
                     success: function(result) {
                         console.log("Bearer " + localStorage.getItem('jwt_token'));
                         $(document.body).html(result);
                     },
                     error: function(msg) {
                         console.log(msg);
                     }
                 });*/
             }

             function updateAndValidateToken(token, prefix) {
                 var tokenData = jwt_decode(token);
                 var issuedAt = tokenData.iat;
                 var expTime = tokenData.exp;
                 if (issuedAt && expTime) {
                     var ttl = expTime - issuedAt;
                     if (ttl > 0) {
                         var clientExpiration = new Date().valueOf() + ttl*1000;
                         localStorage.setItem(prefix, token);
                         localStorage.setItem(prefix + '_expiration', clientExpiration);
                     }
                 }
             }
         });
     </script>
  </body>
</html>
