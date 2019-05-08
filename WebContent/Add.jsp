<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Add</title>
<script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
<link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css"
	rel="stylesheet">
<script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1 class="text-info">Add</h1>
		<form action="Add" method="post">

			<input type="text" class="form-control" name="uname"><br> 
			<input	type="password" class="form-control" name="pwd"><br>
			 <input	type="text" class="form-control" name="url"><br>
			 <input	type="text" class="form-control" name="price"><br>
			 <input	type="submit" class="btn btn-success" value="提交">
		</form>

	</div>
</body>
</html>