<!DOCTYPE html>
<html>
  <head>
    <title>物接入</title>
	
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
<div class="container container_body" style='margin-top:-19px;width:100%;'>
	<div class="row">
		<div class="col-md-2 nav_left">
			<ul class="nav nav-stacked nav-pills"><li style='font-size: 18px;

    margin-left: -5px;'><a href="${request.contextPath}/api/noauth/deviceaccess"><span class="glyphicon glyphicon-home"></span> <span> 物接入</span></a></li>
			<hr style='margin-top: 0px; border-top: 1px solid black;'>
			
  				
  				<li class="active"><a href="#"><span class="glyphicon glyphicon-inbox"></span> 设备实例</a></li>
  			
  				
			</ul>
		</div>
		<div class="col-md-10 col-md-offset-2 nav_right">
		<div>
						<div class="panel panel-default">
    			<div class="panel-heading">
        			<span class='d_name'> 实例列表</span>
        			<span class='d_state btn-success'> 状态</span>
   				</div>
    			<div class="panel-body">      				
       				<button class="btn btn-primary" data-toggle="modal" data-target="#mm">+ 创建实例</button>
    			</div>
    			<table class="table">
        			<th>实例名称</th>
        			<th>描述 </th>
        			<th>地址 </th>
        			<th>创建时间 </th>
        			<th>操作 </th>
        			<tr>
        			<td>A</td>
        			<td>...</td>
        			<td>C://</td>
        			<td>2016/3</td>
        			<td><a href='#' class='btn btn-danger'>删除</a></td>
        			</tr>
        			<tr>
        			<td>A</td>
        			<td>...</td>
        			<td>D:/</td>
        			<td>2016/3</td>
        			<td><a href='#' class='btn btn-danger'>删除</a></td>
        			</tr>		
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
					<div class="modal fade" id="mm" tabindex="-1" role="dialog" aria-labelledby="mmLabel" aria-hidden="true">
    					<div class="modal-dialog">
       		 				<div class="modal-content">
            					<div class="modal-header">
                					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                					<h4 class="modal-title" id="mmLabel">创建实例</h4>
            					</div>
            					<div class="modal-body">
            						<form class="form-horizontal" role="form" action="#" >

										<div class="form-group">
											<label  class="col-sm-3 control-label" style='text-align: left;'>名称</label>
											<div class="col-sm-9">
												<input type="text" class="form-control"  placeholder="请输入名称" />
											</div>
										</div>
										<div class="form-group">
											<label  class="col-sm-3 control-label" style='text-align: left;'>地址</label>
											<div class="col-sm-9">
												<div>C://zzzdjdj</div>
											</div>
										</div>
										
	

									</form>
            					</div>
            						<div class="modal-footer">
            						<button type="button" class="btn btn-primary">创建</button>
                					<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                					
            						</div>
        						</div><!-- /.modal-content -->
    					   </div><!-- /.modal -->
					</div>
<script src="${request.contextPath}/static/js/jquery.min.js"></script>
<script src="${request.contextPath}/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
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
</html>
