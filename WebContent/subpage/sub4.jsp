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
                <h2 class="page_tit">캐쥬얼 다이닝 </h2>
                <ul class="pic_lst">
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub4.jpg" alt="술안주, 간식, 반찬등으로 손색이 없습니다." class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">비비큐소스를 활용한<br>테이터잼</h3>
                                <p class="pic_com">술안주, 간식, 반찬등으로 손색이 없습니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub5.jpg" alt="오레오 쿠키와  카라멜 및 마시멜로" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">프라이 앤 오레오쿠키</h3>
                                <p class="pic_com">오레오 쿠키와  카라멜 및 마시멜로</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub6.jpg" alt="바삭한 감자튀김을 활용한 훌륭한 아침식사 메뉴입니다." class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">플로렌틴 프라이 베네딕트</h3>
                                <p class="pic_com">바삭한 감자튀김을 활용한 훌륭한 아침식사 메뉴입니다.</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub7.jpg" alt="제 2회 OLEDs Go!" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">제 2회 OLEDs Go!</h3>
                                <p class="pic_com">공모전 수상작 발표 1위 수상작 케일럼</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <img src="../img/sub_page/sub8.jpg" alt="투명 OLED로 변화하는 오피스 인테리어" class="pic">
                            <div class="hv_box">
                                <h3 class="pic_tit">투명 OLED로 변화하는 오피스 인테리어</h3>
                                <p class="pic_com">디지털 환경과 실제 공간이 만나다</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </section>

<%@ include file="../footer.jsp" %>
</body>
</html>				
