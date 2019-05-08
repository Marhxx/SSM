<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="http://www.jeasyui.net/Public/js/easyui/themes/icon.css">
<script type="text/javascript" src="http://code.jquery.com/jquery-1.6.1.min.js"></script>
<script type="text/javascript" src="http://www.jeasyui.net/Public/js/easyui/jquery.easyui.min.js"></script>

</head>
<body>

<center>


<table id="dg" title="My Users" class="easyui-datagrid" style="width:550px;height:250px"
		url="get_users.php"
		toolbar="#toolbar"
		rownumbers="true" fitColumns="true" singleSelect="true">
	<thead>
		<tr>
			<th field="firstname" width="50">First Name</th>
			<th field="lastname" width="50">Last Name</th>
			<th field="phone" width="50">Phone</th>
			<th field="email" width="50">Email</th>
			<th field="email" width="50">操作</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach items="${list}" var="a">
	<tr>
		<td field="firstname" width="50">${a.uid }</td>
		<td field="firstname" width="50">${a.uname }</td>
		<td field="firstname" width="50">${a.pwd }</td>
		<td field="firstname" width="50">${a.url }</td>
		<td field="firstname" width="50">${a.price}</td>
		<td field="firstname" width="50"><a href="#">删除</a></td>
		
		</tr>
	
	</c:forEach>
	</tbody>
	
<a href="">添加</a>	
</table>
<div id="toolbar">
	<a href="Add.jsp" class="easyui-linkbutton" iconCls="icon-add" plain="true" onclick="newUser()">添加</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-edit" plain="true" onclick="editUser()">Edit User</a>
	<a href="#" class="easyui-linkbutton" iconCls="icon-remove" plain="true" onclick="destroyUser()">Remove User</a>
</div>



<hr>

<div style="background:#fafafa;padding:5px;width:200px;border:1px solid #ccc">
	<a href="#" class="easyui-menubutton" menu="#mm1" iconCls="icon-edit">Edit</a>
	<a href="#" class="easyui-menubutton" menu="#mm2" iconCls="icon-help">Help</a>
</div>
<div id="mm1" style="width:150px;">
	<div iconCls="icon-undo">Undo</div>
	<div iconCls="icon-redo">Redo</div>
	<div class="menu-sep"></div>
	<div>Cut</div>
	<div>Copy</div>
	<div>Paste</div>
	<div class="menu-sep"></div>
	<div iconCls="icon-remove">Delete</div>
	<div>Select All</div>
</div>
<div id="mm2" style="width:100px;">
	<div>Help</div>

<br>

</center>
</body>
</html>