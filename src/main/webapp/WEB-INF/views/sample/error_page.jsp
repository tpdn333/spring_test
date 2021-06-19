<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page session="fasle" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h4><c:out value="${exception.getMessage() }"></c:out></h4>
		
		<ul>
			<c:forEach items="${exception.getStackTrace() }" var="stack">
				<li><c:out value="${stack }"></c:out></li>
			</c:forEach>
		</ul>
	</div>
</body>
</html>