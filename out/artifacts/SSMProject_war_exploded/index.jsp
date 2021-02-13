<%--
  Created by IntelliJ IDEA.
  User: moodright
  Date: 2021/2/4 15:51
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>账户管理</title>
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
      img.management-headicon{
        display: inline-block;
        width: 60px;
        height: 60px;
        border-radius: 5px;

      }
      h1.management-header-title{
        display: inline-block;
        color: #6f7587;
        font-size: 2rem;
        position: relative;
        left: 5px;
        top: 7px;

      }
      .management-header-separator{
        display: block;
        width: 100%;
        background: #fff;
        height: 1px;
        box-shadow: 0 -1px 1px rgba(0, 0, 0, .12);
      }
      .mbody-part{
        text-align: center;
        margin: 25px 0;
        width: 100%;
        height: 300px;
        border: 2px solid #fff;
        border-radius: 5px;
        background: #fff;
        box-shadow:3px 3px 10px rgba(0, 0, 0, .12);;
      }
      .mbody-part:hover{
        box-shadow: 3px 3px 20px rgba(0, 0, 0, .12);
      }
      .mbody-icon{
        margin-top: 50px;
        margin-bottom: 10px;
        color: #38a3d9;
      }
      h3.mbody-title{
        font-size: 22px;
        color: #303a4b;
        font-weight: normal;
        margin-bottom: 0;
      }
      p.mbody-subtitle{
        font-size: 15px;
        color: #99a1ba;

      }
      .mbody-link:hover{
        text-decoration: none;
      }
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
                <img src="images/xiaomai.jpg" alt="headicon" class="management-headicon">
                <h1 class="management-header-title">欢迎，Moonlight-3@foxmail.com!</h1>
              </div>
              <div class="management-header-separator"></div>
            </div>
            <!-- Management body -->
            <!-- part1 -->
            <div class="col-md-4 col-lg-4">
              <a href="${pageContext.request.contextPath}/user/allUser" class="mbody-link">
                <div class="mbody-part">
                    <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                    <h3 class="mbody-title">用户管理</h3>
                    <p class="mbody-subtitle">管理用户信息</p>
                </div>
              </a>
            </div>
            <!-- end of part1 -->
            <!-- part2 -->
            <div class="col-md-4 col-lg-4">
              <a href="${pageContext.request.contextPath}/user/info" class="mbody-link">
                <div class="mbody-part">
                    <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                    <h3 class="mbody-title">个人信息</h3>
                    <p class="mbody-subtitle">管理个人信息</p>
                </div>
              </a>
            </div>
            <!-- end of part2 -->
            <!-- part3 -->
            <div class="col-md-4 col-lg-4">
              <a href="#" class="mbody-link">
                <div class="mbody-part">
                  <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                  <h3 class="mbody-title">Lorem</h3>
                  <p class="mbody-subtitle">Lorem, ipsum.</p>
                </div>
              </a>
            </div>
            <!-- end of part3 -->
            <!-- part4 -->
            <div class="col-md-4 col-lg-4">
              <a href="#" class="mbody-link">
                <div class="mbody-part">
                  <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                  <h3 class="mbody-title">Lorem</h3>
                  <p class="mbody-subtitle">Lorem, ipsum.</p>
                </div>
              </a>
            </div>
            <!-- end of part4 -->
            <!-- part5 -->
            <div class="col-md-4 col-lg-4">
              <a href="#" class="mbody-link">
                <div class="mbody-part">
                  <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                  <h3 class="mbody-title">Lorem</h3>
                  <p class="mbody-subtitle">Lorem, ipsum.</p>
                </div>
              </a>
            </div>
            <!-- end of part5 -->
            <!-- part6 -->
            <div class="col-md-4 col-lg-4">
              <a href="#" class="mbody-link">
                <div class="mbody-part">
                  <i class="fa fa-user fa-7x mbody-icon" aria-hidden="true"></i>
                  <h3 class="mbody-title">Lorem</h3>
                  <p class="mbody-subtitle">Lorem, ipsum.</p>
                </div>
              </a>
            </div>
            <!-- end of part6 -->
          </div>
        </div>
        <!-- End of Management Section-->
      </div>
    </div>
  </body>
</html>
