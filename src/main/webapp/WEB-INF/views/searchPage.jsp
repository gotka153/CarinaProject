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
						var model = thumbnail.split("/");
						var model2 = model[6].split("_thumbnail" , 1);
						var format = `
							<div class="b1">
								<div class="img" id="img">
								`+thumbnail+`
								</div>
								<ul class="bul">
								<li>`+model2+`</li>
								<li>주행거리</li>
								<li>연식</li>
								<li>가격</li>				
								</ul>
							</div>				
							`
				$("#place").append(format);
					}								
			})
			.fail(function() {
            alert("요청 실패");
        })
}) 
})

</script>
<style>
body{
	padding : 0;
	margin : 0 auto;
	text-align: center;
	
}

.b1 {
	width : 370px;
	height : 100px;
	float: left;
	}

#place {
	width : 1000px;
	height: 825px;
	background-color: #ccc;
}
.img {
	float : left;
	width : 135px;
	height : 100px;
}
.img > img {
	width : inherit;
	height: inherit;
}

.bul {
	list-style: none;
	margin: 0;
	padding: 0;
	width: 235px;
	height: 100px;
	float: left;
}

.bul > li {
	width: inherit;
	height: 25px;
	font-size: small;
}
</style>
</head>
<body>
	검색페이지
	<br> 검색어는?
	<input id="search" type="text">
	<button id="enter">검색하기</button>
<%-- 	<c:forEach items="${list }" var="i"> --%>
<%-- 		<p>${i.vehicle_no }</p> --%>
<%-- 	</c:forEach> --%>
<div id="place">

</div>
	