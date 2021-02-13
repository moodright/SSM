<%--
  Created by IntelliJ IDEA.
  User: moodright
  Date: 2021/2/5 15:42
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!-- Bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <!-- Fontawesome Icon -->
    <script src="https://kit.fontawesome.com/30b60647a8.js" crossorigin="anonymous"></script>
    <!-- Google Fonts-->
    <link href="https://fonts.font.im/css?family=Poppins:400,700" rel="stylesheet">
    <title>添加用户</title>

    <style>
        .user-section {
            text-align: center;
        }
        .user-header {
            text-align: left;
            background: transparent;
            padding: 20px 0px;
        }
        .user-header-title {
            display: inline-block;
            color: #6f7587;
            font-size: 3rem;
            position: relative;
            left: 5px;
            top: 7px;
        }
        .user-header-separator {
            display: block;
            width: 100%;
            background: #fff;
            height: 1px;
            box-shadow: 0 -1px 1px rgba(0, 0, 0, .12);
        }
        .form-section {
            margin: 15px 0;
        }

    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <!-- user header -->
            <div class="col-md-12 col-lg-12 user-section">
                <div class="user-header">
                    <h1 class="user-header-title">添加用户</h1>
                </div>
                <div class="user-header-separator"></div>
            </div>
            <!-- End of user header -->
            <!-- form secion -->
            <div class="col-md-12 col-lg-12 form-section">
                <form class="form-horizontal" action="${pageContext.request.contextPath}/user/updateUser" method="post">
                    <!-- 隐藏域传值 -->
                    <input type="hidden" name="user_id" value="${user.user_id}">
                    <div class="form-group">
                        <label for="username" class="col-sm-1 control-label">用户名</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="username" name="username" required value="${user.username}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="nickname" class="col-sm-1 control-label">别名</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="nickname" name="nickname" required value="${user.nickname}">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-1 control-label">密码</label>
                        <div class="col-sm-11">
                            <input type="text" class="form-control" id="password" name="password" required value="${user.password}">
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-1 col-sm-11">
                            <button type="submit" class="btn btn-default">提交</button>
                        </div>
                    </div>
                </form>
            </div>
            <!-- End of form section -->
        </div>
    </div>
</body>
</html>
