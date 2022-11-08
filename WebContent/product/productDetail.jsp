<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*, kr.co.myshop.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<title>제품 상세보기</title>
<%@ include file="../head.jsp" %>
<style>
.title { padding-top:36px; padding-bottom:20px; }
.table tr td img { max-width:400px; height:auto; }
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<%
	Product vo = (Product) request.getAttribute("pro");
%>
<div class="content container" id="content">
	<h2 class="title">제품 상세보기</h2>
	<table class="table">
		<tbody>
			<tr>
				<th>제품이미지</th>
				<td><img src="<%=request.getContextPath() %>/upload/<%=vo.getProPic() %>" alt="<%=vo.getProName() %>"></td>
			</tr>
			<tr>
				<th>제품번호</th>
				<td><%=vo.getProNo() %></td>
			</tr>
			<tr>
				<th>카테고리 번호</th>
				<td><%=vo.getCateNo() %></td>
			</tr>
			<tr>
				<th>제품명</th>
				<td><%=vo.getProName() %></td>
			</tr>
			<tr>
				<th>제품 설명</th>
				<td><%=vo.getProSpec() %></td>
			</tr>
			<tr>
				<th>제품가격</th>
				<td>
					판매가격 : <strong style="color:red"><%=vo.getProPrice() %></strong> <br>
					세일전 가격 : (<del><%=vo.getOriPrice() %></del>) 
				</td>
			</tr>
			<tr>
				<th>남은 수량</th>
				<td>
				<% if(vo.getAmount()!=0) { %>
					<%=vo.getAmount() %>
				<% } else { %>
				<strong style="color:red">[품절]</strong>해당 상품의 재고가 존재하지 않습니다.
				<% } %>
				</td>
			</tr>
		</tbody>
	</table>
	<div class="btn-group">
		<a href="<%=request.getContextPath() %>/GetProductListCtrl" class="btn btn-primary" style=" border-radius:4em; margin-right:4px;">목록으로</a>
		<% if(sid==null) { %>
		<a href="<%=request.getContextPath() %>/GetSalesProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-primary" style=" border-radius:4em; margin-right:4px;">제품 구매</a>
		<% } else if(sid.equals("admin")) {%>
		<a href="<%=request.getContextPath() %>/UpdateProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-info" style=" border-radius:4em; margin-right:4px;">제품 정보 수정</a>
		<a href="<%=request.getContextPath() %>/GetProductWearingCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-info" style=" border-radius:4em; margin-right:4px;">제품 입고</a>
		<a href="<%=request.getContextPath() %>/DeleteProductCtrl?proNo=<%=vo.getProNo() %>" class="btn btn-danger" style=" border-radius:4em; margin-right:4px;">제품 삭제</a>
		<% } %>
	</div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>