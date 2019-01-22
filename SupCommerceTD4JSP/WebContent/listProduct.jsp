<%@page import="com.supinfo.sun.supcommerce.doa.SupProductDao"%>
<%@page import="com.supinfo.sun.supcommerce.bo.SupProduct"%>
<%@page import="java.util.List"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Product list</title>
	</head>
	<body>
	<%@ include file="/header.jsp" %>
	<h1>Product list</h1>
	
	<c:forEach items="${products}" var="p">
		<h2><c:out value="${p.name}" /></h2>
		<p>
			<c:out value="${p.content}" /> <br />
			<c:out value="${p.price}" /> euros <br />
			<a href="showProduct?id=<c:out value="${p.id}" />">Show details</a>
			</p>
			
			<c:if test="${!empty sessionScope.username }">
			<form method="post" action="${pageContext.request.contextPath}/auth/removeProduct">
					<input type="hidden" name="id" value="<c:out value="${p.id}" />"/>
					<input type="submit" value="Remove">
				</form>
			</c:if>
	</c:forEach>
	
	<%@ include file="/footer.jsp" %>
	</body>
</html>