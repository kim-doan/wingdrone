<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">







    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Login Form Template</title>

    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/css/form-elements.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resource/assets/css/style.css">
    <link href="${pageContext.request.contextPath}/resource/css/one-page-wonder.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resource/assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="${pageContext.request.contextPath}/resource/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="${pageContext.request.contextPath}/resource/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="${pageContext.request.contextPath}/resource/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath}/resource/assets/ico/apple-touch-icon-57-precomposed.png">

    <script>
        function getRegister() {
            location.href="/members/register.do"
        }

        <%--$(document).ready(function(){--%>
            <%--$("#btnLogin").click(function(){--%>
                <%--// ��ũ.val() : �±׿� �Էµ� ��--%>
                <%--// ��ũ.val("��") : �±��� ���� ����--%>
                <%--var userId = $("#form-username").val();--%>
                <%--var userPw = $("#form-password").val();--%>
                <%--if(userId == ""){--%>
                    <%--alert("���̵� �Է��ϼ���.");--%>
                    <%--$("#form-username").focus(); // �Է���Ŀ�� �̵�--%>
                    <%--return; // �Լ� ����--%>
                <%--}--%>
                <%--if(userPw == ""){--%>
                    <%--alert("��й�ȣ�� �Է��ϼ���.");--%>
                    <%--$("#form-password").focus();--%>
                    <%--return;--%>
                <%--}--%>
                <%--// �� ������ �����͸� ������ �ּ�--%>
                <%--document.form1.action="${path}/member/loginCheck.do"--%>
                <%--// ����--%>
                <%--document.form1.submit();--%>
            <%--});--%>
        <%--});--%>
    </script>
</head>

<body>
<!-- Top content -->
<header class="masthead text-white" style="padding:120px">


    <div class="masthead-content">
<div class="top-content">

    <div class="inner-bg">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-sm-offset-3 form-box">
                    <div class="form-top">
                        <div class="form-top-left">
                            <h3>FIT-COACH</h3>
                            <p>���̵�� ��й�ȣ�� �Է����ּ���.</p>
                        </div>
                        <div class="form-top-right">
                            <i class="fa fa-lock"></i>
                        </div>
                    </div>
                    <div class="form-bottom">
                        <form role="form" action="/members/loginProcess.do" method="post" class="login-form">
                            <div class="form-group">
                                <label class="sr-only" for="form-username">���̵�</label>
                                <input type="text" name="id" placeholder="���̵�" class="form-username form-control" id="form-username">
                            </div>
                            <div class="form-group">
                                <label class="sr-only" for="form-password">��й�ȣ</label>
                                <input type="password" name="password" placeholder="��й�ȣ" class="form-password form-control" id="form-password">
                            </div>
                            <div style="padding-bottom: 15px;">
                            <button type="submit" id = "btnLogin" class="btn">�α���</button>
                            </div>
                            <div>
                            <button type="button" class="btn" onclick="getRegister()">ȸ������</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <%--<div class="row">--%>
                <%--<div class="col-sm-6 col-sm-offset-3 social-login">--%>
                    <%--<h3>...or login with:</h3>--%>
                    <%--<div class="social-login-buttons">--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-facebook"></i> Facebook--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-twitter"></i> Twitter--%>
                        <%--</a>--%>
                        <%--<a class="btn btn-link-2" href="#">--%>
                            <%--<i class="fa fa-google-plus"></i> Google Plus--%>
                        <%--</a>--%>
                    <%--</div>--%>
                <%--</div>--%>
            <%--</div>--%>
        </div>
    </div>

</div>
    </div>
</header>

<!-- Javascript -->
<script src="${pageContext.request.contextPath}/resource/assets/js/jquery-1.11.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/js/jquery.backstretch.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/assets/js/scripts.js"></script>

<!--[if lt IE 10]>
<script src="${pageContext.request.contextPath}/resource/assets/js/placeholder.js"></script>
<![endif]-->

</body>

</html>