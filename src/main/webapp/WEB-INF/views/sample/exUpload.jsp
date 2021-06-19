<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<form action="/sample/exUploadPost" method="post" enctype="multipart/form-data">
			<div>
				<input type="file" name="files"/>
			</div>
			<div>
				<input type="file" name="files"/>
			</div>
			<div>
				<input type="file" name="files"/>
			</div>
			<div>
				<input type="file" name="files"/>
			</div>
			<div>
				<input type="submit"/>
			</div>
		</form>
	</div>
</body>
</html>