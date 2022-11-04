<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

.frm { border:2px solid #333; padding: 1px; width: auto; margin:50px auto; }
.frm_tb { display:table; margin:40px auto;  }
.frm_tb tr { display:table-row; }
.frm_tb td, .frm_tb th { display:table-cell; }
.frm_tb th { width:200px; height: 48px;  }
.frm_tb td { width:400px; height: 48px; }
.frm_tb label:before { content:"*"; }

.in_dt { background-color:#fff; height:32px; line-height: 32px; width: 280px; 
color:#f36; font-size:16px; text-indent:0.5em; }
.in_btn { display:block; background-color:#333; min-width:120px; height: 32px; 
line-height: 32px; border-radius:20px; float:left; margin-left:80px; margin-right:20px; cursor:pointer; color:#fff;}
.in_btn:hover { background-color: deepskyblue; color:red; }
.in_btn2 { float:left; display:block; margin-left:280px;}
.in_btn3 { display:block; background-color:#333; min-width:120px; height: 32px; 
line-height: 32px; border-radius:20px; float:left; margin-left:800px; margin-top:-60px; cursor:pointer; color:#fff; position:absolute; }

.frm_tb { display:table; }
.frm_tb li { display:table-row; }
.frm_tb .td, .frm_tb .th, .frm_tb .td2 { display:table-cell; }
.frm_tb .th { width:200px; }
.frm_tb .td { width:200px; }
.frm_tb .td2 { width:400px; }
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<script>
	function findAddress() {
		new daum.Postcode({
			oncomplete: function(data) {
				console.log(data);
				var roadAddr = data.roadAddress;
				var jibunAddr = data.jibunAddress;
				document.getElementById("postcode").value = data.zonecode;
				if(roadAddr !== '') {
					document.getElementById("address1").value = roadAddr;				
				} else if(jibunAddr !== ''){
					document.getElementById("address1").value = jibunAddr;
				}
				document.getElementById("address2").focus();
			}
		}).open();
	}
	
	function idCheck(){
		var cusId = document.frm1.cusId.value;
		var win = window.open("idCheck.jsp?cusId="+cusId,"id 중복 체크", "width=400, height=300");
	}	
	
	function joinCheck(f){
		if(f.cusPw.value!=f.cusPw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.cusPw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
			return false;
		}
	}
	</script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<%@ include file="../head.jsp" %>
</head>
<body>
<%@ include file="../header.jsp" %>
<div class="wrap">
<div class="content">
    <div class="bread">
        <div class="bread_fr">
            <a href="index.jsp" class="home">HOME</a> &gt;
            <span class="sel">회원가입</span>
        </div>
    </div>
    <section class="page">
        <div class="page_wrap">
            <h2 class="page_title">회원가입</h2>
            <div class="form_fr">
                <form class="frm" name="frm1" id="frm1" action="../InsertCustomCtrl" method="post" onsubmit="return joinCheck(this)">
                    <table class="frm_tb">
                        <tbody>
                            <tr>
                                <th>아이디</th>
                                <td>
                                    <input type="text" id="cusId" name="cusId" class="in_dt" style="display:block; float:left;" required autofocus readonly>
                                    <button type="button" class="in_btn2" onclick="idCheck()" style="margin-right:5px; margin-top:-30px; width:150px; background-color:#333; color:#fff; border-radius:4em; ">아이디 중복 확인</button>
                                    <input type="hidden" name="idck" id="idck" value="no" >
                                    
                                </td>
                            </tr>
                            <tr>
                                <th>비밀번호</th>
                                <td>
                                    <input type="password" id="cusPw" name="cusPw" class="in_dt" required>
                                </td>                                
                                <td>
                                    <input type="password" id="pw2" name="pw2" class="in_dt" required style="margin-left:-140px;" placeholder="비밀번호를 재입력해주세요">
                                </td>
                            </tr>
                            <tr>
                                <th>이  름</th>
                                <td>
                                    <input type="text" id="cusName" name="cusName" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
								<th>주소</th>
								<td>
								<input type="text" name="address1" id="address1" placeholder="주소 입력" class="in_dt" required /><br>
								<input type="text" name="address2" id="address2" placeholder="상세 주소 입력" class="in_dt" required /><br>
								<input type="text" name="postcode" id="postcode" style="width:160px;float:left;margin-right:20px;" placeholder="우편번호" class="in_dt">
								<button id="post_btn" onclick="findAddress()" class="in_btn" style="margin-left:-7px">우편번호 검색</button>
								</td>
							</tr>
                            <tr>
                                <th>연락처</th>
                                <td>
                                    <input type="tel" id="tel" name="tel" class="in_dt" required>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <button type="submit" class="in_btn3">회원가입</button>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
    </section>
    </div>
</div>
<%@ include file="../footer.jsp" %>
</body>
</html>				
