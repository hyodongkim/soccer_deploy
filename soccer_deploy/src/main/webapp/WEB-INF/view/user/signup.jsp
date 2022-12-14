<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insertere</title>

<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/fonts/icomoon/style.css">
<link rel="stylesheet" href="/css/bootstrap/bootstrap.css">
<link rel="stylesheet" href="/css/jquery-ui.css">
<link rel="stylesheet" href="/css/owl.carousel.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">
<link rel="stylesheet" href="/css/owl.theme.default.min.css">

<link rel="stylesheet" href="/css/jquery.fancybox.min.css">

<link rel="stylesheet" href="/css/bootstrap-datepicker.css">

<link rel="stylesheet" href="/fonts/flaticon/font/flaticon.css">

<link rel="stylesheet" href="/css/aos.css">

<link rel="stylesheet" href="/css/style.css">

</head>
<style>
        #zero {
            position: relative;
            width: 100%;
            height: 100%;
            padding: 10%;
            padding-left: 10%;
            padding-right: 10%;
            padding-bottom: 10%;
        }
        
        #deploy {
            position: relative;
            display: flex;
            width: 100%;
            height: 100%;
        }
        
        #deploy_two {
            width: 100%;
            height: 100%;
            border-radius: 30px;
            border-style: solid;
            border-color: rgb(224, 224, 224);
            padding-left: 5%;
            padding-right: 5%;
            padding-bottom: 5%;
            margin-bottom: 10%;
        }
        
        #to_center_footer {
            text-align: center;
        }
        
        .container.py-4 {
            margin: 0 auto;
            width: 503px;
        }
        
        .d-grid.gap-2 {
            padding-top: 30px;
        }
        
        .bg {
            padding-top: 10%;
        }
        
        .flex-fill.mx-xl-5.mb-2 {
            margin: 0 auto;
            width: 700px;
            padding-right: 7rem;
            padding-left: 7rem;
        }
        
        .container.py-4 {
            margin: 0 auto;
            width: 503px;
        }
        
        .d-grid.gap-2 {
            padding-top: 30px;
        }
        
        .age, .backnum, .position {
            width: 130px;
            display: table-cell;
        }
        .backnum+.position, .age+.backnum {
            padding-left: 10px;
        }
        
        .errMsg{
            color: red;
        }
        
        .addressForm{ display: flex;  margin-bottom: 7px; }  
        .addressForm #sample6_button{ margin-left: 7px;}
        .addressForm #sample6_postcode{ width: 120px; }
        #sample6_detailAddress{margin-top: 7px;}
        label{color: white;}
        
#sample6_postcode{
	background-color: #222831;
}
#sample6_address{
	background-color: #222831;
}
#a{
	background-color: #222831;
}
        </style>
