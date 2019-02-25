<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta content="IE=edge" http-equiv="X-UA-Compatible">
<meta content="width=device-width,initial-scale=1" name="viewport">
<meta content="description" name="description">
<meta name="google" content="notranslate" />
<meta content="Mashup templates have been developped by Orson.io team"
	name="author">
    <script src="/redu/resources/wordcloud2/htmlwidgets-0.8/htmlwidgets.js?ver=2"></script>
	<link href="/redu/resources/wordcloud2/wordcloud2-0.0.1/wordcloud.css" rel="stylesheet" />
	<script src="/redu/resources/wordcloud2/wordcloud2-0.0.1/wordcloud2-all.js"></script>
	<script src="/redu/resources/wordcloud2/wordcloud2-0.0.1/hover.js"></script>
	<script src="/redu/resources/wordcloud2/wordcloud2-binding-0.2.0/wordcloud2.js?ver=2"></script>
<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link href="/bicycle/assets/apple-touch-icon.png" rel="apple-touch-icon">
<link href="/bicycle/assets/favicon.ico" rel="icon">



<title>Title page</title>

<link href="/bicycle/jsp/main.a3f694c0.css" rel="stylesheet">
<style>

hr {
    display: block;
    unicode-bidi: isolate;
    margin-block-start: 0.5em;
    margin-block-end: 0.5em;
    margin-inline-start: auto;
    margin-inline-end: auto;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
}
.col-md-6{
	width : 100%;
} 	
.form-control {
opacity: 0.5;
width : 50%;
} 
</style>

<%
String date = request.getParameter("date");	
String shumidity_2019 = request.getParameter("humidity");
String stemperature_2019 = request.getParameter("temperature");
String srainfall_2019 = request.getParameter("rainfall");
String swind_speed_2019 = request.getParameter("wind_speed");
int result=-2;
double rental_2018, actual_prediction_2019; // prediction_2019는 542.xxx 형태
//int actual_prediction_2019; // actual_prediction_2019는 543 정수 올림 형태
if(shumidity_2019 != null &&  stemperature_2019 != null && srainfall_2019 != null && swind_speed_2019 !=null){


double humidity_2019 = Double.parseDouble(shumidity_2019);
double temperature_2019 = Double.parseDouble(shumidity_2019);
double rainfall_2019 = Double.parseDouble(shumidity_2019);
double wind_speed_2019 = Double.parseDouble(shumidity_2019);
double regression_2017 = (-50.03513)*humidity_2019 + 6.6666284*temperature_2019 + (-99.26862)*rainfall_2019 + 27.908564*wind_speed_2019 + 48.26786;
double regression_2018 = (-86.62335)*humidity_2019 + 16.414356*temperature_2019 + (-108.689514)*rainfall_2019 + 26.344444*wind_speed_2019 + 11.953942;

if(rainfall_2019 == 0){
   if(humidity_2019 < 0.5){
      rental_2018 = 564;
      actual_prediction_2019 = rental_2018 + Math.abs(regression_2018 - regression_2017); // 564는 비가 안오고, 습도가 0.5보다 작을 때 상위 5개 평균
      result = (int)actual_prediction_2019;
      System.out.println("1-1="+result);
   }
   else{
      rental_2018 = 500.5;
      actual_prediction_2019 = rental_2018 + Math.abs(regression_2018 - regression_2017); // 500.5는 비가 안오고, 습도가 0.5보다 클 때 상위 10개 평균
      result=(int)actual_prediction_2019;
      System.out.println("1-2="+result);
   }
}
else if(0 < rainfall_2019 && rainfall_2019 < 1){
      rental_2018 = 185.25;
      actual_prediction_2019 = rental_2018 + Math.abs(regression_2018 - regression_2017); // 0 < rainfall < 1일 때 평균
      result=(int)actual_prediction_2019;
      System.out.println("2="+result);
}
else if(1 <= rainfall_2019 && rainfall_2019 < 10){ // 1 <= rainfall < 10일 때 평균
      rental_2018 = 60.28571;
      actual_prediction_2019 = rental_2018 + Math.abs(regression_2018 - regression_2017);
      result=(int)actual_prediction_2019;
      System.out.println("3="+result);
}
else{  // 비가 평균 10mm 이상일 때
	  result= -1;
	  System.out.println("4="+result);
   }
}
	%>
</head>

<body>

	<!-- Add your content of header -->	
	<header>
		<nav class="navbar navbar-fixed-top navbar-default">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle uarr collapsed"
						data-toggle="collapse" data-target="#navbar-collapse-uarr">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="/bicycle/jsp/index.jsp" title=""> 
					<img src="../assets/images/그림1.png" width="50" height="50" class="navbar-logo-img" alt="">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse-uarr">
					<ul class="nav navbar-nav navbar-right">
						<ul class="nav navbar-nav navbar-right">
          <li><a href="/bicycle/jsp/Index.jsp" title="" class="active">Home</a></li>
          <li><a href="/bicycle/jsp/About.jsp" title=""> About</a></li>
          <li><a href="/bicycle/Leaflet" title=""> Analysis </a></li>
          <li><a href="/bicycle/Predict" title="">Predict</a></li>
          <li><a href="/bicycle/jsp/Board1.jsp" title="">Board</a></li>
          <li><a href ="/bicycle/Myinfo"> <%=session.getAttribute("sessionname") %> </a></li>
						</ul>

					</ul>
				</div>
			</div>
		</nav>
	</header>
