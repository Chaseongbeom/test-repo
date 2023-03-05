<html >
<head>
	<title>Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<style>
    body {font-family: "Lato", sans-serif;}
.main-head{height: 150px;background: #FFF;}
.sidenav {height: 100%;background-color: #77B9F2;overflow-x: hidden;padding-top: 20px;}
.main {padding: 0px 10px;}
@media screen and (max-height: 450px) {.sidenav {padding-top: 15px;}}
@media screen and (max-width: 450px) {
	.login-form{margin-top: 10%;}
	.register-form{margin-top: 10%;}
}
@media screen and (min-width: 768px){
    .main{margin-left: 40%;}
	.sidenav{width: 40%;position: fixed;z-index: 1;top: 0;left: 0;}
    .login-form{margin-top: 80%;}
    .register-form{margin-top: 20%;}
}
.login-main-text{margin-top: 20%;padding: 60px;color: #fff;}
.login-main-text h2{font-weight: 300;}
.btn-black{background-color: #2793F2 !important;color: #fff;}
</style>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 
</head>
<a href="/board/list">게시판</a><br />
<script type="text/javascript">
	$(document).ready(function(){
		$("#logoutBtn").on("click", function(){
			location.href="member/logout";
		})
		
	})
</script>
<body>
    <div class="sidenav">
        <div class="login-main-text">
           <H1>HANUNE</H1>
           <p>보다 쉽고 <br>
            빠르게<br>
         대출상품을<br>
        한눈에</p>
        </div>
     </div>
     <div class="main">
        <div class="col-md-6 col-sm-12">
           <div class="login-form">
	<form name='homeForm' method="post" action="/member/login">
		<c:if test="${member == null}">
			<div>
				<label for="userId">ID</label>
				<input type="text" id="userId" name="userId" class="form-control" placeholder="User ID">
			</div>
			<div>
                <div class="form-group">
				<label for="userPass">PW</label>
				<input type="password" id="userPass" name="userPass" class="form-control" placeholder="Password">
			</div>
			<div>
				<button type="submit" class="btn text-white" style="background-color: #77B9F2;">로그인</button>
				<button type="button" class="btn text-white" style="background-color: #c5c5c5;">회원가입</button>
			</div>
		</c:if>
		<c:if test="${member != null }">
            
			<div>
				<p>${member.userId}님 환영 합니다.</p>
				<button id="logoutBtn" type="button" class="btn text-white" style="background-color: #c5c5c5;">로그아웃</button>
			</div>
		</c:if>
		<c:if test="${msg == false}">
			<p style="color: red;">로그인 실패! 아이디와 비밀번호 확인해주세요.</p>
		</c:if>
	</form>
</body>
</html>