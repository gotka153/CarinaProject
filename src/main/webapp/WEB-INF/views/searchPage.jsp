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



$("#but").click(function(){
	var type = $("#selcettype option:selected").val();
		alert(type);
	});
})


</script>
<style>
body {
	padding: 0;
	margin: 0 auto;
	text-align: center;
}

ul {
	list-style: none;
	margin: 0;
	padding: 0;
	float: left;
	text-align: left;
}

#place {
	width: 1000px;
	height: 825px;
	background-color: #ccc;
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
	<input id="search" type="text">
	<button id="enter">검색하기</button>
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
	<form name="filter_form" id="filter_form">
	<ul class="filter">
		<li class="filter type">타입 
			<select id="selcettype" name="type">			
					<option value="경차">경형</option>
					<option value="소형">소형</option>
					<option selected value="준중형">준중형</option>
					<option value="중형">중형</option>
					<option value="대형">대형</option>
			</select>
		</li>
		<li class="filter fuel">연료타입
				<select name="fuel">			
					<option selected value="휘발유">휘발유</option>
					<option value="고급유">고급유</option>
					<option value="경유">경유</option>
					<option value="하이브리드">하이브리드</option>
					<option value="전기">전기</option>
					<option value="수소">수소</option>
				</select>
		</li>
		<li class="filter mission">변속기
			<select name="mission">			
					<option selected value="자동">자동</option>
					<option value="수동">수동</option>
			</select>
		</li>
		<li class="filter wheeldrt">전륜후륜
			<select name="wheeldrt">			
					<option selected value="전륜">전륜</option>
					<option value="후륜">후륜</option>
					<option value="사륜">사륜</option>
			</select>
		</li>
		<li class="filter psngcap">승차정원
			<select name="psngcap">			
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
	</body>
	<script>

	</script>
	</html>