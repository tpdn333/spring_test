<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../includes/header.jsp" %>

<div class="row">
	<div class="col-lg-12">
		<h1 class="page-head">Board Modify</h1>
	</div>
	<!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
	<div class="col-lg-12">
		<div class="panel panel-default">
			<div class="panel-heading">Board Modify</div>
			<!-- ./ panel-heading -->
			<div class="panel-body">
				<form role="form" action="${appRoot }/board/modify" method="post">
					<div class="form-group">
						<label>Bno</label><input class="form-control" name="bno"
							value='<c:out value="${board.bno }" />' readonly="readonly"/>
					</div>
					<div class="form-group">
						<label>Title</label><input class="form-control" name="title"
							value='<c:out value="${board.title }" />'/>
					</div>
					<div class="form-group">
						<label>Text area</label>
						<textarea class="form-control" rows="3" name="content"><c:out value="${board.content }"/></textarea>
					</div>
					<div class="form-group">
						<label>Writer</label><input class="form-control" name="writer"
							value='<c:out value="${board.writer }" />' readonly="readonly"/>
					</div>
					<div class="form-group">
						<label>RegDate</label><input class="form-control" name="regdate"
							value='<fmt:formatDate pattern="yyyy-MM-dd" value="${board.regdate }"/>' readonly="readonly"/>
					</div>
					<div class="form-group">
						<label>Update Date</label><input class="form-control" name="updateDate"
							value='<fmt:formatDate pattern="yyyy-MM-dd" value="${board.updateDate }"/>' readonly="readonly"/>
					</div>
					<button type="submit" data-oper='modify' class="btn btn-default">Modify</button>
					<button type="submit" data-oper='remove' class="btn btn-danger">Remove</button>
					<button tppe="submit" data-oper='list' class="btn btn-info">List</button>
				</form>
			</div>
			<!-- end panel body -->
		</div>
		<!-- end panel-dafault -->
	</div>
	<!-- /.col-lg-12 -->
</div>
<!--  /.row -->
<%@ include file="../includes/footer.jsp" %>