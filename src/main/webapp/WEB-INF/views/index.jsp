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
<title>Heroic Features - Start Bootstrap Template</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/css/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!--         Core theme CSS (includes Bootstrap) -->
<link href="/css/styles.css" rel="stylesheet" />
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"> -->
<script>
	function search() {
		alert("검색!");
	}
</script>
</head>
<body>
	<!-- Responsive navbar-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-lg-5">
			<a class="navbar-brand" href="#!"><img src="/img/CarinaLogoheader.png" alt="로고" width="40px" height="30px"></a> <a class="navbar-brand"
				href="#!"><b>Carina</b></a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0">
					<li class="nav-item"><a class="nav-link" aria-current="page"
						href="#!">내차 사러가기</a></li>
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
	<!-- img banner -->
	<div class="py-5">
		<div class="container px-lg-5">
			<div class="p-4 p-lg-5 bg-light rounded-3 text-center">
				<div class="m-4 m-lg-5">
					<h1 class="display-5 fw-bold">IMG BANNER</h1>
					<p class="fs-4">comment</p>
					<a class="btn btn-primary btn-lg" href="#!">Call to action</a>
				</div>
			</div>
		</div>
	</div>

	<!-- search form -->
	<section class="pt-0">
		<div class="container px-lg-5"">
			<div class="p-4 p-lg-5 bg-light rounded-3 text-center">
				<div class="m-4 m-lg-5">
					<br>
					<p class="fs-4 pri">
						<input type="text" id="kwd" placeholder="검색어를 입력해주세요" value="">
						<img src="assets/search.svg" width="38px" height="38px"
							onclick="search();">
					</p>
				</div>
			</div>

		</div>
		<div class="container px-lg-5">
			<!-- Page Features-->
			<div class="row gx-lg-5">
				<div class="col-lg-6 col-xxl-4 mb-5">
					<div class="card bg-light border-0 h-100">
						<div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
							<div
								class="feature bg-primary bg-gradient text-white rounded-3 mb-4 mt-n4">
								<i class="bi bi-collection"></i>
							</div>
							<h2 class="fs-4 fw-bold">Fresh new layout</h2>
							<p class="mb-0">With Bootstrap 5, we've created a fresh new
								layout for this template!</p>
						</div>
						
					</div>
				</div>
			</div>
		</div>

	</section>

	<!-- Footer-->
	<footer class="py-5 bg-light">

		<div class="container">
			<img class="footer_logo" src="/img/CarinaLogoheader.png" alt="로고">
			<p class="m-0 text-center text-black"><div class="container">
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
                    <li>사업자 등록번호: 111-22-33333  |</li>
                    <li>     FAX:00-000-0000            |</li>
                    <li> 주소:황해도 복본동 2길 16(개마고원)</li>
                   </ul>
            </div>
            <div class="copy_03">
                <ul class="footerul">
                    <li>대표메일:carina@naver.com     |      </li>
                    <li>대표전화:010-0000-0000 | </li> 
                    <li>통신판매업신고: 제 2023-서울중구-00000호</li>
                   </ul>
                   <div class="bboo">
                    <span class="copy1">Copytight&copy;carinacenter</span>
                    <span class="description">카리나는 통신판매중개자이며 차량판매의 당사자가 아니며,상품 거래정보, 거래에 대하여 책임을 지지 않습니다.</span>
                  </div>
                  
          </div></p>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
