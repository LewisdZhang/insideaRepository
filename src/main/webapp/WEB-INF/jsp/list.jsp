<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户列表</title>
		<link rel="stylesheet" type="text/css" href="../static/css/bootstrap.css" /> 
		<script type="text/javascript" src="../static/js/jquery-3.3.1.js" ></script>  
		<script type="text/javascript" src="../static/js/bootstrap.js" ></script>
		<script type="text/javascript" src="../static/js/echarts.js" ></script>
	</head>
	<body style="margin: 0 auto; width: 800px;"> 
		<form action="${pageContext.request.contextPath}/user/findByCriteria.action" method="post">
			<table class="table table-bordered">
				<caption>查询条件</caption>
				<tr>
					<td><input type="submit" value="查询"/></td>
				</tr>
			</table>
		</form>
		<table class="table table-bordered table-striped">
			<caption>用户列表</caption>
			<tr>
				<td>用户编号</td>
				<td>用户名</td>
				<td>生日</td>
				<td>性别</td>
				<td>地址</td>
				<td>操作</td>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.id}</td>
					<td>${user.username}</td>
					<td><fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
					<td>
						<c:choose>
							<c:when test="${user.sex == 1}">男</c:when>
							<c:when test="${user.sex == 2}">女</c:when>
						</c:choose>
					</td>
					<td>${user.address}</td>
					<td><a href="${pageContext.request.contextPath}/user/showEdit.action?id=${user.id}">修改</a></td>
				</tr>
			</c:forEach>
		</table>
		<div id="container" style="height: 400px;margin:auto"></div>
		<script type="text/javascript" src="../static/js/todo.js" ></script>
	</body>
</html>