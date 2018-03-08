<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>用户列表</title>
	</head>
	<body style="margin: 0 auto; width: 800px;"> 
		<form action="${pageContext.request.contextPath}/user/findByCriteria.action" method="post">
			<table width="100%" border=1>
				<caption>查询条件</caption>
				<tr>
					<td><input type="submit" value="查询"/></td>
				</tr>
			</table>
		</form>
		<table style="width: 88%;" border=1>
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
	</body>
</html>