<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-CN">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

	<link rel="stylesheet" href="${APP_PATH }/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/font-awesome.min.css">
	<link rel="stylesheet" href="${APP_PATH }/css/main.css">
	<link rel="stylesheet" href="${APP_PATH }/css/pagination.css">
	<link rel="stylesheet" href="${APP_PATH }/ztree/zTreeStyle.css">
	<style>
	.tree li {
        list-style-type: none;
		cursor:pointer;
	}
	table tbody tr:nth-child(odd){background:#F4F4F4;}
	table tbody td:nth-child(even){color:#C00;}
	</style>
  </head>

  <body>

    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <div><a class="navbar-brand" style="font-size:32px;" href="#">众筹平台 - 许可维护</a></div>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <ul class="nav navbar-nav navbar-right">
            <li style="padding-top:8px;">
				<%@include file="/WEB-INF/jsp/common/userInfo.jsp" %>
			</li>
            <li style="margin-left:10px;padding-top:8px;">
				<button type="button" class="btn btn-default btn-danger">
				  <span class="glyphicon glyphicon-question-sign"></span> 帮助
				</button>
			</li>
          </ul>
          <form class="navbar-form navbar-right">
            <input type="text" class="form-control" placeholder="Search...">
          </form>
        </div>
      </div>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-3 col-md-2 sidebar">
			<div class="tree">
				<ul style="padding-left:0px;" class="list-group">
					<li class="list-group-item tree-closed" >
						<a href="main.html"><i class="glyphicon glyphicon-dashboard"></i> 控制面板</a> 
					</li>
					<li class="list-group-item">
						<span><i class="glyphicon glyphicon glyphicon-tasks"></i> 权限管理 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;">
							<li style="height:30px;">
								<a href="${APP_PATH }/user/index"><i class="glyphicon glyphicon-user"></i> 用户维护</a> 
							</li>
							<li style="height:30px;">
								<a href="${APP_PATH }/role/index"><i class="glyphicon glyphicon-king"></i> 角色维护</a> 
							</li>
							<li style="height:30px;">
								<a href="${APP_PATH }/permission/index" style="color:red;"><i class="glyphicon glyphicon-lock"></i> 许可维护</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-ok"></i> 业务审核 <span class="badge" style="float:right">3</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="auth_cert.html"><i class="glyphicon glyphicon-check"></i> 实名认证审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_adv.html"><i class="glyphicon glyphicon-check"></i> 广告审核</a> 
							</li>
							<li style="height:30px;">
								<a href="auth_project.html"><i class="glyphicon glyphicon-check"></i> 项目审核</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed">
						<span><i class="glyphicon glyphicon-th-large"></i> 业务管理 <span class="badge" style="float:right">7</span></span> 
						<ul style="margin-top:10px;display:none;">
							<li style="height:30px;">
								<a href="cert.html"><i class="glyphicon glyphicon-picture"></i> 资质维护</a> 
							</li>
							<li style="height:30px;">
								<a href="type.html"><i class="glyphicon glyphicon-equalizer"></i> 分类管理</a> 
							</li>
							<li style="height:30px;">
								<a href="process.html"><i class="glyphicon glyphicon-random"></i> 流程管理</a> 
							</li>
							<li style="height:30px;">
								<a href="advertisement.html"><i class="glyphicon glyphicon-hdd"></i> 广告管理</a> 
							</li>
							<li style="height:30px;">
								<a href="message.html"><i class="glyphicon glyphicon-comment"></i> 消息模板</a> 
							</li>
							<li style="height:30px;">
								<a href="project_type.html"><i class="glyphicon glyphicon-list"></i> 项目分类</a> 
							</li>
							<li style="height:30px;">
								<a href="tag.html"><i class="glyphicon glyphicon-tags"></i> 项目标签</a> 
							</li>
						</ul>
					</li>
					<li class="list-group-item tree-closed" >
						<a href="param.html"><i class="glyphicon glyphicon-list-alt"></i> 参数管理</a> 
					</li>
				</ul>
			</div>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<div class="panel panel-default">
			  <div class="panel-heading">
				<h3 class="panel-title"><i class="glyphicon glyphicon-th"></i> 数据列表</h3>
			  </div>
			  <div class="panel-body">
			  	<ul id="permissionTree" class="ztree"></ul>
			  </div>
			</div>
        </div>
      </div>
    </div>

    <script src="${APP_PATH }/jquery/jquery-2.1.1.min.js"></script>
    <script src="${APP_PATH }/jquery/jquery.pagination.js"></script>
    <script src="${APP_PATH }/ztree/jquery.ztree.all-3.5.min.js"></script>
    <script src="${APP_PATH }/bootstrap/js/bootstrap.min.js"></script>
	<script src="${APP_PATH }/script/docs.min.js"></script>
	<script src="${APP_PATH }/layer/layer.js"></script>
        <script type="text/javascript">
            $(function () {
			    $(".list-group-item").click(function(){
				    if ( $(this).find("ul") ) {
						$(this).toggleClass("tree-closed");
						if ( $(this).hasClass("tree-closed") ) {
							$("ul", this).hide("fast");
						} else {
							$("ul", this).show("fast");
						}
					}
				});
			    
			    var setting = {
						async: {
							enable: true,
							url:"${APP_PATH}/permission/loadAsyncData",
							autoParam:["id", "name=n", "level=lv"]
						},
			    		view: {
							selectedMulti: false,
							addDiyDom: function(treeId, treeNode){
								var icoObj = $("#" + treeNode.tId + "_ico"); // tId = permissionTree_1, $("#permissionTree_1_ico")
								if ( treeNode.icon ) {
									icoObj.removeClass("button ico_docu ico_open").addClass(treeNode.icon).css("background","");
								}
							},
							addHoverDom: function(treeId, treeNode){  
	                        //   <a><span></span></a>
								var aObj = $("#" + treeNode.tId + "_a"); // tId = permissionTree_1, ==> $("#permissionTree_1_a")
								aObj.attr("href", "javascript:;");
								if (treeNode.editNameFlag || $("#btnGroup"+treeNode.tId).length>0) return;
								var s = '<span id="btnGroup'+treeNode.tId+'">';
								if ( treeNode.level == 0 ) {
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="window.location.href=\'${APP_PATH}/permission/add?pid='+treeNode.id+'\'">&nbsp;&nbsp;<i class="fa fa-fw fa-plus rbg "></i></a>';
								} else if ( treeNode.level == 1 ) {
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="window.location.href=\'${APP_PATH}/permission/edit?id='+treeNode.id+'\'">&nbsp;&nbsp;<i class="fa fa-fw fa-edit rbg "></i></a>';
									if (treeNode.children.length == 0) {
										s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="deletePermission('+treeNode.id+', \''+treeNode.name+'\')">&nbsp;&nbsp;<i class="fa fa-fw fa-times rbg "></i></a>';
									}
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="window.location.href=\'${APP_PATH}/permission/add?pid='+treeNode.id+'\'">&nbsp;&nbsp;<i class="fa fa-fw fa-plus rbg "></i></a>';
								} else if ( treeNode.level == 2 ) {
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="window.location.href=\'${APP_PATH}/permission/edit?id='+treeNode.id+'\'">&nbsp;&nbsp;<i class="fa fa-fw fa-edit rbg "></i></a>';
									s += '<a class="btn btn-info dropdown-toggle btn-xs" style="margin-left:10px;padding-top:0px;" href="javascript:;" onclick="deletePermission('+treeNode.id+', \''+treeNode.name+'\')">&nbsp;&nbsp;<i class="fa fa-fw fa-times rbg "></i></a>';
								}
				
								s += '</span>';
								aObj.after(s);
							},
							removeHoverDom: function(treeId, treeNode){
								$("#btnGroup"+treeNode.tId).remove();
							}
						}
			    };
			    
			    //异步查询时，ztree不需要准备数据，初始化后，由组件自动读取
			    $.fn.zTree.init($("#permissionTree"), setting);
				/*
			    $.ajax({
					type : "POST",
					url  : "${APP_PATH}/permission/loadData",
					success : function(result){
						if(result.success){
							//$("#permissionTree")代表容器 ul无序列表
							$.fn.zTree.init($("#permissionTree"), setting, result.data);
						}else{
							layer.msg("许可菜单查询失败", {time:2000, icon:5, shift:6}, function(){
          				    });
						}
					}
				});
				*/
				
            });
            
            function deletePermission(id, name){
            	layer.confirm("删除许可信息【"+name+"】，是否继续？",  {icon: 3, title:'提示'}, function(cindex){
    			    $.ajax({
    			    	type : "POST",
    			    	url  : "${APP_PATH}/permission/delete",
    			    	data : {id : id},
    			    	success : function(result){
    			    		if(result.success){
    			    			var treeObj = $.fn.zTree.getZTreeObj("permissionTree");
    			    			treeObj.reAsyncChildNodes(null, "refresh");
    			    		}else{
    			    			layer.msg("许可信息删除失败", {time:2000, icon:5, shift:6}, function(){
              				    });
    			    		}
    			    	}
    			    });
    				layer.close(cindex);
    			}, function(cindex){
    			    layer.close(cindex);
    			});
            }
            
        </script>
  </body>
</html>
