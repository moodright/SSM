<%--
  Created by IntelliJ IDEA.
  User: moodright
  Date: 2021/2/4 15:58
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>用户列表</title>
    <!-- Bootstrap css-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <!-- Google Fonts-->
    <link href="https://fonts.font.im/css?family=Poppins:400,700" rel="stylesheet">

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
        .bg-white {
            margin: 15px 0;
            background: #edf0fb;
            border-radius: 3px;
            box-shadow: 0 0 4px 0 rgba(111, 117, 135, 0.35);
        }
        .user-list-thead {
            text-align: center;
        }

        .user-banner {
            text-align: left;
            margin: 15px 0;
        }
        .user-banner-btn {
            color: #fff;
            border: 1px solid transparent;
            border-radius: 8px;
            background: #38a3d9;
            font-weight: bold;
            text-shadow: 0 0 6px #003c59;
        }
        .user-banner-btn:hover {
            color: #fff;
            background: #0088cc;
        }



    </style>
</head>
<body>
    <div class="container">
        <div class="row">
            <!-- user header -->
            <div class="col-md-12 col-lg-12 user-section">
                <div class="user-header">
                    <h1 class="user-header-title">用户列表</h1>
                </div>
                <div class="user-header-separator"></div>
            </div>
            <!-- End of user header -->

            <!-- user banner -->
            <div class="col-md-3 col-lg-3 user-banner">
                <a href="${pageContext.request.contextPath}/user/toAddUser"><button type="button" class="btn user-banner-btn" >添加用户</button></a>
                <a href="${pageContext.request.contextPath}/user/allUser"><button type="button" class="btn user-banner-btn" >所有用户</button></a>
            </div>
            <div class="col-md-9 col-lg-9 user-banner">
                <form class="form-inline" action="${pageContext.request.contextPath}/user/query" method="post" style="float: right">
                    <span style="color:red;font-weight:bold">${msg}</span>
                    <input type="text" class="form-control" placeholder="请输入需要查询的用户名" name="username">
                    <input type="submit" class="btn user-banner-btn" value="查询">
                </form>
            </div>
            <!-- end of user banner -->

            <!-- user list table -->
            <div class="col-md-12 col-lg-12 bg-white">
                <table class="table user-list">
                    <thead class="user-list-thead">
                        <tr>
                            <th>用户名</th>
                            <th>别名</th>
                            <th>密码</th>
                            <th>创建时间</th>
                            <th>操作</th>
                        </tr>
                    </thead>
                    <tbody class="user-list-tbody">
                        <c:forEach var="user" items="${userList}">
                            <tr>
                                <td>${user.username}</td>
                                <td>${user.nickname}</td>
                                <td>${user.password}</td>
                                <td>${user.format_create_time}</td>
                                <td>
                                    <a href="${pageContext.request.contextPath}/user/toUpdateUser/${user.user_id}"><button type="button" class="btn user-banner-btn" >更新</button></a>
                                    <a href="${pageContext.request.contextPath}/user/deleteUser/${user.user_id}"><button type="button" class="btn user-banner-btn" >删除</button></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <!-- End of user list table -->
        </div>
    </div>
</body>
</html>
