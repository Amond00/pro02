<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>구매 목록</title>
<style>
.title { padding-top:36px; padding-bottom:20px; }
</style>
<%@ include file="../head.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	List<Sales> saleList = (ArrayList<Sales>) request.getAttribute("saleList");
%>
<div class="container-fluid" id="content">
	<div class="row" id="content_row">
		<% if(sid!=null && sid.equals("admin")) { %>
		<%@ include file="../admin/admin_sidebar.jsp" %>
		<% } %>
		<% if(sid!=null && sid.equals("admin")) { %>
		<main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4">
		<% } else { %>
		<main class="content container">
		<% } %>
			<h2 class="title">구매 목록</h2>
			<table class="table">
				<thead>
					<tr>
						<th>연번</th><th>제목</th><th>작성일</th>
					</tr>
				</thead>
				<tbody>
				<% for(int i=0;i<saleList.size();i++){
					Sales vo = saleList.get(i);
				%>
				<tr>
					<td><%=saleList.size()-i %></td>
					<td><a href="<%=request.getContextPath() %>/GetSalesDetailCtrl?saleNo=<%=vo.getSaleNo() %>"><%=vo.getProNo() %></a></td>
					<td><%=vo.getSaleDate() %></td>
				</tr>
				<% } %>	
				</tbody>
			</table>
<%-- 			<div class="btn-group">
				<a href="<%=request.getContextPath() %>/DeleteSaleCtrl?saleNo=<%= %>" class="btn btn-danger">구매 취소</a>
			</div> --%>
		</main>
</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>