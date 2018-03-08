<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>修改用户信息</title>

	</head>
	<body> 
		<form action="${pageContext.request.contextPath}/user/edit.action" method="post">
			<input type="hidden" name="id" value="${user.id}"/>
			<table width="100%" border=1>
				<caption>修改用户信息</caption>
				<tr>
					<td>用户名</td>
					<td><input type="text" name="username" value="${user.username}"/></td>
				</tr>
				<tr>
					<td>生日</td>
					<td><input type="text" name="birthday" value="<fmt:formatDate value="${user.birthday}" pattern="yyyy-MM-dd HH:mm:ss"/>" /></td>
				</tr>
				<tr>
					<td>性别</td>
					<td>
						<select name="sex">
							<c:if test="${user.sex == 1}">
								<option value="1" selected="selected">男</option>
								<option value="2">女</option>
							</c:if>
							<c:if test="${user.sex == 2}">
								<option value="1">男</option>
								<option value="2" selected="selected">女</option>
							</c:if>
						</select>
					</td>
				</tr>
				<tr>
					<td>地址</td>
					<td><input type="text" name="address" value="${user.address}"></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="提交" /></td>
				</tr>
			</table>
	
		</form>
	</body>
</html>