<!-- 							<div class="form-group" align="center" > -->
								<h1 id="result" style="color:white; background:transparent; border: None" align="center" > 
								

								</h1>
								<!-- 
								</div> -->


	<div class="section-container no-padding" style="background-image: url('/bicycle/assets/images/predict_background3.jpg');background-repeat: no-repeat; background-size:cover ;">
		<div class="container" align="center">
			<div class="row" align="center">
			<div align="center">
			<ul class="features" >
                    <li>
                        <h3>여의나루역 1번 출구 앞에서는 몇 명이 빌릴까요?</h3>
                    </li>
			<h2 style="color:green;"> 
												<%
									if(result == -1)
										out.println(date+"의 예상 대여 자전거 수는 10대 미만입니다.");
									else if(result>=0)
										out.println(date+"의 예상 대여 자전거 수는 "+ result +"대 입니다.");
								
								%>
			</h2> 
				</div>
				<div class="col-xs-12">

					<div class="row">
						<div class="col-md-6">
						
					<!-- 	
						평균 습도 입력 : <input type=text name ="humidity"><br>
평균 온도 입력 : <input type=text name ="temperature"><br>
강수량 입력 : <input type=text name ="rainfall"><br>
바람의 세기 입력 : <input type=text name ="wind_speed">
						 -->
							<form action="/bicycle/jsp/Predict.jsp" class="reveal-content contact-form" align="center">
								<div class="form-group" align="center">
									<h4 align="center"> 날짜를 입력하세요</h4><input type="date" class="form-control" name ="date" id="date" >
								</div>
								</br>
								<div class="form-group" align="center">
									<h4> 평균 습도 입력 </h4>
									<input type="text" class="form-control" id="humidity"  name ="humidity" value ="단위 (소수점) ">
								</div>
								</br>
								<div class="form-group" align="center">
									<h4> 평균 온도 입력 </h4>
									<input type="text" class="form-control" name ="temperature"  id="temperature"  value ="단위 (ºc) " >
								</div>
								</br>
								<div class="form-group" align="center">
									<h4> 강수량 입력 </h4>
									<input type="text" class="form-control" name="rainfall" id="rainfall" value ="단위(mm)">
								</div>
								</br>
								<div class="form-group" align="center">
									<h4> 바람 세기 </h4>
									<input type="text" class="form-control" name="wind_speed" id="wind_speed"  value ="단위 (m/s)">
								</div>
								<button type="submit" class="btn btn-primary btn-lg">Send</button>
								</br>

								
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="section-container footer-container">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<h4>About us</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Nunc sit amet consectetur dolor</p>
					</div>

					<div class="col-md-4">
						<h4>Do you like ? Share this !</h4>
						<p>
							<a href="https://facebook.com/"
								class="social-round-icon white-round-icon fa-icon" title="">
								<i class="fa fa-facebook" aria-hidden="true"></i>
							</a> <a href="https://twitter.com/"
								class="social-round-icon white-round-icon fa-icon" title="">
								<i class="fa fa-twitter" aria-hidden="true"></i>
							</a> <a href="https://www.linkedin.com/"
								class="social-round-icon white-round-icon fa-icon" title="">
								<i class="fa fa-linkedin" aria-hidden="true"></i>
							</a>
						</p>
						<p>
							<small>© Untitled | Website created with <a
								href="http://www.mashup-template.com/" class="link-like-text"
								title="Create website with free html template">Mashup
									Template</a>/<a href="http://www.unsplash.com/"
								class="link-like-text" title="Beautiful Free Images">Unsplash</a></small>
						</p>
					</div>

					<div class="col-md-4">
						<h4>Subscribe to newsletter</h4>

						<div class="form-group">
							<div class="input-group">
								<input type="text" class="form-control footer-input-text">
								<div class="input-group-btn">
									<button type="button" class="btn btn-primary btn-newsletter ">OK</button>
								</div>
							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</footer>

 	<script>
		document.addEventListener("DOMContentLoaded", function(event) {
			navActivePage();
			
		});
	</script> 
<script type="application/json" data-for="htmlwidget-5d6f29d47235e3893736">{"x":{"word":["자전거","대여","로그인","오류","결제","사용","따릉이","시간","진짜","이용","최악","지도","불편","앱이","가입","로딩","업데이트","회원","번호","검색"],"freq":[206,189,168,153,141,130,125,125,120,118,109,101,93,90,88,88,83,76,71,68],"fontFamily":"타이포_백범일지 B","fontWeight":"bold","color":"random-dark","minSize":0,"weightFactor":0.436893203883495,"backgroundColor":"white","gridSize":0,"minRotation":-0.785398163397448,"maxRotation":0.785398163397448,"shuffle":true,"rotateRatio":0.4,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
	<!-- Google Analytics: change UA-XXXXX-X to be your site's ID 

<script>
  (function (i, s, o, g, r, a, m) {
    i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
      (i[r].q = i[r].q || []).push(arguments)
    }, i[r].l = 1 * new Date(); a = s.createElement(o),
      m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
  })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');
  ga('create', 'UA-XXXXX-X', 'auto');
  ga('send', 'pageview');
</script>

-->
	<!-- Google maps  -->
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDzA22auDNIFSRiTPytfZVhtuFG_KHBhFQ&callback=googleMapInit"></script>
	<!-- end Google Maps -->



	<script type="text/javascript" src="./main.41beeca9.js"></script>
</body>

</html>