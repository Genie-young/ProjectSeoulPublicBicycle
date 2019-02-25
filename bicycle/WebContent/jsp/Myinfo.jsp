<%@page import="java.sql.Date"%>
<%@page import="VO.MemberVO"%>
<%@page import="DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/bicycle/jsp/main.a3f694c0.css"/>

<style>

@import url(http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700);
@import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700);

<link href="/bicycle/jsp/main.a3f694c0.css" rel="stylesheet">
body {
    background: #fff;
	font-family: 'Roboto', sans-serif;
	color:#333;
	line-height: 22px;	
}
h1, h2, h3, h4, h5, h6 {
	font-family: 'Roboto Condensed', sans-serif;
	font-weight: 400;
	color:#111;
	margin-top:5px;
	margin-bottom:5px;
}
h1, h2, h3 {
	text-transform:uppercase;
}

input.upload {
    position: absolute;
    top: 0;
    right: 0;
    margin: 0;
    padding: 0;
    font-size: 12px;
    cursor: pointer;
    opacity: 1;
    filter: alpha(opacity=1);    
}

.form-inline .form-group{
    margin-left: 0;
    margin-right: 0;
}
.control-label {
    color:#333333;
}

.col-xs-12{
	opacity: 0.4;
}
.background-image-container{
background-image: url('/bicycle/assets/images/register_fix.jpg');
padding-left : 15px;
padding-right: 15px;	
margin-left: : 15px;	
}
#alert-success {
background-color: None;
}
</style>
<script src = "/bicycle/jquery-3.2.1.min.js"></script>

<script type="text/javascript">
<% 
String error =request.getParameter("error"); 
if(error != null){
	if(error.equals("10"))
		out.println("alert('update Error!')");
	else if(error.equals("0"))
		out.println("alert('update Success')");
}

String pw = (String)session.getAttribute("pw");
System.out.println("Myinfo.jsp ="+ pw);
String name = (String)session.getAttribute("name");
String phone = (String)session.getAttribute("phone");
String address = (String)session.getAttribute("address");
String sessionid = (String)session.getAttribute("sessionid");
%>
</script>
</head>
<body>

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
        <a class="navbar-brand" href="/bicycle/jsp/Index.jsp" title="">
          <img src="/bicycle/assets/images/따릉이로고.jpg" class="navbar-logo-img" alt="">
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


<div class="white-text-container background-image-container" >
    <div class="opacity"></div>
    <div class="container">
        <div class="row">
           
            <div class="col-md-6">
             	<p>-------------</p>
                <h1>Information</h1>
            </div>

        </div>
    </div>
</div>

		
        
        
<div class="container">
	<div class="row">
    <div class="col-md-8">
      <section>      

        <hr>
          <form action ="/bicycle/Update" class="form-horizontal" method="post" name="signup" id="signup" >        
        <div class="form-group">
          <label class="control-label col-sm-3">Email ID <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type ="email" class="form-control" name ="id" id = "emailid" placeholder = "<%=sessionid %>" value="<%=sessionid %>">
            </div>
            <small>  </small> </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Set Password <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="pw" id="password" placeholder="<%=pw%>" value="<%=pw%>">
           </div>   
          </div>
        </div>
        <div class="form-group">
          <label class="control-label col-sm-3">Full Name <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="name" id="mem_name" placeholder="<%=name%>" value="<%=name%>">
          </div>
        </div>
        
        
 
        <div class="form-group">
          <label class="control-label col-sm-3">ContactNum <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
          	<div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
            <input type="text" class="form-control" name="phone" id="contactnum" placeholder="<%=phone %>" value="<%=phone %>">
            </div>
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">Address <br>
          <small></small></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="address" id="address" placeholder="<%=address %>" value="<%=address %>">
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="submit" type="submit" value="Change" class="btn btn-primary">
          </div>
        </div>
      </form>
      </section>

    </div>
    
</div>

</div>

</body>
</html>