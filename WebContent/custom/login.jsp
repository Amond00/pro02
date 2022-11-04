<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인창</title>
<style>
    /* header.css */
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 580px; margin:50px auto; }
    .frm_tb { display:table; margin:40px auto;  }
    .frm_tb tr { display:table-row; }
    .frm_tb td, .frm_tb th { display:table-cell; }
    .frm_tb th { width:110px; height: 48px;  }
    .frm_tb td { width:300px; height: 48px; }
    .frm_tb label:before { content:"*"; }

    .in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
    color:#f36; font-size:16px; text-indent:0.5em; }
    .in_btn { display:block; background-color:#333; min-width:120px; height: 32px; line-height: 32px; border-radius:20px; float:right; cursor:pointer; color:#fff;}
    .in_btn:hover { background-color: deepskyblue; }
	body { height: 1000px;}
    /* ul > li 를 테이블 처럼 출력 */
    .frm_tb { display:table; }
    .frm_tb li { display:table-row; }
    .frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
    .frm_tb .th { width:200px; }
    .frm_tb .td { width:200px; }
    .frm_tb .td2 { width:400px; }
    
    </style>
<%@ include file="../head.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="page_wrap">
    <h2 class="page_title">로그인</h2>
    <div class="form_fr">
        <form name="frm1" action="<%=request.getContextPath() %>/CustomLoginCtrl" method="post" id="loginForm" class="frm">
            <table class="frm_tb">
                <tbody>
                    <tr>
                        <th><label>아이디</label></th>
                        <td>
                            <input type="text" id="cusId" name="cusId" class="in_dt" required autofocus>
                        </td>
                    </tr>
                    <tr>
                        <th><label>비밀번호</label></th>
                        <td>
                            <input type="password" id="cusPw" name="cusPw" class="in_dt" required>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" class="btn_f">
                            <button type="submit" class="in_btn">로그인</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </form>
    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>				
