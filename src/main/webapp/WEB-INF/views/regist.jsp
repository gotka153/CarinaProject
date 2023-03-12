<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <link rel="shortcut icon" type="image/x-icon" href="/img/CarinaLogoheader.png">
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Regist</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="/css/favicon.ico" />
<!-- Bootstrap icons-->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet" />
<!--         Core theme CSS (includes Bootstrap) -->
<link href="/css/styles.css" rel="stylesheet" />
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous"> -->
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
	
	
	
	
	
		<form action="/regist" method="POST">
<!-- 		<label for="vehicle_no">vehicle_no:</label> -->
<!-- 		<input type="number" id="vehicle_no" name="vehicle_no" value="1" required><br><br> -->
		
<!-- 		<label for="b_no">b_no:</label> -->
<!-- 		<input type="number" id="b_no" name="b_no" value="1" required><br><br> -->
		
		<label for="license_number">License Number:</label>
		<input type="text" id="license_number" name="license_number" value="12가1212" required><br><br>
		
		<label for="domestic_import">Domestic Import:</label>
		<input type="text" id="domestic_import" name="domestic_import" value="국산" required><br><br>
		
		<label for="manufacturer">Manufacturer:</label>
		<input type="text" id="manufacturer" name="manufacturer" value="기아" required><br><br>
		
		<label for="vehicle_type">Vehicle Type:</label>
		<input type="text" id="vehicle_type" name="vehicle_type" value="대형" required><br><br>
		
		<label for="model_name">Model Name:</label>
		<input type="text" id="model_name" name="model_name" value="k9" required><br><br>
		
		<label for="year_of_manufacture">Year of Manufacture:</label>
		<input type="text" id="year_of_manufacture" name="year_of_manufacture" value="2022" required><br><br>
		
		<label for="mileage">Mileage:</label>
		<input type="number" id="mileage" name="mileage" value="1" required><br><br>
		
		<label for="fuel_type">Fuel Type:</label>
		<input type="text" id="fuel_type" name="fuel_type" value="디젤" required><br><br>
		
		<label for="transmission_type">Transmission Type:</label>
		<input type="text" id="transmission_type" name="transmission_type" value="오토" required><br><br>
		
		<label for="displacement">Displacement:</label>
		<input type="number" id="displacement" name="displacement" value="1" required><br><br>
		
		<label for="passenger_capacity">Passenger Capacity:</label>
		<input type="number" id="passenger_capacity" name="passenger_capacity" value="5" required><br><br>
		
		<label for="wheel_type">Wheel Type:</label>
		<input type="text" id="wheel_type" name="wheel_type" value="후륜" required><br><br>
		
		<label for="color">Color:</label>
		<input type="text" id="color" name="color" value="검정" required><br><br>
		
		<label for="price">Price:</label>
		<input type="number" id="price" name="price" value="29000000" required><br><br>
		
		<label for="accident_status">Accident Status:</label>
		<input type="text" id="accident_status" name="accident_status" value="무사고" required><br><br>
		
		<label for="transaction_date">Transaction Date:</label>
		<input type="text" id="transaction_date" name="transaction_date" value="2023-03-09" required><br><br>
		
		<label for="transaction_location">Transaction Location:</label>
		<input type="text" id="transaction_location" name="transaction_location" value="서울" required><br><br>
		
		<button type="submit">regist</button>
		
		${error}
	</form>
	
	
	
	
	





























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
