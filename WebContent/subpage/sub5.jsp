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
                <h2 class="page_tit">파인다이닝</h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub9.jpg" alt="버번 BBQ 아보카도 버거" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">버번 BBQ 아보카도 버거</h3>
                                <p class="pic_com">버번 비비큐 소스를 활용한 프리미엄 아보카도 버거</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub10.jpg" alt="블랙앤블루피자" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">블랙앤블루피자</h3>
                                <p class="pic_com">고소한 알프레도 소스, 허브와 갈릭향이 들어간 감자, 얇은 스테이크</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub11.jpg" alt="바삭한 감자튀김을 활용한 훌륭한 아침식사 메뉴입니다." class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">구운파인애플과 쉬림프롤</h3>
                                <p class="pic_com">풍부한 아보카도와 야채를 활용한 베트남식 롤.</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>

<%@ include file="../footer.jsp" %>
</body>
</html>				
