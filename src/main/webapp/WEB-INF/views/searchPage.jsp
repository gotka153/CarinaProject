<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="shortcut icon" type="image/x-icon"
	href="/img/CarinaLogoheader.png">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/css/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!--         Core theme CSS (includes Bootstrap) -->
<link href="/css/styles.css" rel="stylesheet" />
<script src="/js/SearchPageJs.js"></script>
<script>
$(function(){
	$("#enter").click(function(){
		var kwd = $("#search").val();
		$.ajax({
			type : "GET",
			url : "/searchbykwd",
			data : {"kwd" : "%"+kwd+"%"},
			dataType : "json"
			})			
			.done(function(data){
				$("#place").html("");
				for(var i=0 ; i<data.length; i++){
					 	var thumbnail = data[i].thumbnail;
						var model_name = data[i].model_name;
						var mileage = data[i].mileage;
						var year = data[i].year_of_manufacture;
						var price = data[i].price;
						var format = `							
							<label class="thumb_img">`+thumbnail+`</label>
							<ul class="thumb_text">
							<li>`+model_name+`</li>
							<li>`+mileage+`</li>
							<li>`+year+`</li>
							<li>`+price+`</li>
							</ul>
							`												

				$("#place").append(format);
					}								
			})
			.fail(function() {
            alert("요청 실패");
        })
}) 
</script>
<style>
body {
	padding: 0;
	margin: 0;
	text-align: center;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
	float: left;
	text-align: left;
}

.outline {
	width: 1400px;
	height: 1000px;
	margin: 0 auto;
}

#place {
	width: 1000px;
	height: auto; margin : 0 auto; position : relative; float : left;
	background-color: #ccc;
	margin: 0 auto;
	position: relative;
	float: left;
}

.filter {
	width: 140px;
	height: auto;
	left: 0px;
	margin: 0;
	padding: 0;
	display: grid; top : 30px;
	float: left;
	position: sticky;
	top: 30px; float : left; position : sticky;
	background-color: #f8f8f8;
}

.thumb_img {
	float: left;
	width: 135px;
	height: 100px;
}

.thumb_img>img {
	width: inherit;
	height: inherit;
}

.thumb_text {
	width: 198px;
	height: 100px;
}

.thumb_text>li {
	width: inherit;
	height: 25px;
	font-size: small;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-lg-5">
			<a class="navbar-brand" href="#!"><img
				src="/img/CarinaLogoheader.png" alt="로고" width="40px" height="30px"></a>
			<a class="navbar-brand" href="#!"><b>Carina</b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="/searchpage">내차 사러가기</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">내차 팔러가기</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">허위 매물
							신고</a></li>
				</ul>
				<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" href="#!">로그인</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">회원가입</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<input id="search" type="text">
	<button id="enter">검색하기</button>
	<div class="outline">
		<div class="filter">
			<form name="filter_form" id="filter_form">
				<ul>
					<li class="filter type">타입 <select id="selcettype" name="type">
							<option value="경차">경형</option>
							<option value="소형">소형</option>
							<option selected value="준중형">준중형</option>
							<option value="중형">중형</option>
							<option value="대형">대형</option>
					</select>
					</li>
					<li class="filter fuel">연료타입 <select name="fuel">
							<option selected value="휘발유">휘발유</option>
							<option value="고급유">고급유</option>
							<option value="경유">경유</option>
							<option value="하이브리드">하이브리드</option>
							<option value="전기">전기</option>
							<option value="수소">수소</option>
					</select>
					</li>
					<li class="filter mission">변속기 <select name="mission">
							<option selected value="자동">자동</option>
							<option value="수동">수동</option>
					</select>
					</li>
					<li class="filter wheeldrt">전륜후륜 <select name="wheeldrt">
							<option selected value="전륜">전륜</option>
							<option value="후륜">후륜</option>
							<option value="사륜">사륜</option>
					</select>
					</li>
					<li class="filter psngcap">승차정원 <select name="psngcap">
							<option value="2">2인</option>
							<option selected value="5">5인</option>
							<option value="7">7인</option>
							<option value="9">9인</option>
							<option value="11">11인</option>
							<option value="12">12인 이상</option>
					</select>
					</li>
					<li class="filter cc">배기량</li>
					<li class="filter color">색상</li>
				</ul>
			</form>
			<button onclick="filter_submit()">찾기</button>
		</div>
		<div id="place">
			<c:forEach items="${list }" var="i">
				<label class="thumb_img">${i.thumbnail }</label>
				<ul class="thumb_text">
					<li>${i.model_name }</li>
					<li>${i.mileage }</li>
					<li>${i.year_of_manufacture }</li>
					<li>${i.price }</li>
				</ul>
			</c:forEach>
		</div>
	</div>
	
	<footer class="py-5 bg-light">

		<div class="container">
			<img class="footer_logo" src="/img/CarinaLogoheader.png" alt="로고">
			<p class="m-0 text-center text-black">
			<div class="container">
				<div class="copy_01">
					<ul class="footerul">
						<li>회사소개</li>
						<li>이용 약관</li>
						<li>제휴광고</li>
						<li>사이트맵</li>
						<li>고객센터</li>
					</ul>
				</div>
				<div class="copy_02">
					<ul class="footerul">
						<li>사업자 등록번호: 111-22-33333 |</li>
						<li>FAX:00-000-0000 |</li>
						<li>주소:황해도 복본동 2길 16(개마고원)</li>
					</ul>
				</div>
				<div class="copy_03">
					<ul class="footerul">
						<li>대표메일:carina@naver.com |</li>
						<li>대표전화:010-0000-0000 |</li>
						<li>통신판매업신고: 제 2023-서울중구-00000호</li>
					</ul>
					<div class="bboo">
						<span class="copy1">Copytight&copy;carinacenter</span> <span
							class="description">카리나는 통신판매중개자이며 차량판매의 당사자가 아니며,상품 거래정보,
							거래에 대하여 책임을 지지 않습니다.</span>
					</div>
				</div>
				</p>
			</div>
	</footer>
</body>


<script>

	</script>
</html>