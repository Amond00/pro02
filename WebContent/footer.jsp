<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<footer class="ft">
        <div class="ft_wrap">
            <div class="ft_logo"><img src="<%=request.getContextPath() %>/img/logo.png" alt="하단로고" ></div>
            <div class="mid_box">
                <nav class="fnb">
                    <a href="" class="dpc">개인정보 처리 방침</a>
                    <a href="" class="dpc">이용약관</a>
                    <a href="" class="dpc">이메일무단수집거부</a>
                </nav>
                <p class="addr">Simplot | e-VOS/협력사 | 등록 | 개인정보처리방침 | 문의/제안 | SITEMAP <br>
                    대표전화 02-3773-1114</p>
                <p class="copyright">COPYRIGHT ⓒ LG DISPLAY CO., LTD. ALL RIGHTS RESERVED.</p>
            </div>
            <div class="sel_box">
                <select name="sel" id="sel" class="sel" onchange="sel_link(this)">
                    <option value="">파트너 사이트</option>
                    <option value="https://www.ohcare.org:6200/main.do">산업보건 지원보상 신청</option>
                    <option value="https://partner.lgdisplay.com:8443/partner.main.RetrieveMain.dev">LGD출입예약시스템</option>
                </select>
            </div>
            <script>
            function sel_link(sel){
                location.href = sel.value;
            }
            </script>
        </div>
</footer>