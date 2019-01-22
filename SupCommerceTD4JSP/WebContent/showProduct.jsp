<%@page import="com.supinfo.sun.supcommerce.doa.SupProductDao"%>
<%@page import="com.supinfo.sun.supcommerce.bo.SupProduct"%>
<%@page import="com.supinfo.sun.supcommerce.exception.UnknownProductException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product details</title>
</head>
<body>
<%@ include file="/header.jsp" %>
<h2><c:out value="${product.name}" /></h2>
	
	<p>
		Description :<br />
		<c:out value="${product.content}" />
	</p>
	
	<p>
		<c:out value="${product.price}" /> euros

		<c:if test="${! empty sessionScope.username}">
			<form method="post" action="<%=request.getContextPath()%>/auth/removeProduct">
				<input type="hidden" name="id" value="${product.id}" />
				<input type="submit" value="Remove product">
			</form>
		</c:if>
	</p>
<%@ include file="/footer.jsp" %> 
</body>
</html>