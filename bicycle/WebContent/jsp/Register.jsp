<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="./main.a3f694c0.css"/>
<link href="/bicycle/jsp/main.a3f694c0.css" rel="stylesheet">
<script src = "/bicycle/jquery-3.2.1.min.js"></script>

<style>


body {
    background: #fff;
	color:#333;
	line-height: 22px;	
}
h1, h2, h3, h4, h5, h6 {
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
background-image: url('../assets/images/register_fix.jpg');
padding-left : 15px;
padding-right: 15px;	
margin-left: : 15px;	
}
#alert-success {
background-color: None;
}
</style>
<script src = "../jquery-3.2.1.min.js"></script>

<script type="text/javascript">
<% 
String error =request.getParameter("error"); 
if(error != null){
	if(error.equals("1")) 
		out.println("alert('Enter Email')");
	else if(error.equals("2")) 
		out.println("alert('Enter password!')");
	else if(error.equals("3"))
		out.println("alert('Enter name!')");
	else if(error.equals("4"))
		out.println("alert('Enter birthday year!')");
	else if(error.equals("5"))
		out.println("alert('Enter birthday month!')");
	else if(error.equals("6"))
		out.println("alert('Enter birthday day!')");
	else if(error.equals("7"))
		out.println("alert('Enter gender!')");
	else if(error.equals("8"))
		out.println("alert('Enter contact number!')");
	else if(error.equals("9"))
		out.println("alert('Enter adress!')");
	else if(error.equals("10"))
		out.println("alert('Id already Exit!')");
}
%>

$(function(){
    $("#alert-success").hide();
    $("#alert-danger").hide();
    $("input").keyup(function(){
        var pwd1=$("#password").val();
        var pwd2=$("#cpassword").val();
        if(pwd1 != "" || pwd2 != ""){
            if(pwd1 == pwd2){
                $("#alert-success").show();
                $("#alert-danger").hide();
                $("#submit").removeAttr("disabled");
            }else{
                $("#alert-success").hide();
                $("#alert-danger").show();
                $("#submit").attr("disabled", "disabled");
            }    
        }
    });
});

</script>
</head>
<body>
<%-- 
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
          <li><a href="/bicycle/jsp/Index.jsp" title="" class="active">Home</a></li>
          <li><a href="/bicycle/jsp/About.jsp" title=""> About</a></li>
          <li><a href="/bicycle/Leaflet" title=""> Analysis </a></li>
          <li><a href="/bicycle/Predict" title="">Predict</a></li>
          <li><a href="/bicycle/jsp/Board.jsp" title="">Board</a></li>
          <li><a href ="/bicycle/Myinfo"> <%=session.getAttribute("sessionname") %> </a></li>
        </ul>
      </div> 

    </div>
  </nav>
</header>
 --%>

<div class="white-text-container background-image-container" >
    <div class="opacity"></div>
    <div class="container">
        <div class="row">
           
            <div class="col-md-6">
             	<p>-------------</p>
                <h1>Sign up</h1>
            </div>

        </div>
    </div>
</div>

		
        
