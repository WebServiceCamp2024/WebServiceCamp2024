<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME</title>
    <!-- 부트스트랩 CSS 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;
            gap: 10px;
            height: 100vh;
            overflow: hidden;
        }
        .grid-container > div {
            background-color: white;
            padding: 20px;
            overflow: auto;
            border-right: 1px solid #e1e8ed;
            border-bottom: 1px solid #e1e8ed;
        }

        .content-area {
            display: flex;
            flex-direction: column;
            overflow: auto;
        }

        .header {
            padding: 0 20px;
        }

        .header h2 {
            margin-top: 0;
            margin-bottom: 0;
        }

        .header-username {
            margin-top: 0;
            margin-bottom: 0;
            border-bottom: none;
        }

        .post {
            border: none;
            padding: 15px;
            margin-bottom: 10px;
            background-color: #fff;
        }

        .post + .post {
            border-top: 1px solid #e1e8ed;
        }

        .post-header {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }

        .profile-pic {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            margin-right: 10px;
            margin-top:15px;
        }

        .username {
            font-weight: bold;
            margin-right: 10px;
        }

        .time{
            margin-right: 10px;
        }

        .post-content {
            margin: 3px 10px 10px 55px;
        }

        .post-image {
            width: 90%;
            height: auto;
            margin:10px 10px 10px 55px;
            border-radius: 2%;
        }

        .post-icons {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-left: 55px;
            padding-top: 10px;
            padding-bottom: 20px;
        }

        .icon {
            margin-right: 15px;
            cursor: pointer;
        }

        .icon i {
            color: #333;
        }

        .icon i:hover {
            color: #1DA1F2;
        }

    </style>
</head>
<body>
<div class="grid-container">
    <!-- 왼쪽 사이드바 -->
    <%@ include file="sidebar.jsp" %>

    <!-- 가운데 내용 (부트스트랩 적용) -->
    <div class="col-md-12 content-area">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <!-- 헤더 영역 -->
                    <div class="header">
                        <h2>Bookmarks</h2>
                        <p class="header-username">@username</p>
                    </div>
                    <!-- 게시글 영역 -->
                    <div class="post">
                        <div class="post-header">
                            <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                            <span class="username">@Username</span>
                            <span class="time">7h</span>
                        </div>
                        <p class="post-content">여기에 작성한 글을 넣으세요.</p>
                        <img src="resources/img/snow.jpg" alt="Post Image" class="post-image">
                        <div class="post-icons">
                            <span class="icon"><i class="fa fa-comment-o"></i></span>
                            <span class="icon"><i class="fa fa-heart-o"></i></span>
                            <span class="icon"><i class="fa fa-bookmark-o"></i></span>
                        </div>
                    </div>

                    <!-- 추가 게시글 -->
                    <div class="post">
                        <div class="post-header">
                            <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                            <span class="username">@Username2</span>
                            <span class="time">7h</span>
                        </div>
                        <p class="post-content">두 번째 게시글의 내용.</p>
                        <div class="post-icons">
                            <span class="icon"><i class="fa fa-comment-o"></i></span>
                            <span class="icon"><i class="fa fa-heart-o"></i></span>
                            <span class="icon"><i class="fa fa-bookmark-o"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- 오른쪽 트렌드 -->
    <%@ include file="trend.jsp" %>
</div>

<!-- 부트스트랩 JS 추가 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
</html>
