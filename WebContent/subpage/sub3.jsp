<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오시는 길</title>
<%@ include file="../head.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<h1 style="text-align:center; margin-top:50px;">찾아오시는 길</h1>
<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d12664.260267286238!2d127.04922656380883!3d37.482790890297046!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xa0fc0eab65797481!2z7Ius7ZSM66Gc7Yq4IOy9lOumrOyVhA!5e0!3m2!1sko!2skr!4v1667955208844!5m2!1sko!2skr" 
width="1500" height="850" style="border:0; margin-left:200px; margin-top:100px;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
<img src="<%=request.getContextPath() %>/img/sub_page/sub3.jpg" alt="" style="margin-left:350px; margin-top:50px; border:1px solid #333;">
<%@ include file="../footer.jsp" %>
</body>
</html>				
