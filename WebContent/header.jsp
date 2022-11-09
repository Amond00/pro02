<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="height:100px">
<a href="<%=request.getContextPath() %>/index.jsp" class="logo"><img src="<%=request.getContextPath() %>/img/ftlogo.png" alt="로고" style=" margin-top: -40px; margin-left:870px; position:absolute; "></a>

  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown" style="margin-left:20px;">
	      <ul class="navbar-nav">
	      
	      	<li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	심플로트 소개
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub1.jsp">브랜드</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub2.jsp">히스토리</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub3.jsp">찾아오시는 길</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	제품
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=1">CONVENTIONAL</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=2">CLEAR COATING</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=3">Seasoned＆Battered</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=4">Delivery+</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=5">Specialty</a></li>
	            <li><a class="dropdown-item" href="#">---------------</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=6">아보카도</a></li>
	            <li><a class="dropdown-item" href="#">---------------</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=7">야채</a></li>
	            <li><a class="dropdown-item" href="#">---------------</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetProductItemListCtrl?cateNo=8">또띠아</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	레시피
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub4.jsp">캐쥬얼다이닝</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub5.jsp">파인다이닝</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/subpage/sub6.jsp">헬씨다이닝</a></li>
	          </ul>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            	고객센터
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/#">게시판</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetBoardListCtrl">공지사항</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/GetQnaListCtrl.do">Q&A</a></li>
	            <li><a class="dropdown-item" href="<%=request.getContextPath() %>/#">NEW&HOT&BEST</a></li>
	          </ul>
	        </li>
	        
	      </ul>
      
      	<ul class="nav justify-content-end" >
		  <% if(sid!=null) { %>
			  <li class="nav-item">
			    <span class="nav-link" style="font-weight:bolder; color:white; margin-left:900px;"><%=sname %>님</span>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link active" href="<%=request.getContextPath() %>/LogOutCtrl" style="color:white; ">로그아웃</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="<%=request.getContextPath() %>/GetCustomInfoCtrl" style="color:white;">회원정보</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl" style="color:white;">구매내역</a>
			  </li>
			  <li class="nav-item">
				<a class="nav-link" href="<%=request.getContextPath() %>/GetMemberCartListCtrl" style="color:white;">장바구니</a>
			  </li>
			  <% if(sid.equals("admin")) { %>
				  <li class="nav-item">
				    <a class="nav-link" href="<%=request.getContextPath() %>/admin/index.jsp" style="color:red;">관리자페이지</a>
				  </li>
			  <% } %>
		  <% } else { %>
			  <li class="nav-item">
			    <a class="nav-link active" href="<%=request.getContextPath() %>/custom/login.jsp" style="color:white; margin-left:1250px;">로그인</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="<%=request.getContextPath() %>/custom/membership.jsp" style="color:white;">회원가입</a>
			  </li>
		  <% } %>
		</ul>
      
    </div>
  </div>
</nav>