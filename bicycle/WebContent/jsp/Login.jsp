<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!--author:leamug-->
<!--reference site : leamug.com-->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="unique login form,leamug login form,boostrap login form,responsive login form,free css html login form,download login form">
<meta name="author" content="leamug">
<title>Te-amo | for our better life!</title>
<!-- <link href="../css/style.css" rel="stylesheet" id="style"> -->
<!-- Bootstrap core Library -->
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Dancing+Script"
	rel="stylesheet">
<!-- Font Awesome-->
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">

<script>
<%
String register = request.getParameter("register");
if(register != null )
	out.println("alert('Register Success')");
%>
	$(document).ready(function() {
		$("#button").on('click', function() {
			requestAjax();
			return false;
		}); //button on end
		
	}); // ready end

	function requestAjax() {
		$.ajax({ //ajax방식으로 요청할게
			url : 'loginsession.jsp', //jsp 파일 이름
			type : 'POST', //보내는 방식 'POST' | 'GET'
			data : {
				'id' : $("#id").val(),
				'pw' : $("#pw").val()
			}, //post 방식이라 data에 쿼리 스트링을 넣어줌 형식  data : {'name1' : 'value1', 'name2' : 'value2'},  
			success : function(server_output) { //서버에서 동작의 결과를 받아오는 함수 success를 오버라이딩을 사용함. 
				var jsonobj = JSON.parse(server_output);
				if (jsonobj.auth) {
					location.href = "Index.jsp";
				} else {
					if (jsonobj.id)
						$("#here").html("Check login info");
					else
						$("#here").html("Not our member");
				}
			},
			error : function() {
				alert("error");
			},
			complete : function() {
			}

		})
	}

</script>

<style>
/*author:leamug*/
/*reference site : leamug.com*/
body {
		background-image: url('../assets/images/LoginBackgroundImage.jpg');
	background-position: center;
	width:100%; 
    height: 0%;
    background-size: cover;
	-webkit-font-smoothing: antialiased;
	font: normal 14px Roboto, arial, sans-serif;
	font-family: 'Dancing Script', cursive !important;
}
.background{

    
	
}
.container {
	padding: 110px;
}

::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */
	color: #ffffff !important;
	opacity: 1; /* Firefox */
	font-size: 18px !important;
}

.form-login {
	background-color: rgba(0, 0, 0, 0.55);
	padding-top: 10px;
	padding-bottom: 20px;
	padding-left: 20px;
	padding-right: 20px;
	border-radius: 15px;
	border-color: #d2d2d2;
	border-width: 5px;
	color: white;
	box-shadow: 0 1px 0 #cfcfcf;
}

.form-control {
	background: transparent !important;
	color: white !important;
	font-size: 18px !important;
}

h1 {
	color: white !important;
}

h4 {
	border: 0 solid #fff;
	border-bottom-width: 1px;
	padding-bottom: 10px;
	text-align: center;
}

.form-control {
	border-radius: 10px;
}

.text-white {
	color: white !important;
}

.wrapper {
	text-align: center;
}

.footer p {
	font-size: 18px;
}
.status{
color:red;
}
</style>

</head>
<body>
	<div class= background> 
	<!-- Page Content -->
	<div class="container">
		<div class="row">
			<div class="col-md-offset-5 col-md-4 text-center">
				<h1 class='text-white'>Unique Login Form</h1>

				<div class="form-login">
					</br>
					<form action="loginsession.jsp" method ="post">
						<h4>Secure Login</h4>
						</br> <input type="text" name="id" id="id" class="form-control input-sm chat-input" placeholder="username" />
						</br>
						</br> <input type="password" name="pw" id="pw" class="form-control input-sm chat-input" placeholder="password" />
						</br>
						</br> <button id="button" class="btn btn-primary btn-md" >login <i class="fa fa-sign-in"> </i> </button>
						<a href ="Register.jsp" id="button" class="btn btn-md"  ><h3>Register</h3> </button>
					</form>                    
					<p id="here" > </p>
				</div>

			</div>
		</div>
		</br>
		</br>
		</br>
		<!--footer-->
		<div class="footer text-white text-center"></div>
		<!--//footer-->
	</div>
	</div>
</body>
</html>
x
