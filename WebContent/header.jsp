<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("sid");
	String sname = (String) session.getAttribute("sname");
%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" style="height:90px">
  <a class="navbar-brand" href="<%=request.getContextPath() %>/index.jsp">Simplelot</a>
  <a href="<%=request.getContextPath() %>/index.jsp" class="logo"><img src="<%=request.getContextPath() %>/img/logo.png" alt="로고" style="margin-top: -30px; margin-left:750px; position:absolute; "></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
		
  <div class="collapse navbar-collapse" id="navbarSupportedContent" >
    <ul class="navbar-nav mr-auto">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
         	심플로트 소개
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">브랜드</a>
          <a class="dropdown-item" href="#">히스토리</a>
          <a class="dropdown-item" href="#">찾아오시는 길</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true">
          	제품
        </a>
        <div class="dropdown-menu">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="true" style="color:black;"> 
          	냉동감자
        </a>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=1">CONVENTIONAL</a>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=2">CLEAR COATING</a>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=3">Seasoned＆Battered</a>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=4">Delivery+</a>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=5">Specialty</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=6">아보카도</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=7">야채</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="GetProductItemListCtrl?cateNo=8">또띠아</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          	레시피
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">캐쥬얼다이닝</a>
          <a class="dropdown-item" href="#">파인다이닝</a>
          <a class="dropdown-item" href="#">헬씨다이닝</a>
        </div>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-expanded="false">
          	고객센터
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="#">게시판</a>
          <a class="dropdown-item" href="<%=request.getContextPath() %>/GetBoardListCtrl">공지사항</a>
          <a class="dropdown-item" href="#">Q&A</a>
          <a class="dropdown-item" href="#">뉴스&이벤트</a>
        </div>
      </li>
	</ul>
    <ul class="nav justify-content-end">
  <% if(sid!=null) { %>
	  <li class="nav-item">
	    <span class="nav-link" style="font-weight:bolder; color:white;"><%=sname %>님</span>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link active" href="<%=request.getContextPath() %>/LogOutCtrl">로그아웃</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="<%=request.getContextPath() %>/GetCustomInfoCtrl">회원정보</a>
	  </li>
	  <li class="nav-item">
		<a class="nav-link" href="<%=request.getContextPath() %>/GetMemberSalesInfoCtrl">구매내역</a>
	  </li>
	  <% if(sid.equals("admin")) { %>
		  <li class="nav-item">
		    <a class="nav-link" href="<%=request.getContextPath() %>/admin/index.jsp">관리자 페이지로</a>
		  </li>
	  <% } %>
  <% } else { %>
	  <li class="nav-item">
	    <a class="nav-link active" href="<%=request.getContextPath() %>/custom/login.jsp">로그인</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="<%=request.getContextPath() %>/custom/membership.jsp">회원가입</a>
	  </li>
  <% } %>
	</ul>
	</div>
</nav>