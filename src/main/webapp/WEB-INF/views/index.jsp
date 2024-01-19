<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://kit.fontawesome.com/7f46d2af51.js" crossorigin="anonymous"></script>
<html>
<head>
    <title>HOME</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        .grid-container {
            display: grid;
            grid-template-columns: 2fr 4fr 3fr;
            height: 100vh;
        }

        .grid-container > div {
            background-color: white;
            overflow: auto;
            border-right: 1px solid #e1e8ed;
            border-bottom: 1px solid #e1e8ed;
        }

        .toggle-buttons-wrapper {
            display: flex;
            justify-content: flex-start;
            margin-top: 0;
            margin-left: -30px;
            border-bottom: 1px solid #e1e8ed;
        }

        .toggle-button {
            cursor: pointer;
            text-align: center;
            font-weight: bold;
            background-color: #ffffff;
            color: rgba(0, 0, 0, 0.37);
            transition: background-color 0.1s, color 0.1s;
            padding: 15px;
            font-size: 15px;
            width: 100%;
            margin: 0;
            position: relative;
        }

        .toggle-button:hover {
            background-color: #e5e3e3;
        }

        .toggle-button.active {
            color: #000000;
        }

        /*버튼 클릭 시 글자 아래 파란색 밑줄*/
        .toggle-button.active:after {
            content: '';
            display: block;
            color: #000000;
            position: absolute;
            left: 133px;
            bottom: 0;
            width: 20%;
            height: 4px;
            background-color: #1DA1F2;
            border-radius: 4px;
        }

        .my-post-area {
            width: 100%;
            height: 150px;
            border-bottom: 1px solid #e1e8ed;
            position: relative;
            display: flex; /* Added to make children align in a row */
        }

        .profile-image {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            margin-top: 23px;
            margin-left: 20px;
            margin-right: 10px;
        }

        .my-post-text {
            width: 80%;
            height: 40%;
            box-sizing: border-box;
            border: none;
            outline: none;
            resize: none;
            font-size: 20px;
            border-bottom: 1px solid #e1e8ed;
            margin-top: 30px;
        }

        .post-button {
            position: absolute;
            bottom: 8px;
            right: 20px;
            padding: 9px 17px;
            background-color: #1DA1F2;
            font-weight: bold;
            color: #ffffff;
            cursor: pointer;
            border-radius: 25px;
        }

        /* Style for post-button when textarea is empty */
        .my-post-text:empty + .post-button {
            background-color: #8ec6ff; /* Lighter blue when textarea is empty */
        }

        .my-post-icons {
            position: absolute;
            bottom: 18px;
            left: 70px; /* Adjust the left position as needed */
            margin-right: 10px;
        }

        .my-post-icons i {
            font-size: 17px; /* Adjust the font size as needed */
            color: #1DA1F2; /* Adjust the color as needed */
            margin-right: 14px;
        }

        .content-area {
            display: flex;
            flex-direction: column;
            overflow: auto;
        }

        .header h2 {
            margin-top: 0;
            margin-bottom: 0;
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

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var toggleButtons = document.querySelectorAll('.toggle-button');
            var myPostArea = document.querySelector('.my-post-area');
            var myPostText = document.querySelector('.my-post-text');
            var postButton = document.querySelector('.post-button');
            var commentIcons = document.querySelectorAll('.fa-comment-o');
            commentIcons.forEach(function (icon) {
                icon.addEventListener('click', function () {
                    console.log("Comment icon clicked");
                    openModal(); // 모달 열기 함수 호출
                });
            });


            toggleButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    toggleButtons.forEach(function (btn) {
                        btn.classList.remove('active');
                    });
                    button.classList.add('active');

                    myPostArea.style.height = myPostArea.scrollHeight + 'px';
                });
            });

            myPostArea.style.height = myPostArea.scrollHeight + 'px';

            // Check textarea content on input event
            myPostText.addEventListener('input', function () {
                updatePostButtonStyle();
            });

            // Initial check when the page loads
            updatePostButtonStyle();

            function updatePostButtonStyle() {
                if (myPostText.value.trim() === '') {
                    postButton.style.backgroundColor = '#8ec6ff'; // Lighter blue when textarea is empty
                } else {
                    postButton.style.backgroundColor = '#1DA1F2'; // Default blue when textarea has content
                }
            }

            function openModal() {
                var modalContainer = document.querySelector('.modal-container');
                modalContainer.style.display = 'flex'; // 모달 열기
            }

            // 여기에 모달 닫기 함수 추가
            function closeModal() {
                var modalContainer = document.querySelector('.modal-container');
                modalContainer.style.display = 'none'; // 모달 닫기
            }
        });

    </script>
</head>
<body>
<div class="grid-container">
    <!-- Left Sidebar -->
    <%@ include file="sidebar.jsp" %>

    <!-- Center Content -->
    <div>

        <div class="toggle-buttons-wrapper">
            <div class="toggle-button active">추천</div>
            <div class="toggle-button">팔로우 중</div>
        </div>

        <div class="my-post-area">
            <!-- 추가된 프로필 이미지 -->
            <img src="data:image/png;base64,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" alt="프로필 이미지" class="profile-image"/>

            <textarea class="my-post-text" placeholder="무슨 일이 일어나고 있나요?"></textarea>
            <div class="my-post-icons">
                <i class="fa-regular fa-images"></i>
                <i class="fa-solid fa-video"></i>
                <i class="fa-solid fa-bars-progress"></i>
                <i class="fa-regular fa-face-smile"></i>
                <i class="fa-solid fa-calendar-day"></i>
                <i class="fa-solid fa-location-dot"></i>
            </div>

            <div class="post-button">게시하기</div>
        </div>

<%--        여기에 추가--%>
        <!-- 게시글 영역 -->
        <div class="content-area">
            <!-- 첫 번째 게시글 -->
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

            <!-- 두 번째 게시글 -->
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

        <div class="modal-container" style="display: none;">
            <div class="modal-content">
                <p>모달 창 내용을 여기에 추가하세요.</p>
                <span class="close-modal" onclick="closeModal()">&times;</span>
            </div>
        </div>

    </div> <%--center--%>

    <!-- Right Trend -->
    <%@ include file="trend.jsp" %>
</div>
</body>
</html>
