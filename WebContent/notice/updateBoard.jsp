<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>공지사항 수정</title>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
<%@ include file="../head.jsp" %>

</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
%>
<div class="content container" id="content">
	<h2 class="title">공지사항 수정</h2>
	<form name="frm1" id="frm1" action="<%=request.getContextPath() %>/UpdateBoardProCtrl" method="post">
		<table class="table">
			<tbody>
				<tr>
					<th>제목</th>
					<td><input type="text" name="title" id="title" placeholder="제목 입력" class="form-control" value="<%=vo.getTitle() %>" autofocus required />
						<input type="hidden" name="notiNo" id="notiNo" value="<%=vo.getNotiNo() %>" required/>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td><textarea cols="80" rows="6" name="content" id="content" class="form-control" required><%=vo.getContent() %></textarea></td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type="text" name="author" id="author" value="admin" class="form-control" readonly></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-primary" value="글 수정" style="margin-right:10px; border-radius:4em;">
			<a href="<%=request.getContextPath() %>/GetBoardListCtrl" class="btn btn-primary" style="margin-right:10px; border-radius:4em;">목록으로 돌아가기</a>
		</div>
	</form>	
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>