<%--
  Created by IntelliJ IDEA.
  User: moodright
  Date: 2021/2/11 15:20
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户信息</title>
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

    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background: #edf0fb;
        }

        /*Management Section*/
        .management-section{
            background: #edf0fb;
            text-align: center;
        }
        .management-header{
            text-align: left;
            background: transparent;
            padding: 20px 0px;
        }
        h1.management-header-title{
            display: inline-block;
            color: #6f7587;
            font-size: 2rem;
            position: relative;
            left: 5px;
            top: 7px;

        }
        /*Info header*/
        .bg-white{
            margin: 10px 0;
            background: white;
            box-shadow: 0 0 4px 0 rgba(111, 117, 135, 0.35);
            border-radius: 5px;
        }
        .info-header{
            text-align: left;
        }
        .info-header-title{
            display: block;
            margin: 20px 30px;
            text-align: left;
            color: #303a4b;
            font-size: 22px;

        }
        .info-header-headicon{
            width: 112px;
            height: 112px;
            border-radius: 4px;
            box-shadow: 0 0 0 1px #e9e9f2;
            margin-left: 25px;
            margin-bottom: 15px;
        }
        .info-header-changeicon-link{
            display: inline-block;
            text-decoration: none!important;

        }
        .info-header-changeicon-subicon{
            color: #000;
            position: absolute;
            bottom: 20px;
            left: 115px;
        }
        .info-header-username{
            display:inline-block;
            margin-left: 10px;
        }
        .info-header-user-title{
            color: #7e8499;
            font-weight: 400;
            font-size: 20px;
            margin-bottom: 0;
        }
        .info-header-user-subtitle{
            color: #303a4b;
            font-size: 1.25rem;
            font-weight: 700;
            display: inline-block;
        }
        .changename-icon{
            color: #000;
        }
        .changename-icon:hover{
            color: #000;
        }
        /*End of Info header*/

        /*Info body*/
        .info-body .info-body-header{
            display: flex;
            justify-content: space-between;
        }

        .info-body .info-body-header h2{
            color: #303a4b;
            font-size: 22px;
            margin: 20px 30px;
        }
        .info-body .info-body-btn{
            margin: 15px 5px;
            width: 200px;
            color: #fff;
            border: 1px solid transparent;
            border-radius: 8px;
            background: #38a3d9;
            font-weight: bold;
            text-shadow: 0 0 6px #003c59;
        }
        .info-body .info-body-btn:hover{
            color: #fff;
            background: #0088cc;
        }
        /*End of Info body*/
        /*End of Management Section*/

    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Management Section-->
            <div class="col-md-12 col-lg-12 management-section">
                <div class="row" style="margin-left: 100px;margin-right: 100px;">
                    <!-- Management Header-->
                    <div class="col-md-12 col-lg-12">
                        <div class="management-header">
                            <h1 class="management-header-title">账号信息</h1>
                        </div>
                    </div>
                    <!-- End of Management Header-->
                    <!-- Info header-->
                    <div class="col-md-12 col-lg-12 bg-white">
                        <div class="info-header">
                            <h2 class="info-header-title">公开信息</h2>
                            <a href="#" class="info-header-changeicon-link">
                                <img class="img-fluid info-header-headicon" alt="headicon" src="${pageContext.request.contextPath}/user/avartar?user_id=4">
                                <!-- 修改头像 -->
                                <a href="${pageContext.request.contextPath}/user/toUpdateAvartar" style="text-decoration: none">
                                    <i class="fa fa-pencil fa-2x info-header-changeicon-subicon" aria-hidden="true"></i>
                                </a>
                            </a>
                            <div class="info-header-username">
                                <p class="info-header-user-title">用户名</p>
                                <p class="info-header-user-subtitle">moonlight-3@foxmail.com</p>
                                <a href="#" class="changename-icon"><i class="fa fa-pencil" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </div>
                    <!-- End of Info header-->
                    <!-- Info body -->
                    <div class="col-md-12 col-lg-12 bg-white">
                        <div class="info-body">
                            <div class="info-body-header">
                                <h2>个人信息</h2>
                                <button type="button" class="btn info-body-btn">编辑</button>
                            </div>
                        </div>
                    </div>
                    <!-- End of Info body -->
                </div>
            </div>
            <!-- End of Management Section-->
        </div>
    </div>
</body>
</html>
