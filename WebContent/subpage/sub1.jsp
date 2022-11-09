<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>브랜드</title>
<%@ include file="../head.jsp" %>
<style>
.vs { margin-left:400px; margin-top:100px;}
</style>
</head>
<body>
<%@ include file="../header.jsp" %>
<h1 style="text-align:center; margin-top:50px;">브랜드</h1>
<img src="<%=request.getContextPath() %>/img/sub_page/sub1.jpg" alt="" style="margin-right:100px; margin-bottom:50px;">
<figure class="vs">
<iframe width="1180" height="664" src="https://www.youtube.com/embed/926q8cMLaKk?list=TLGGo0Fl9UwhqlwwOTExMjAyMg" title="J.R. Simplot Company: Cultivating a World of Possibilities" 
frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
</figure>
<%@ include file="../footer.jsp" %>
</body>
</html>				
