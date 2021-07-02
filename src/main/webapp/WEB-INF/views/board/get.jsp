<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../includes/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-head"> Board Read </h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Read Page</div>
			<!-- ./ panel-heading -->
			<div class="panel-body">
					<div class="form-group">
						<label>Bno</label><input class="form-control" name="bno"
							value='<c:out value="${board.bno }" />' readonly="readonly"/>
					</div>
					<div class="form-group">
						<label>Title</label><input class="form-control" name="title"
							value='<c:out value="${board.title }" />' readonly="readonly"/>
					</div>
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" rows="3" name="content" 
						readonly="readonly"><c:out value="${board.content }"/></textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input class="form-control" name="writer"
							value='<c:out value="${board.writer }" />' readonly="readonly"/>
					</div>
					<button data-oper='modify' class="btn btn-default"
						onclick="location.href='${appRoot}/board/modify?bno=<c:out value="${board.bno }"/>'">Modify</button>
					<button data-oper='list' class="btn btn-default"
						onclick="location.href='${appRoot}/board/list'">List</button>
					<form id="operForm" action="${appRoot }/boar/modify" method="get">
						<input type="hidden" id="bno" name="bno" value='<c:out value="${board.bno }"/>'>
						<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum }"/>'>
						<input type="hidden" name="amount" value='<c:out value="${cri.amount }"/>'>
						<input type="hidden" name="keyword" value='<c:out value="${cri.keyword }"/>'>
						<input type="hidden" name="type" value='<c:out value="${cri.type }"/>'>
					</form>
					<script type="text/javascript">
						var appRoot = "${appRoot}";
						var boardBno = "${board.bno}";
					</script>
					<script type="text/javascript" src="${appRoot }/resources/js/reply.js"></script>
					<script type="text/javascript">
						console.log("JS TEST");
						
						var bnoValue = '<c:out value="${board.bno}"/>';
						
						// reply List Test
						/* replyService.getList({ bno: bnoValue, page: 1 }, function (list) {
							for (var i = 0, len = list.length || 0; i < len; i++){
							console.log(list[i]);
							}
						}); */
						
						// 2번 댓글 삭제 테스트
						/* replyService.remove(2, function(cnt) {
							console.log(cnt);
							
							if(cnt === "success") {
								alert("REMOVED");
							}
						}, function(err) {
							alert("ERROR");
						}); */
						
						// 3번 댓글 수정
						/* replyService.update({
							rno: 3,
							bno: bnoValue,
							reply: "Modifyed Reply..."
						}, function(result) {
							alert("수정 완료,,,");
						}); */
						
						// 9번 댓글 얻어오기
						replyService.get(9, function(data){
							console.log(data);
						})
					</script>
					<script type="text/javascript">
					$(document).ready(function () {
						var operForm = $("#operForm");
						
						$("button[data-oper='modify']").on("click", function(e) {
							operForm.attr("action", "${appRoot}/board/modify").submit();
						});
						
						$("button[data-oper='list']").on("click", function(e) {
							operForm.find("#bno").remove();
							operForm.attr("action", "${appRoot}/board/list");
							operForm.submit();
						});
					});
					
					</script>
			</div>
			<!-- end panel body -->
		</div>
		<!-- end panel-dafault -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!--  /.row -->
<%@ include file="../includes/footer.jsp" %>