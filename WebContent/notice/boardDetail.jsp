<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>공지사항 목록</title>

<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
<%@ include file="../head.jsp" %>

</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Notice vo = (Notice) request.getAttribute("notice");
	if(sid!=null) {
		sid = sid;
	} else {
		sid = "guest";
	}
%>
<div class="content container" id="content">
	<h2 class="title">공지사항 상세</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>번호</th>
				<td><%=vo.getNotiNo() %></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><%=vo.getTitle() %></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><%=vo.getContent() %></td>
			</tr>
			<tr>
				<th>작성자</th>
				<td><%=vo.getAuthor() %></td>
			</tr>
			<tr>
				<th>작성일시</th>
				<td><%=vo.getResDate() %></td>
			</tr>
			<tr>
				<th>조회수</th>
				<td><%=vo.getVisited() %></td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<a href="<%=request.getContextPath() %>/GetBoardListCtrl" class="btn btn-primary" style="margin-right:10px; border-radius:4em;">목록으로 돌아가기</a>
		<%if(sid.equals("admin")) {%>
		<a href="<%=request.getContextPath() %>/UpdateBoardCtrl?notiNo=<%=vo.getNotiNo() %>" class="btn btn-primary" style="margin-right:10px; border-radius:4em;" >공지수정</a>
		<a href="<%=request.getContextPath() %>/DeleteBoardCtrl?notiNo=<%=vo.getNotiNo() %>" class="btn btn-danger" style="border-radius:4em;">공지삭제</a>
		<% } else if(sid!="guest") {%>
		
		<% } %>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>