<!DOCTYPE html>
<html>
  <head>
    <title>物联网开放平台</title>
	
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
        <a class="navbar-brand" href="#"><span>CHENSI </span><span> 毕设</span></a>
    </div>
    <div class="collapse navbar-collapse navbar-right " id="example-navbar-collapse" >
        <ul class="nav navbar-nav">
            <li><a href="${request.contextPath}/api/noauth/signupui"><span class="glyphicon glyphicon-user"></span> 注册</a></li>
            <li><a href="${request.contextPath}/api/noauth/signinui"><span class="glyphicon glyphicon-log-in"></span> 登录</a></li>

        </ul>
    </div>
    </div>
</nav>
    <div id="myCarousel" class="carousel slide" style='min-height: 800px;
    margin-top: -22px;'>
	<!-- 轮播（Carousel）指标 -->
	<ol class="carousel-indicators">
		<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		<li data-target="#myCarousel" data-slide-to="1"></li>
		<li data-target="#myCarousel" data-slide-to="2"></li>
	</ol>   
	<!-- 轮播（Carousel）项目 -->
	<div class="carousel-inner">
		<div class="item active">
			<img src="${request.contextPath}/static/img/bg.jpg" alt="First slide" class='img-responsive' style=
			'width:100%'>
		</div>
		<div class="item">
			<img src="${request.contextPath}/static/img/bg.jpg" alt="First slide" class='img-responsive' style=
			'width:100%'>
		</div>
		<div class="item">
			<img src="${request.contextPath}/static/img/bg.jpg" alt="First slide" class='img-responsive' style=
			'width:100%'>
		</div>
	</div>
	<!-- 轮播（Carousel）导航 -->
	<a class="carousel-control left" href="#myCarousel" 
	   data-slide="prev"></a>
	<a class="carousel-control right" href="#myCarousel" 
	   data-slide="next"></a>
</div> 
<div class='container'>
<div class='row'>
<div class='col-sm-3 bo'>
物管理
<div class='bobo'>创建虚拟设备，与被管理的实体设备对应。实现对设备的管理与检测</div>
</div>
<div class='col-sm-3 bo'>
物接入
<div class='bobo'>
物接入作为设备端和物管理之间的中转服务，帮助实体设备和物管理之间实现互通。</div></div>
<div class='col-sm-3 bo'>
物能力评估
<div class='bobo'>根据用户需求，对设备能力进行评估，推荐最优执行方案</div></div>
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
    
  </body>
  <script src="${request.contextPath}/static/js/jquery.min.js"></script>
  <script src="${request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
</html>
