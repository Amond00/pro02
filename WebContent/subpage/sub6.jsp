<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.title { padding-top:36px; padding-bottom:20px; }
li{
   list-style:none;
   }
</style>
<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/common.css" >
    <link rel="stylesheet" href="<%=request.getContextPath()%>/css/boot.css" >
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script> 
	<script src="https://code.jquery.com/jquery-latest.js"></script>
	<!-- 파비콘 -->
	<link rel="icon" href="<%=request.getContextPath() %>/img/favicon.ico">
</head>
<body>
<%@ include file="../header.jsp" %>


<h1 style="text-align:center; margin:100px;">레시피</h1>

<hr class="featurette-divider" style="margin-bottom:50px;">

	<section class="page" id="page2">
            <div class="page_wrap">
                <h2 class="page_tit">헬씨다이닝</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub12.jpg" alt="아보카도 코코넛 파르페" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">아보카도 코코넛 파르페</h3>
                                <p class="pic_com">건강하고 맛있는 오트밀과 아보카도를 같이 곁들이면 완벽한 아침식사가 됩니다!</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub13.jpg" alt="아보카도 바나나 아이스크림" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">아보카도 바나나 아이스크림</h3>
                                <p class="pic_com">아보카도를 활용한 아이스크림은 색다른 경험을 선사합니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub14.jpg" alt="스트로보카도 스무디" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">스트로보카도 스무디</h3>
                                <p class="pic_com">누구나 좋아하는 건강까지 생각한 스무디 음료입니다.</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>

<%@ include file="../footer.jsp" %>
</body>
</html>				
