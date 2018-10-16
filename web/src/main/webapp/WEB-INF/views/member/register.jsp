<%@ page language="java" contentType="text/html; charset=EUC-KR"
         pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>One Page Wonder - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/resource/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resource/css/one-page-wonder.min.css" rel="stylesheet">

    <script type="text/javascript">
        //<![CDATA[
        function check() {
            var form = document.getElementById("inputForm");
            //TODO ��ȿ�� �˻�
            return true;
        }

        function checkValue() {
            var form = document.userInfo;

            if (!form.id.value) {
                alert("���̵� �Է��ϼ���");
                return false;
            }
            if (!form.password.value) {
                alert("�н����带 �Է��ϼ���.");
                return false;
            }

            if (!form.confirm.value) {
                alert("�н����� Ȯ���� �Է��ϼ���.");
                return false;
            }

            if (!form.name.value) {
                alert("�̸��� �Է��ϼ���.");
                return false;
            }

            if (!form.phone.value) {
                alert("�޴��� ��ȣ�� �Է��ϼ���.");
                return false;
            }
        }

        //��� ��ư Ŭ���� ó��ȭ������ ��ǲ�ڽ� Ŭ����
        function goFirstForm() {
            $("#id").val(null);
            $("#password").val('');
            $(".signupbtn").prop("disabled", true);
            $(".signupbtn").css("background-color", "#aaaaaa");
            location.href = "/view/index.do";
        }

        function checkPwd() {
            var inputed = $('#password').val();
            var reinputed = $('#confirm').val();
            if (reinputed == "" && (inputed != reinputed || inputed == reinputed)) {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#confirm").css("background-color", "#FFCECE");
            }
            else if (inputed == reinputed) {
                $("#confirm").css("background-color", "#B0F6AC");
                pwdCheck = 1;
                if (idCheck == 1 && pwdCheck == 1) {
                    $(".signupbtn").prop("disabled", false);
                    $(".signupbtn").css("background-color", "#4CAF50");
                    signupCheck();
                }
            } else if (inputed != reinputed) {
                pwdCheck = 0;
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
                $("#confirm").css("background-color", "#FFCECE");

            }
        }

        //�г��Ӱ� �̸��� �Է����� �ʾ��� ��� ���Թ�ư ��Ȱ��ȭ
        function signupCheck() {
            var nickname = $("#nickname").val();
            var email = $("#email").val();
            if (nickname == "" || email == "") {
                $(".signupbtn").prop("disabled", true);
                $(".signupbtn").css("background-color", "#aaaaaa");
            } else {
            }
        }

        var idCheck = 0;
        var pwdCheck = 0;

        function checkId() {
            alert("����");
            var inputed = $('#id').val();
            $.ajax({
                data: {
                    id: inputed
                },
                url: "checkId.do",
                success: function (data) {
                    alert(data);
                    if (inputed == "" && data == '0') {
                        $(".signupbtn").prop("disabled", true);
                        $(".signupbtn").css("background-color", "#aaaaaa");
                        $("#id").css("background-color", "#FFCECE");
                        idCheck = 0;
                    } else if (data == '0') {
                        $("#id").css("background-color", "#B0F6AC");
                        idCheck = 1;
                        if (idCheck = 1 && pwdCheck == 1) {
                            $(".signupbtn").prop("disabled", false);
                            $(".signupbtn").css("background-color", "#4CAF50");
                            signupCheck();
                        }
                    } else if (data > 0) {
                        $(".signupbtn").prop("disabled", true);
                        $(".signupbtn").css("background-color", "#aaaaaa");
                        $("#id").css("background-color", "#FFCECE");
                        idCheck = 0;
                    }
                }
            })
        }
    </script>
</head>

<body>

<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
    <div class="container">
        <a class="navbar-brand" href="#">Fit-Coach</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
                aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" href="#">ȸ������</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">�α���</a>
                </li>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead text-white" style="padding:150px">
    <div class="masthead-content">
        <div class="container">
            <%--<h1 class="masthead-heading mb-0">�ȳ��ϼ���</h1>--%>
            <%--<h2 class="masthead-subheading mb-0">Hello</h2>--%>
            <article class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 col-md-offset-3">
                    <form id="inputForm" name="userInfo" action="/register" method="post"
                          onsubmit="return checkValue()" role="form">
                        <div class="form-group">
                            <label for="id">���̵�</label>
                            <%--<input type="text" class="form-control" name="id" id="id" onkeydown="checkId()" placeholder="���̵�">--%>
                            <input type="text" class="form-control" name="id" id="id" placeholder="���̵�">
                        </div>
                        <div class="form-group">
                            <label for="password">��й�ȣ</label>
                            <%--<input type="password" class="form-control" name="password" id="password" placeholder="��й�ȣ" oninput="checkPwd()">--%>
                            <input type="password" class="form-control" name="password" id="password"
                                   placeholder="��й�ȣ">
                        </div>
                        <div class="form-group">
                            <label for="confirm">��й�ȣ Ȯ��</label>
                            <%--<input type="password" class="form-control" id="confirm" placeholder="��й�ȣ Ȯ��" oninput="checkPwd()">--%>
                            <input type="password" class="form-control" id="confirm" placeholder="��й�ȣ Ȯ��"">
                            <p class="help-block">��й�ȣ Ȯ���� ���� �ٽ��ѹ� �Է� �� �ּ���</p>
                        </div>
                        <div class="form-group">
                            <label for="name">�̸�</label>
                            <%--<input type="text" class="form-control" name="name" id="name" oninput="checkId()" placeholder="�̸��� �Է��� �ּ���">--%>
                            <input type="text" class="form-control" name="name" id="name" placeholder="�̸��� �Է��� �ּ���">
                        </div>

                        <div class="form-group">
                            <label for="phone">�޴���</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="phone" id="phone" placeholder="- ���� �Է��� �ּ���">
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="address">�ּ�</label>
                            <div class="input-group">
                                <input type="text" class="form-control" name="address" id="address" placeholder="�ּ� �Է�">
                                <span class="input-group-btn">
                                     <button class="btn btn-success">�ּ� ã��<i class="fa fa-edit spaceLeft"></i></button>
                                </span>
                            </div>
                        </div>

                        <div class="form-group">
                            <label>��� ����</label>
                            <div data-toggle="buttons">
                                <label class="btn btn-primary active">
                                    <span class="fa fa-check"></span>
                                    <input id="agree" type="checkbox" autocomplete="off" checked>
                                </label>
                                <a href="#">�̿���</a>�� �����մϴ�.
                            </div>
                        </div>
                        <div class="form-group text-center">
                            <button type="submit" class="btn btn-info signupbtn">ȸ������<i
                                    class="fa fa-check spaceLeft"></i>
                            </button>
                            <button class="btn btn-warning" onclick="goFirstForm()">�������<i
                                    class="fa fa-times spaceLeft"></i>
                            </button>
                        </div>
                    </form>
                </div>
            </article>
            <%--<a href="#" class="btn btn-primary btn-xl rounded-pill mt-5">�� ����</a>--%>
        </div>
    </div>
</header>

<!-- Footer -->
<footer class="py-5 bg-black">
    <div class="container">
        <p class="m-0 text-center text-white small">Copyright &copy; Your Website 2017</p>
    </div>
    <!-- /.container -->
</footer>

<!-- Bootstrap core JavaScript -->
<script src="${pageContext.request.contextPath}/resource/vendor/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resource/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