<div class="container">
	<div class="row">
    <div class="col-md-8">
      <section>      

        <hr>
          <form action ="../register" class="form-horizontal" method="post" name="signup" id="signup">        
        <div class="form-group">
          <label class="control-label col-sm-3">Email ID <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" class="form-control" name="emailid" id="emailid" placeholder="Enter your Email ID" value="" >
            </div>
            <small> Your Email Id is being used for ensuring the security of your account, authorization and access recovery. </small> </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Set Password <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="password" id="password" placeholder="Choose password (5-15 chars)" value="">
           </div>   
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Confirm Password <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
            <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              <input type="password" class="form-control" name="cpassword" id="cpassword" placeholder="Confirm your password" value="">
            </div>  
          </div>
        </div>
        <div class = "form-group">
        <!-- //alert alert-success  alert alert-danger --> 
        <div class="form-control" id="alert-success" style="text-align: center; color : green;" >비밀번호가 일치합니다.</div>
		<div class="form-control" id="alert-danger" style="text-align: center;  color : red;" >비밀번호가 일치하지 않습니다.</div>

		</div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Full Name <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <input type="text" class="form-control" name="mem_name" id="mem_name" placeholder="Enter your Name here" value="">
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">Date of Birth <span class="text-danger">*</span></label>
          <div class="col-xs-8">
            <div class="form-inline">
              <div class="form-group" >
                <select id = "year" name="yyyy" class="form-control">
                  <option value="0">Year</option>
                  <option value="1955" >1955 </option><option value="1956" >1956 </option><option value="1957" >1957 </option><option value="1958" >1958 </option><option value="1959" >1959 </option><option value="1960" >1960 </option><option value="1961" >1961 </option><option value="1962" >1962 </option><option value="1963" >1963 </option><option value="1964" >1964 </option><option value="1965" >1965 </option><option value="1966" >1966 </option><option value="1967" >1967 </option><option value="1968" >1968 </option><option value="1969" >1969 </option><option value="1970" >1970 </option><option value="1971" >1971 </option><option value="1972" >1972 </option><option value="1973" >1973 </option><option value="1974" >1974 </option><option value="1975" >1975 </option><option value="1976" >1976 </option><option value="1977" >1977 </option><option value="1978" >1978 </option><option value="1979" >1979 </option><option value="1980" >1980 </option><option value="1981" >1981 </option><option value="1982" >1982 </option><option value="1983" >1983 </option><option value="1984" >1984 </option><option value="1985" >1985 </option><option value="1986" >1986 </option><option value="1987" >1987 </option><option value="1988" >1988 </option><option value="1989" >1989 </option><option value="1990" >1990 </option><option value="1991" >1991 </option><option value="1992" >1992 </option><option value="1993" >1993 </option><option value="1994" >1994 </option><option value="1995" >1995 </option><option value="1996" >1996 </option><option value="1997" >1997 </option><option value="1998" >1998 </option><option value="1999" >1999 </option><option value="2000" >2000 </option><option value="2001" >2001 </option><option value="2002" >2002 </option><option value="2003" >2003 </option><option value="2004" >2004 </option><option value="2005" >2005 </option><option value="2006" >2006 </option><option value="2007" >2007 </option><option value="2008" >2008 </option><option value="2009" >2009 </option><option value="2010" >2010 </option><option value="2011" >2011 </option><option value="2012" >2012 </option><option value="2013" >2013</option><option value="2014" >2014 </option><option value="2015" >2015 </option><option value="2016" >2016 </option><option value="2017" >2017 </option><option value="2018" >2018 </option>                            </select>
              </div>
           
               <div class="form-group">
                <select id = "month"  name="mm" class="form-control">
                  <option value="">Month</option>
                  <option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option>                </select>
              </div>
              
              <div class="form-group">
                <select id = "date"  name="dd" class="form-control">
                  <option value="">Date</option>
                  <option value="1" >1 </option><option value="2" >2 </option><option value="3" >3 </option><option value="4" >4 </option><option value="5" >5 </option><option value="6" >6 </option><option value="7" >7 </option><option value="8" >8 </option><option value="9" >9 </option><option value="10" >10 </option><option value="11" >11 </option><option value="12" >12 </option><option value="13" >13 </option><option value="14" >14 </option><option value="15" >15 </option><option value="16" >16 </option><option value="17" >17 </option><option value="18" >18 </option><option value="19" >19 </option><option value="20" >20 </option><option value="21" >21 </option><option value="22" >22 </option><option value="23" >23 </option><option value="24" >24 </option><option value="25" >25 </option><option value="26" >26 </option><option value="27" >27 </option><option value="28" >28 </option><option value="29" >29 </option><option value="30" >30 </option><option value="31" >31 </option>                </select>
              </div>
            </div>
          </div>
        </div>
        
        <div class="form-group">
          <label class="control-label col-sm-3">Gender <span class="text-danger">*</span></label>
          <div class="col-md-8 col-sm-9">
            <label>
            <input name="gender" type="radio" value="Male" checked>
            Male </label>
               
            <label>
            <input name="gender" type="radio" value="Female" >
            Female </label>
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">Contact No. <span class="text-danger">*</span></label>
          <div class="col-md-5 col-sm-8">
          	<div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
            <input type="text" class="form-control" name="contactnum" id="contactnum" placeholder="Enter your Primary contact no." value="">
            </div>
          </div>
        </div>
        
        
        <div class="form-group">
          <label class="control-label col-sm-3">Address No. <br>
          <small>(if any)</small></label>
          <div class="col-md-5 col-sm-8">
            <input type="text" class="form-control" name="address" id="address" placeholder="Any other or Landline no (if any)" value="">
          </div>
        </div>
        
        <div class="form-group">
          <div class="col-xs-offset-3 col-xs-10">
            <input name="Submit" type="submit" value="Sign Up" class="btn btn-primary">
          </div>
        </div>
      </form>
      </section>

    </div>
    
</div>

</div>

	

</body>
</html>