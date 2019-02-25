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
<script
	src="/redu/resources/wordcloud2/htmlwidgets-0.8/htmlwidgets.js?ver=2"></script>
<link href="/redu/resources/wordcloud2/wordcloud2-0.0.1/wordcloud.css"
	rel="stylesheet" />
<script
	src="/redu/resources/wordcloud2/wordcloud2-0.0.1/wordcloud2-all.js"></script>
<script src="/redu/resources/wordcloud2/wordcloud2-0.0.1/hover.js"></script>
<script
	src="/redu/resources/wordcloud2/wordcloud2-binding-0.2.0/wordcloud2.js?ver=2"></script>

<!-- Disable tap highlight on IE -->
<meta name="msapplication-tap-highlight" content="no">

<link href="/bicycle/assets/apple-touch-icon.png" rel="apple-touch-icon">
<link href="/bicycle/assets/favicon.ico" rel="icon">
<sctipt src="/bicycle/jquery.min.js">
</script>


<title>Title page</title>

<link href="/bicycle/jsp/main.a3f694c0.css" rel="stylesheet">
<script src="/bicycle/jquery-3.2.1.min.js"></script> <script
	type="text/javascript">
	$(document).ready(function() {
		$("#btn_wc2").on('click', function() {
			if ($("#wc2").css("display") == "block") {
				$("#wc2").css("display", "None");
				$("#btn_wc2").css("color", "black");
			} else {
				$("#wc2").css("display", "block");
				$("#btn_wc2").css("color", "green");
			}
		}); //button on end */
		$("#btn_plot1").on('click', function() {
			if ($("#plot1").css("display") == "block") {
				$("#plot1").css("display", "None");
				$("#btn_plot1").css("color", "black");
			} else {
				$("#plot1").css("display", "block");
				$("#btn_plot1").css("color", "green");
			}

		}); //button on end */
		$("#btn_local_top_borrow").on('click', function() {
			if ($("#local_top_borrow").css("display") == "block") {
				$("#local_top_borrow").css("display", "None");
				$("#btn_local_top_borrow").css("color", "black");
			} else {
				$("#local_top_borrow").css("display", "block");
				$("#btn_local_top_borrow").css("color", "green");
			}

		}); //button on end */
		$("#btn_local_top_return").on('click', function() {
			if ($("#local_top_return").css("display") == "block") {
				$("#local_top_return").css("display", "None");
				$("#btn_local_top_return").css("color", "black");
			} else {
				$("#local_top_return").css("display", "block");
				$("#btn_local_top_return").css("color", "green");
			}

		}); //button on end */
		$("#btn_local_bot_borrow").on('click', function() {
			if ($("#local_bot_borrow").css("display") == "block") {
				$("#local_bot_borrow").css("display", "None");
				$("#btn_local_bot_borrow").css("color", "black");
			} else {
				$("#local_bot_borrow").css("display", "block");
				$("#btn_local_bot_borrow").css("color", "green");
			}

		}); //button on end */
		$("#btn_local_bot_return").on('click', function() {
			if ($("#local_bot_return").css("display") == "block") {
				$("#local_bot_return").css("display", "None");
				$("#btn_local_bot_return").css("color", "black");
			} else {
				$("#local_bot_return").css("display", "block");
				$("#btn_local_bot_return").css("color", "green");
			}

		}); //button on end */
		
		// foreign
		$("#btn_foreign_top_borrow").on('click', function() {
			if ($("#foreign_top_borrow").css("display") == "block") {
				$("#foreign_top_borrow").css("display", "None");
				$("#btn_foreign_top_borrow").css("color", "black");
			} else {
				$("#foreign_top_borrow").css("display", "block");
				$("#btn_foreign_top_borrow").css("color", "green");
			}

		}); //button on end */
		$("#btn_foreign_top_return").on('click', function() {
			if ($("#foreign_top_return").css("display") == "block") {
				$("#foreign_top_return").css("display", "None");
				$("#btn_foreign_top_return").css("color", "black");
			} else {
				$("#foreign_top_return").css("display", "block");
				$("#btn_foreign_top_return").css("color", "green");
			}

		}); //button on end */
		$("#btn_foreign_bot_borrow").on('click', function() {
			if ($("#foreign_bot_borrow").css("display") == "block") {
				$("#foreign_bot_borrow").css("display", "None");
				$("#btn_foreign_bot_borrow").css("color", "black");
			} else {
				$("#foreign_bot_borrow").css("display", "block");
				$("#btn_foreign_bot_borrow").css("color", "green");
			}

		}); //button on end */
		$("#btn_foreign_bot_return").on('click', function() {
			if ($("#foreign_bot_return").css("display") == "block") {
				$("#foreign_bot_return").css("display", "None");
				$("#btn_foreign_bot_return").css("color", "black");
			} else {
				$("#foreign_bot_return").css("display", "block");
				$("#btn_foreign_bot_return").css("color", "green");
			}

		}); //button on end */

		$("#btn_plot").on('click', function() {
			if ($("#plot").css("display") == "block") {
				$("#plot").css("display", "None");
				$("#btn_plot").css("color", "black");
			} else {
				$("#plot").css("display", "block");
				$("#btn_plot").css("color", "green");
			}

		}); //button on end */
	}); // ready end
</script>

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

.form-group {
	border-color: green;
}

