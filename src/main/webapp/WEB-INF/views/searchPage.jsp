<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="shortcut icon" type="image/x-icon" href="/img/CarinaLogoheader.png">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
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
			url : "/searchpage",
			data : {"kwd" : '%'+kwd+'%'},
			dataType : "json", //보낼때가 아니고 서버로부터 받을 때 이런 타입으로 받겠다.
			success : function(data){
				alert("성공?");
			}
			
		});
		
	});
})
</script>
</head>
<body>
검색페이지
<br>
검색어는? <input id="search" type="text"><button id="enter">검색하기</button>
<c:forEach items="${list }" var="i">
<p>${i.vehicle_no }</p>
</c:forEach>
</body>
</html>