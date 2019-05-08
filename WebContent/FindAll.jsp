<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>获取全部</title>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#search").keyup(function(){
			var value = $(this).val();
			$.ajax({
				url:"${pageContext.request.contextPath}/listByLike",
				data:{
					"name":value
				},
				dataType:"json",
				type:"post",
				success:function(param){
					if(value!=''){
						$("#myDIV").css({"display":"block"});
						var html = "";
						for(var i = 0;i < param.length;i++){
							html+="<p><a style='display:block; width:300px;' href='${pageContext.request.contextPath}/search'>"+param[i].uname+"</a></p>";
						}
						$("#myDIV").html(html);
					}else{
						$("#myDIV").html("").css({"display":"none"});
					}
				},
			})
		})
		
		$(function(){
			$("#btn").click(function(){
				var name = $("#search").val();
				$.ajax({
					url:"${pageContext.request.contextPath}/listByLike",
					data:{
						"name":name
					},
					dataType:"json",
					type:"post",
					success:function(param){
						var html = "";
						for(var i = 0;i < param.length;i++){
							html+="<tr><td>"+param[i].uid+"</td>";
							html+="<td>"+param[i].uname+"</td>";
							html+="<td>"+param[i].pwd+"</td>";
							html+="<td>"+param[i].url+"</td>";
							html+="<td>"+param[i].price+"</td>";
							html+="<td>"+param[i].handle+"</td>";
							html+="</tr>";
						}
						$("tbody").html(html);
					},
				})
			});
		});
	})
</script>
</head>
<body>
<input type="text" id="search" style="width:300px;" name="content" /><button id="btn" type="button">搜索</button>
<div id="myDIV" style="width:300px;height:100px;border:1px solid black;display:none;overflow:hidden;">

</div>
	<div class="container" align="center">
	<h1 class="text-info">页面展示</h1>
		<table
			class="table table-striped table-bordered table-hover  table-condensed"
			align="center">
			<thead>
				<tr align="center">
					<th align="center">uid</th>
					<th align="center">uname</th>
					<th align="center">pwd</th>
					<th align="center">url</th>
					<th align="center">price</th>
					<th align="center">handle</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list }" var="u">
					<tr align="center">

						<td>${u.uid }</td>
						<td>${u.uname}</td>
						<td>${u.pwd}</td>
						<td>${u.url}</td>
						<td>${u.price}</td>
						<td><a href="delect?uid=${u.uid }"><button class="btn btn-success">delect</button></a> 
								&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp 
								<a href="getByIdd?uid=${u.uid }"><button class="btn btn-success">update</button></a></td>
									

					</tr>
				</c:forEach>
			</tbody>

		</table>
		<a href="Add.jsp"><button class="btn btn-success">添加</button></a>
	</div>
</body>
</html>