.innerPicture {
	display: None;
}

.form-control {
	font-size: 20px;
}
</style>
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
						<img src="/bicycle/assets/images/그림1.png" width="50" height="50"
						class="navbar-logo-img" alt="">
					</a>
				</div>

				<div class="collapse navbar-collapse" id="navbar-collapse-uarr">
					<ul class="nav navbar-nav navbar-right">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="/bicycle/jsp/Index.jsp" title="" class="active">Home</a></li>
							<li><a href="/bicycle/jsp/About.jsp" title=""> About</a></li>
							<li><a href="/bicycle/Leaflet" title=""> Analysis </a></li>
							<li><a href="/bicycle/Predict" title="">Predict</a></li>
							<li><a href="/bicycle/jsp/Board.jsp" title="">Board</a></li>
							<li><a href="/bicycle/Myinfo" title=""> <%=session.getAttribute("sessionname")%></a></li>
						</ul>

					</ul>
				</div>
			</div>
		</nav>
	</header>



	<div class="section-container no-padding">
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<%
						if (request.getAttribute("leafletChartName") != null) {
					%>

					<iframe class="leaflet" src="${leafletChartName }" width="100%"
						height="400px" seamless></iframe>
					<%
						}
					%>
				</div>
			</div>
		</div>
	</div>
	<div class="section-container no-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-6" style="width: 100%">
					<form action="Wordcloud" class="reveal-content contact-form">
						<div class="form-group">
							<input type="button" class="form-control" id="btn_wc1"
								value="App Review Wordcloud" style="display: block" width=100%
								height=500px>
							<div>${wc2}</div>

						</div>
					</form>


					<div class="form-group">
						<input type="button" class="form-control" id="btn_wc2"
							value="Public Homepage Review">
						<div class="innerPicture" id="wc2" align="center">
							<img  alt="" src="/bicycle/assets/images/wc_opinion.png">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_plot" value="Usage Group By Age">
						<div class="innerPicture" id="plot" align="center">
							<img alt="" src="/bicycle/assets/images/연령대별 그래프.jpg">
						</div>
					</div>

					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_local_top_borrow" value="내국인  TOP10 대여 ">
						<div class="innerPicture" id="local_top_borrow" align="center">
							<img alt="" src="/bicycle/assets/images/1.내국인 Top10 대여 .jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_local_top_return" value="내국인 TOP 10 반납">
						<div class="innerPicture" id="local_top_return" align="center">
							<img alt="" src="/bicycle/assets/images/2.내국인 Top10 반납.jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_local_bot_borrow" value="내국인 BOTTOM 10 대여">
						<div class="innerPicture" id="local_bot_borrow" align="center">
							<img alt="" src="/bicycle/assets/images/3.내국인 bot10 대여.jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_local_bot_return" value="내국인 BOTTOM 10 반납">
						<div class="innerPicture" id="local_bot_return" align="center">
							<img alt="" src="/bicycle/assets/images/4.내국인 bot10 반납.jpg">
						</div>
					</div>
					
					
					<!-- 	외국인  "#btn_foreign_top_borrow" -->
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_foreign_top_borrow" value="외국인 TOP 10 대여">
						<div class="innerPicture" id="foreign_top_borrow" align="center">
							<img alt="" src="/bicycle/assets/images/1.외국인 Top10 대여.jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_foreign_top_return" value="외국인 TOP 10 반납">
						<div class="innerPicture" id="foreign_top_return" align="center">
							<img alt="" src="/bicycle/assets/images/2.외국인 Top10 반납.jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_foreign_bot_borrow" value="외국인 BOTTOM 10 대여">
						<div class="innerPicture" id="foreign_bot_borrow" align="center">
							<img alt="" src="/bicycle/assets/images/3.외국인 bot10 대여.jpg">
						</div>
					</div>
					<div class="form-group">
						<input type="button" class="form-control"
							id="btn_foreign_bot_return" value="외국인 BOTTOM 10 반납">
						<div class="innerPicture" id="foreign_bot_return" align="center">
							<img alt="" src="/bicycle/assets/images/4.외국인 bot10 반납.jpg">
						</div>
					</div>
					</form>
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
	<script type="application/json"
		data-for="htmlwidget-5d6f29d47235e3893736">{"x":{"word":["자전거","대여","로그인","오류","결제","사용","따릉이","시간","진짜","이용","최악","지도","불편","앱이","가입","로딩","업데이트","회원","번호","검색"],"freq":[206,189,168,153,141,130,125,125,120,118,109,101,93,90,88,88,83,76,71,68],"fontFamily":"타이포_백범일지 B","fontWeight":"bold","color":"random-dark","minSize":0,"weightFactor":0.436893203883495,"backgroundColor":"white","gridSize":0,"minRotation":-0.785398163397448,"maxRotation":0.785398163397448,"shuffle":true,"rotateRatio":0.4,"shape":"circle","ellipticity":0.65,"figBase64":null,"hover":null},"evals":[],"jsHooks":{"render":[{"code":"function(el,x){\n                        console.log(123);\n                        if(!iii){\n                          window.location.reload();\n                          iii = False;\n\n                        }\n  }","data":null}]}}</script>
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



	<script type="text/javascript" src="/bicycle/jsp/main.41beeca9.js"></script>
</body>

</html>