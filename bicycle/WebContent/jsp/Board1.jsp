<%@page import="java.util.ArrayList"%>
<%@page import="VO.BoardVO"%>
<%@page import="DAO.BoardDAO"%>
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
  
  <link href="../assets/apple-touch-icon.png" rel="apple-touch-icon">
  <link href="../assets/favicon.ico" rel="icon">


	<%
	BoardDAO dao = new BoardDAO();
	String sessionid = request.getParameter("id"); 
	System.out.println(request.getParameter("id"));
	session.setAttribute("sessionid", sessionid);
	
	int total = dao.getTotalBoard();
	int page_count = total/3;
	if((page_count%2) !=0){
		
		page_count+=page_count; 
	}
	%>

<script src="jquery-3.2.1.min.js"></script>

<style>
.boardlisttable td{
	width: 28vw;
	text-align: center;
}
tr{
	border-bottom: solid gray 1px;
}
a {
	text-decoration: None;
	color : black; 
}
ul{
list-style: None;
}
.showdetail:hover, .mine:hover {
	text-decoration: underline;
	color : blue; 
}
.toplisttd
{
	wieght :0%;
	height : 40%;
}
.toplist {
	width: 400px;
    height: 300px;
}

.column{
text-align: center;
}

.service-box {
	position: relative;
	width: 28vw;
	height: 30vw;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-flow: row wrap;
	flex-flow: row wrap;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	text-align: center;
	font-weight: 700;

	opacity: 1;
	background: no-repeat center center/cover scroll
}

