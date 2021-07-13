<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>

<%@ include file="/WEB-INF/subModules/bootstrapHeader.jsp"%>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<script type="text/javascript">
var appRoot = "${appRoot}";

$(function() {
	$("#uploadBtn").on("click", function(e) {
		var formData = new FormData();
		
		var inputFile = $("input[name='uploadFile']");
		
		var files = inputFile[0].files;
		
		console.log(files);
		
		// add File Data to formData
		for(var i = 0; i < files.length; i++) {
			formData.append("uploadFile", files[i]);			
		}
		
		$.ajax({
			url: appRoot + "/uploadAjaxAction",
			processData: false,
			contentType: false,
			data: formData,
			type: "POST",
			success: function(result) {
				alert("Uploaded");
			}
		});
	});
});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
	<h1>Upload With Ajax</h1>
		<div class="uploadDiv">
			<input type="file" name="uploadFile" multiple />
		</div>
		<button id="uploadBtn">Upload</button>
	</div>
</body>
</html>