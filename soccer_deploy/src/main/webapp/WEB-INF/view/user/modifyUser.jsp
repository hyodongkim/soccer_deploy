<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html lang="utf-8">

<head>
  <title>Soccer &mdash; Website by Colorlib</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&display=swap" rel="stylesheet">

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
            width: 1500px;
            height: 100%;
            padding: 4%;
            padding-left: 16%;
            padding-top : 8%;
        }
         
        #deploy {
            position: relative;
            display: flex;
            width: 100%;
            height: 100%;
        }
        
        #deploy_one {
            width: 10%;
            height: 100%;
            margin: 2%;
            padding: 1%;
        }
        
        #deploy_two {
            width: 100%;
            height: 100%;
            border-radius: 30px;
            border-style: solid;
            border-color: rgb(224, 224, 224);
            padding-left: 5%;
        }
        
        #deploy_three {
            width: 10%;
            height: 100%;
            margin: 2%;
            padding: 1%;
        }
        
        #image1 {
            width: 300px;
            height: 400px;
        }
        
        #deploy_two_In {
            positon: relative;
            display: flex;
            flex-directory: column;
            width: 100%;
            height: 100%;
        }
        
        #deploy_two_In_one {
            width: 50%;
            height: 100%;
        }
        
        #deploy_two_In_two {
            width: 40%;
            height: 100%;
            padding-left: 5%;
            padding-bottom: 5%;
        }
        
        #to_center_footer {
            text-align: center;
        }
        .field-error {
          color: #ff0000;
        }
        .thead{
            text-align: center;
        }
        .th{
            display: table-cell;
            font-weight: bold;
            text-align: left;
        }
        #modUser{
            width: 150px;
            height: 30px;
        }
        #modUser2{
            width: 200px;
            height: 30px;
        }eight: 30px;
        }
        </style>
        
        <body>
        
        <jsp:include page="/WEB-INF/view/include/header.jsp"></jsp:include>
        
            <!-- ??????????????? ????????????.  -->
            <!-- ???????????? ????????? ????????? ????????? ??????. -->
        
            <div id="zero">
                <div id="deploy">
                    <div id="deploy_two">
                        <div class="site-section">
                            <div class="container">
                            <form action="/user/${loginUser.id}/modify" method="post">
                                <div id="deploy_two_In">
                                    <div id="deploy_two_In_one">
                                        <h3 class="mb-3">?????? ?????? ??????</h3>
                                        
                                        <input type="hidden" name="_method" value="put">
                                        <table class="table table-sm">
                                        <thead class="thead-dark">
                                        	
                                                <tr>
                                                    <th scope="col" colspan="2" >
                                                        ?????? ??????
                                                    </th>
                                                </tr>
                                        </thead>
                                        
                                            <tbody>
                                                
                                                <tr class="text-white">
                                                    <th scope="row">?????????</th>
                                                    <td>${user.email}</td>
                                                </tr>
        							
                                                <tr class="text-white">
                                                    <th scope="row">??????</th>
                                                    <td>${user.age}</td>
                                                </tr>
                                                
                                                <tr class="text-white">
                                                    <th scope="row">??????</th>
                                                    <td>${user.name}</td>
                                                </tr>
                                                
                                                <tr class="text-white">
                                                    <th scope="row">?????????</th>
                                                    <td><input id="modUser" type="text" value="${user.backNum}" name="backNum"></td>
                                                </tr>
                                                
                                                <tr class="text-white">
                                                    <th scope="row">?????????</th>
                                                    <td>
                                                        <select id="modUser" name="position">
                                                            <option>FW</option>
							                                <option>MF</option>
							                                <option>DF</option>
							                                <option>GK</option>
                                                        </select>
                                                    </td>
                                                </tr>
                                                
                                                <tr class="text-white">
                                                    <th scope="row">??????</th> 
                                                    <td><input id="modUser2" name="add1" type="text" value="${user.address}">
                                                        <input type="button" id="sample6_button" onclick="sample6_execDaumPostcode()" value="??????"><br>
                                                        <input type="hidden" name="add2" style="width: 300px;"  name="add3" id="sample6_detailAddress" placeholder="????????????"> 
                                                        <input type="text" class="form-control" style="display: none;" id="sample6_extraAddress" placeholder="????????????">
                                                    </td>
                                                </tr>
                                                
                                            </tbody>
                                        </table>
                                        <div class="logButton" style="display: inline;">
                                            <button class="btn btn-primary lg" type="submit">??????</button>
                                            <a href="/user/${loginUser.id}" class="btn btn-primary" style="margin-left: 10px;">??????</a>
                                        </div>
                              	 	</div>
                              	  </div>
                              	 </form>
                              	<form action="/user/${loginUser.id}/modify/updateProfile" method="post" enctype="multipart/form-data">
                               		<div id="deploy_two_In_two">
                                   			<img src="/images/profile/${user.imgFileName}" id="image1" name="imgFileName">
                              		</div>
                              		<div class="profileButton">
										<input type="file" class="form-control" name="updateProfile" required>                              	
                              			<button class="btn btn-primary lg" type="submit">??????</button>
                              		</div>
                              	</form>
                            </div>
                            
                        </div>
                    </div>
                    	<div id="deploy_three"></div>
                </div>
            </div>
       
      <script>
        
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
                            document.getElementById("modUser2").value = data.zonecode + ' ' + addr;
                            
                            // ????????? ???????????? ????????? ????????????.
                            var a = document.getElementById("sample6_detailAddress");
                            a.type = "text";
                            document.getElementById("sample6_detailAddress").focus();
                        }
                    }).open();
                }

    </script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>



    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
    <script src="js/jquery.mb.YTPlayer.min.js"></script>


    <script src="js/main.js"></script>


</body>


</html>