<body>

	<jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>

	<section class="bg">
                <div class="container py-4">
                    <div id="deploy_two">
                    <!-- registForm Start -->
                        <form:form modelAttribute="user" action="/user/regist" method="post" enctype="multipart/form-data">
                        <fieldset>
                            <div>
                                <label for="exampleInputEmail1" class="form-label mt-4">?????????</label>
                                <form:input type="text" class="form-control" value="${user.email}" 
                                    aria-describedby="emailHelp" path="email" placeholder="???????????? ???????????????????????????."/>
                            </div>
                            <spring:hasBindErrors name="user">
                            <div class="col-lg-11 field-error">
                                <p class="errMsg">
                                    <form:errors path="email"></form:errors>
                                </p>
                            </div>
                            </spring:hasBindErrors>
                            
                            <div>
                                <label class="form-label mt-4" for="inputValid">????????????</label> 
                                <form:input	type="password" class="form-control" id="inputValid" placeholder="????????? ????????? ????????? 6~12???" path="passwd"/>
                                <div class="valid-feedback"></div>
                            </div>
                            <spring:hasBindErrors name="user">
                            <div class="col-lg-11 field-error">
                                <p class="errMsg">
                                    <form:errors path="passwd"></form:errors>
                                </p>
                            </div>
                            </spring:hasBindErrors>	
                                
                            <div>
                                <label class="form-label mt-4" for="inputInvalid">???????????? ?????????</label>
                                <input type="password" class="form-control"	id="inputInvalid" placeholder="?????? ?????? ?????? ??????????????? ??????????????????."/>
                            </div>
        
                            <div>
                                <label for="exampleInputEmail1" class="form-label mt-4">??????</label>
                                <form:input type="text" value="${user.name}" class="form-control" placeholder="????????? ???????????????????????????." path="name" />
                            </div>
                            <spring:hasBindErrors name="user">
                            <div class="col-lg-11 field-error">
                                <p class="errMsg">
                                    <form:errors path="name"></form:errors>
                                </p>
                            </div>
                            </spring:hasBindErrors>

                        <label class="form-label mt-4">??????</label>
                        <div class="address">
                            <div class="addressForm">
                                <input type="text" name="add1" class="form-control" id="sample6_postcode" placeholder="????????????" readonly="readonly">
                                <input type="button" id="sample6_button" onclick="sample6_execDaumPostcode()" value="???????????? ??????">
                            </div>

                            <input type="text" name="add2" class="form-control" id="sample6_address" placeholder="??????" readonly="readonly">
                            <input type="text" name="add3" class="form-control" id="sample6_detailAddress" placeholder="????????????" readonly> 
                            <input type="text" class="form-control" style="display: none;" id="sample6_extraAddress" placeholder="????????????">

                        </div>

                            <div class="form">
                                <div class="age">
                                    <label class="form-label mt-4">??????</label>
                                    <form:input type="text" class="form-control" placeholder="??????" maxlength="3" path="age"/>
                                </div>
                                
                                <div class="backnum">
                                    <label class="form-label mt-4">??? ??????</label>
                                    <form:input type="text" class="form-control" placeholder="?????? 3??????" maxlength="3" path="backNum"/>
                                </div>
                                
                                
                                <div class="position">
                                    <label class="form-label mt-4">?????????</label>
                                    <form:select class="form-control" path="position">
                                    <option id="a">FW</option>
                                    <option id="a">MF</option>
                                    <option id="a">DF</option>
                                    <option id="a">GK</option>
                                    </form:select>
                                </div>
                            </div>
                        
                       	    <div class="form">
                        		<label class="form-label mt-4">????????? ??????</label><br>
                        		<div style="display: flex;">
                        			<input type="file" class="form-control" name="imageFile" required>
                        			<button class="btn btn-primary" type="submit">??????</button>
                        		</div>
        					</div>
        			
                            <div>
                                <button class="btn btn-primary btn-lg" type="submit" onclick="add()" style="margin-top: 10px;">????????????</button>
                            </div>
                        </fieldset>
                        </form:form>
                        <!-- registForm End -->
        
                    </div>
                </div>
            </section>







	<footer class="footer-section">
		<div class="container">
			<div id="to_center_footer">
				<div class="row">
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>News</h3>
							<ul class="list-unstyled links">
								<li><a href="#">All</a></li>
								<li><a href="#">Club News</a></li>
								<li><a href="#">Media Center</a></li>
								<li><a href="#">Video</a></li>
								<li><a href="#">RSS</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Tickets</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Online Ticket</a></li>
								<li><a href="#">Payment and Prices</a></li>
								<li><a href="#">Contact &amp; Booking</a></li>
								<li><a href="#">Tickets</a></li>
								<li><a href="#">Coupon</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Matches</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Standings</a></li>
								<li><a href="#">World Cup</a></li>
								<li><a href="#">La Lega</a></li>
								<li><a href="#">Hyper Cup</a></li>
								<li><a href="#">World League</a></li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3">
						<div class="widget mb-3">
							<h3>Social</h3>
							<ul class="list-unstyled links">
								<li><a href="#">Twitter</a></li>
								<li><a href="#">Facebook</a></li>
								<li><a href="#">Instagram</a></li>
								<li><a href="#">Youtube</a></li>
							</ul>
						</div>
					</div>

				</div>

				<div class="row text-center">
					<div class="col-md-12">
						<div class=" pt-5">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="icon-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
					</div>

				</div>
			</div>
		</div>
	</footer>

	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
            <script>
                //???????????? ??????????????? ??????????????? ??????????????? ??????
                var passwd = document.getElementById("inputValid"),
                    confirm_passwd = document.getElementById("inputInvalid");
        
                function validatePasswd(){
                    if(passwd.value != confirm_passwd.value){
                    confirm_passwd.setCustomValidity("??????????????? ???????????? ????????????.");
                    } else {
                    confirm_passwd.setCustomValidity('');
                    }
                }
        
                passwd.onchange = validatePasswd;
                confirm_passwd.onchange = validatePasswd;

                //????????? ??????API??? ???????????? ??????
                function sample6_execDaumPostcode() {
                    new daum.Postcode({
                        oncomplete: function(data) {
                            // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.
            
                            // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                            // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                            var addr = ''; // ?????? ??????
                            var extraAddr = ''; // ???????????? ??????
            
                            //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                            if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                                addr = data.roadAddress;
                            } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                                addr = data.jibunAddress;
                            }
            
                            // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                            if(data.userSelectedType === 'R'){
                                // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                                // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                                if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                                    extraAddr += data.bname;
                                }
                                // ???????????? ??????, ??????????????? ?????? ????????????.
                                if(data.buildingName !== '' && data.apartment === 'Y'){
                                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                }
                                // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                                if(extraAddr !== ''){
                                    extraAddr = ' (' + extraAddr + ')';
                                }
                                // ????????? ??????????????? ?????? ????????? ?????????.
                                document.getElementById("sample6_extraAddress").value = extraAddr;
                            
                            } else {
                                document.getElementById("sample6_extraAddress").value = '';
                            }
                            // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                            document.getElementById('sample6_postcode').value = data.zonecode;
                            document.getElementById("sample6_address").value = addr;
                            
                            // ????????? ???????????? ????????? ????????????.
                            document.getElementById("sample6_detailAddress").removeAttribute("readonly")
                            document.getElementById("sample6_detailAddress").focus();
                        }
                    }).open();
                }

            </script>


	<script src="/js/jquery-3.3.1.min.js"></script>
	<script src="/js/jquery-migrate-3.0.1.min.js"></script>
	<script src="/js/jquery-ui.js"></script>
	<script src="/js/popper.min.js"></script>
	<script src="/js/bootstrap.min.js"></script>
	<script src="/js/owl.carousel.min.js"></script>
	<script src="/js/jquery.stellar.min.js"></script>
	<script src="/js/jquery.countdown.min.js"></script>
	<script src="/js/bootstrap-datepicker.min.js"></script>
	<script src="/js/jquery.easing.1.3.js"></script>
	<script src="/js/aos.js"></script>
	<script src="/js/jquery.fancybox.min.js"></script>
	<script src="/js/jquery.sticky.js"></script>
	<script src="/js/jquery.mb.YTPlayer.min.js"></script>
	<script src="/js/main.js"></script>

	

</body>
</html>