.service-box.img-01 {
	background-image:
		url(//d2hmp4n7p97ldw.cloudfront.net/assets/home/os-01-61135fdc48f0234fbef929928938f99d9f745549c406807590c90c58b0db3167.png)
 }

.service-box-overlay{
	color : rgb(255,255,255);
	font-size: larger;
}
.service-box:hover .service-box-caption {
	color : black;
	opacity: 0;
	
}

.service-box:hover .service-box-overlay {
	
	opacity: 1
}

.service-box:hover .service-box-blur-wrapper .service-box-blur {
	opacity: 1
}

.service-box .line-4 {
	position: absolute;
	height: 12.5rem;
	top: -13rem;
	left: 50%;
	z-index: 10
}

.service-box .service-box-blur-wrapper {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	overflow: hidden
}

.service-box .service-box-blur-wrapper .service-box-blur {
	width: 100%;
	height: 100%;
	opacity: 0;
	background: no-repeat center center/cover scroll;
	-webkit-transition: all .3s;
	transition: all .3s;
	-webkit-filter: blur(10px);
	-moz-filter: blur(10px);
	-o-filter: blur(10px);
	-ms-filter: blur(10px);
	filter: blur(10px)
}

.service-box .service-box-blur-wrapper .service-box-blur.img-01 {
	/* background-image:
		url(//d2hmp4n7p97ldw.cloudfront.net/assets/home/os-01-61135fdc48f0234fbef929928938f99d9f745549c406807590c90c58b0db3167.png) */
}

.service-box .service-box-caption {
	position: relative;
	font-size: 2rem;
	text-transform: uppercase;
	-webkit-transition: all .25s;
	transition: all .25s
}

@media ( min-width : 768px) {
	.service-box .service-box-caption {
		font-size: 2.5rem
	
	}
}

.service-box .service-box-overlay {
	position: absolute;
	width: 100%;
	height: 100%;
	top: 0;
	left: 0;
	opacity: 0;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-flow: column nowrap;
	flex-flow: column nowrap;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	-ms-flex-align: center;
	align-items: center;
	text-align: center;
	background: rgba(0, 64, 0, 0.7);
	-webkit-transition: all .35s;
	transition: all .35s
}

.service-box .service-box-overlay .content-box-1 {
	text-transform: uppercase;
	padding: 1rem 1rem 2vw;
	font-size: 1.75rem;
	line-height: normal;
	letter-spacing: -0.01875rem
}


.service-box .service-box-overlay .content-box-2.box-ht {
	-ms-flex-item-align: stretch;
	align-self: stretch;
	display: -webkit-box;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-flow: row nowrap;
	flex-flow: row nowrap;
	-webkit-box-pack: center;
	-ms-flex-pack: center;
	justify-content: center;
	-webkit-box-align: start;
	-ms-flex-align: start;
	align-items: flex-start;
	text-align: left
}

.service-box .service-box-overlay .content-box-2>.item-ht {
	padding: 0 2rem;
	-webkit-box-flex: 1;
	-ms-flex: 1 1 0px;
	flex: 1 1 0
}

@media ( max-width : 991px) {
	.service-box {
		width: 100vw;
		height: 60vw
	}
}

/* header {
  position: fixed;
  right: 0; 
  width: 20%;
  padding: 20px;
  box-sizing: border-box;
 	border : 2px solid; 
} */
.pagingNumber{
	text-align: center;
}
</style>
<link href="./main.a3f694c0.css" rel="stylesheet">
</head>




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



<!-- Add your site or app content here -->
<div class="container">
<%
int page_num=1;
if( request.getParameter("page") !=null){
	page_num = Integer.parseInt(request.getParameter("page"));
}
%>

<%-- <header>
    <h1> <%=session.getAttribute("sessionid") %></h1>
</header> --%>
		<table>
		<tr><h1 class = "logo">Top3 viewcount</h1></tr>
		<tr>
		<%
			ArrayList<BoardVO> list = dao.getBoardTopList();
			
			for (int i = 0; i < 3; i++) {
		
			out.println("<td class ='toplisttd'><a href ='boarddetail.jsp?boardseq="+list.get(i).getSeq() +"'>");
		%>
		<%-- ../assets/images/picture1.jpg
		<%= list.get(i).getPicture()%> --%>
		<div class="service-box" style = "background-image:url('<%=list.get(i).getPicture()%>')">
	

		<div class="service-box-blur-wrapper">
			<div class="service-box-blur img-01"></div>
		</div>

		<div class="service-box-caption" style ="color:pink">
			<%=list.get(i).getTitle() %>
		</div>

		<div class="service-box-overlay">
			<div class="content-box-1">
				<font > <%=list.get(i).getContents() %></font><br>
			</div>
		</div>
	</div>
	</a></td>
			<%
				}
			%>
	</tr>
		</table>
		<table class = "boardlisttable">
			<tr>
			<td colspan='4'></br><hr></td>
		</tr>
		<tr>
			<td class ="column"> 게시물 번호 </td>
			<td class ="column"> 제목 </td>				
			<td class ="column"> 작성자 </td>	
			<td class ="column"> 작성 시간 </td>	
		</tr>



		<%
			list = dao.getBoardList(page_num);
			for (int i = 0; i < list.size(); i++) {
				BoardVO vo = list.get(i);

				out.println("<tr><td>"+vo.getSeq()+"</td><td>" +"<a class ='showdetail' href='boarddetail.jsp?boardseq="+vo.getSeq() +"'>"+vo.getTitle()+ "</td><td>"+vo.getWriter()+"</td><td>"+vo.getTime()+"</td></tr>");
				/* out.println("<tr><td colspan='4'><hr></td></tr>"); */
			}
		%>

	</table>
	<div class="pagingNumber">
	
	<%
	for(int i=1;i<=page_count;i++){
		
		out.println("<a href='Board1.jsp?page=" +i+ "'>"+i+"</a>");
	}
		 %> 
	</div>
<footer>
    <div class="section-container footer-container">
        <div class="container">
            <div class="row">
                    <div class="col-md-4">
                        <h4>About us</h4>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sit amet consectetur dolor</p>
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
</script>

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
<script type="text/javascript" src="./main.41beeca9.js"></script></body>

</html>

