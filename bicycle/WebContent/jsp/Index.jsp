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
  <meta content="Mashup templates have been developped by Orson.io team" name="author">

  <!-- Disable tap highlight on IE -->
  <meta name="msapplication-tap-highlight" content="no">
  
  <link href="/bicycle/assets/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="/bicycle/assets/favicon.ico" rel="icon">
  
  <title>Title page</title>  

<link href="/bicycle/jsp/main.a3f694c0.css" rel="stylesheet"></head>

<body>
 <!-- Add your content of header -->
<header>
  <nav class="navbar  navbar-fixed-top navbar-default">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle uarr collapsed" data-toggle="collapse" data-target="#navbar-collapse-uarr">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="./Index.jsp" title="">
          <img src="../assets/images/그림1.png" width="50" height="50" class="navbar-logo-img" alt="">
          
        </a>
      </div>

      <div class="collapse navbar-collapse" id="navbar-collapse-uarr">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="/bicycle/jsp/Index.jsp" title="" class="active">Home</a></li>
          <li><a href="/bicycle/jsp/About.jsp" title=""> About</a></li>
          <li><a href="/bicycle/Leaflet" title=""> Analysis </a></li>
          <li><a href="/bicycle/Predict" title="">Predict</a></li>
          <li><a href="/bicycle/jsp/Board1.jsp" title="">Board</a></li>
          <li><a href ="/bicycle/Myinfo"> <%=session.getAttribute("sessionname") %> </a></li>
        </ul>
      </div>
    </div>
  </nav>
</header>



<div class="white-text-container background-image-container" style="background-image: url('/bicycle/assets/images/메인화면4.jpg')">
    <div class="opacity"></div>
    <div class="container">
        <div class="row">
           
            <div class="col-md-6">
                <h1>[Te-amo] 따.모</h1>
                <p> </p>
                <p style="font-size:16px">Te-amo는 따릉이를 사랑하는 사람들의 모임으로서, <br>
                	따릉이 이용자 수를 예측하고 <br>
                서울시의 공공자전거 사업에 기여하고 있습니다.</p>
            </div>

        </div>
    </div>
</div>

<div class="section-container border-section-container">
    <div class="container">
            <div class="row">
                <div class="col-md-12 section-container-spacer">
                    <div style="margin:26px;" class="text-center">
                        <h2 style="margin-top:30px">필요할 때 가까운 곳에</h2>
                        <p2 style="font-size : 25px">따릉이가 없어서 당황하신 적 있으신가요?</p2>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="fa-container">
                        <i class="fa fa-comment-o fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="text-center">
                        <h3>불만사항 수집</h3>
                    </div>
                    <div>
                        <p style="font-size:18px">따릉이 앱에 있는 리뷰와 따릉이 홈페이지 게시판에 있는 제목들을 크롤링해서 사용자들의 불편사항을 파악했습니다. 그 결과, 여러가지 이유 중에서 따릉이를 타고 싶지만 이용할 수 없는 불편사항과 앱이 불안정하다는 의견이 많았습니다. </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                        <i class="fa fa-heart-o fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="text-center">
                        <h3>데이터 분석 </h3>
                    </div>
                    <div>
                        <p style="font-size:18px">공공데이터 포털에서 가져온 따릉이 데이터를 R의 여러 패키지들을 이용하여 분석했습니다.따릉이 대여소 위치를 지도로 나타내고, 앱을 설치해서 대여소 정보를 알아낼 필요 없이 쉽게 알 수 있습니다.  
                        </p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="fa-container">
                        <i class="fa fa-bell-o fa-3x" aria-hidden="true"></i>
                    </div>
                    <div class="text-center">
                        <h3>예측 서비스</h3>
                    </div>
                    <div>
                        <p style="font-size:18px">이용하고 싶은 장소 시간을 선택하면 몇대가 남아있을지 예측해서 알려줍니다. 날짜,시간,기온 등 여러 변수를 가지고 머신러닝을 이용했으며 사용자들의 가장 큰 불만사항을 해결하고, 따릉이 배치를 효율적으로 할 수 있습니다.  
                        </p>
                    </div>
                </div>

            </div>
    </div>
</div>

<div style="padding: 49px;" class="section-container">
    <div class="container">
            <div class="row">
               
            </div>
    </div>
</div>


<div class="section-container background-color-container white-text-container">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <div class="text-center">
                    <h2>서비스 바로가기</h2>
                    <p>원하는 곳, 원하는 시간대에 따릉이 잔여대수를 알려드립니다.</p>
                    <a href="/bicycle/Predict" title="" class="btn btn-primary btn-lg">내일 몇대가 있을까?</a>
                </div>
            </div>
        </div>
     </div>
 </div>

 <div class="section-container">
    <div class="container">
        <div class="row">                   
            <div class="col-md-7">
                <img class="img-responsive" src="../assets/images/webpage-integrity.png" alt="">
            </div>

            <div class="col-md-5">
                <ul class="features">
                    <li>
                        <h3>편리성</h3>
                        <p>앱을 이용하지 않아도 대여소정보를 바로 보실 수 있습니다.
                        </p>
                    </li>
                    <li>
                        <h3>효율성</h3>
                        <p>원하는 대여소에 따릉이가 부족하지 않도록 수요예측을 통해 자전거를 효율적으로 배치할 수 있습니다.
                        </p>
                    </li>
                    <li>
                        <h3>사용자친화적</h3>
                        <p>모든 서비스는 사용자의 불만사항을 접수받아 개선될 것이며, 게시판을 이용해주시기 바랍니다.
                        </p>
                    </li>
                </ul>
            </div>
 
<footer>
    <div class="section-container footer-container">
        <div class="container">
            <div class="row">
                    <div class="col-md-4">
                       <h4>About us</h4>
                        <p>Our company is located in MultiCampus room#1102.<br>
                        open  9:00am, Mon-Sat<br>
                        close 18:00pm, Sun</p>
                    </div>

                    <div class="col-md-4">
                        <h4>Do you like ? Share this !</h4>
                        <p>
                            <a href="https://facebook.com/" class="social-round-icon white-round-icon fa-icon" title="">
                            <i class="fa fa-facebook" aria-hidden="true"></i>
                          </a>
                          <a href="https://twitter.com/" class="social-round-icon white-round-icon fa-icon" title="">
                            <i class="fa fa-twitter" aria-hidden="true"></i>
                          </a>
                          <a href="https://www.linkedin.com/" class="social-round-icon white-round-icon fa-icon" title="">
                            <i class="fa fa-linkedin" aria-hidden="true"></i>
                          </a>
                        </p>
                        <p><small>© Untitled | Website created with <a href="http://www.mashup-template.com/" class="link-like-text" title="Create website with free html template">Mashup Template</a>/<a href="http://www.unsplash.com/" class="link-like-text" title="Beautiful Free Images">Unsplash</a></small></p>    
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
  document.addEventListener("DOMContentLoaded", function (event) {
    navActivePage();
  });

<!-- 
Google Analytics: change UA-XXXXX-X to be your site's ID

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


<script type="text/javascript" src="./main.41beeca9.js"></script></body>

</html>