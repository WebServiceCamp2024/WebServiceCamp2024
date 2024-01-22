<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://kit.fontawesome.com/7f46d2af51.js" crossorigin="anonymous"></script>
<html>
<head>
    <title>HOME</title>
    <style>
    <!-- 부트스트랩 CSS 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">

    <style>
        body {
            font-family: Arial, sans-serif;
        }
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
            overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
            border-right: 1px solid #e1e8ed; /* 세로 테두리 추가 */
            border-bottom: 1px solid #e1e8ed; /* 가로 테두리 추가 */
        }
            overflow: auto;
            border-right: 1px solid #e1e8ed;
            border-bottom: 1px solid #e1e8ed;
        }
        /*@media (max-width: 767px) {*/
        /*    #left-section, #right-section {*/
        /*        display: none !important; !* !important를 사용해 우선 순위를 높입니다 *!*/
        /*    }*/
        /*    .content-area {*/
        /*        padding: 0; !* 컨텐츠 영역의 패딩을 제거 *!*/
        /*        margin: 0 auto; !* 중앙 정렬 *!*/
        /*        max-width: 100%; !* 최대 너비를 100%로 설정 *!*/
        /*    }*/
        /*    .bottom-nav {*/
        /*        display: flex;*/
        /*        justify-content: space-around;*/
        /*        align-items: center;*/
        /*        position: fixed;*/
        /*        bottom: 0;*/
        /*        left: 0;*/
        /*        right: 0;*/
        /*        height: 60px;*/
        /*        background-color: #fff;*/
        /*        border-top: 1px solid #e1e8ed;*/
        /*        z-index: 1000;*/
        /*    }*/
        /*    !* 바텀 네비게이션의 아이콘과 텍스트 스타일링 *!*/
        /*    .bottom-nav .menu-item {*/
        /*        flex-grow: 1;*/
        /*        text-align: center;*/
        /*        padding: 10px;*/
        /*    }*/
        /*    .bottom-nav .menu-item i {*/
        /*        font-size: 20px;*/
        /*    }*/
        /*    .bottom-nav .menu-item span {*/
        /*        font-size: 12px;*/
        /*    }*/
        /*}*/
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
            padding-left: 15px;
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

        /*여기부터*/
        .post-header .edit-button {
            margin-left: auto;
            margin-right: 10px;
            background-color: transparent;
            border: none;
            color: #1DA1F2;
            cursor: pointer;
            font-size: 14px;
        }

        .post-header .edit-button:hover {
            text-decoration: underline;
        }

        .post-header .delete-button {
            background-color: transparent;
            border: none;
            color: #e0245e;
            cursor: pointer;
            font-size: 14px;
        }

        .post-header .delete-button:hover {
            text-decoration: underline;
        }
        /*여기까지*/

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

        .modal-dialog {
            max-width: 500px;
            height: 450px;
        }

        .modal-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .modal-header .drafts {
            order: 1;
        }

        .modal-header .btn-close {
            order: 2;
        }

        .modal-body .reply-area {
            display: flex;
            align-items: center; /* 두 번째 프로필 이미지와 post your reply 텍스트를 같은 라인에 배치 */
            border-bottom: none;
        }

        .modal-footer .my-post-icons {
            margin-left: 0;
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
                    <!-- 여기부터 추가된 코드 -->
                    <div class="toggle-buttons-wrapper">
                        <div class="toggle-button active">추천</div>
                        <div class="toggle-button">팔로우 중</div>
                    </div>

                    <div class="my-post-area">
                        <!-- 추가된 프로필 이미지 -->
                        <img src="resources/img/profile1.jpeg" alt="프로필 이미지" class="profile-pic"/>

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

                    <%--여기부터--%>
                    <!-- 나의 게시글 -->
                    <div class="post">
                        <div class="post-header">
                            <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                            <span class="username">@Username</span>
                            <span class="time">7h</span>
                            <button class="edit-button" onclick="editPost()">수정</button>
                            <button class="delete-button" onclick="deletePost()">삭제</button>
                        </div>
                        <p class="post-content">여기에 작성한 글을 넣으세요.</p>
                        <img src="resources/img/snow.jpg" alt="Post Image" class="post-image">
                        <div class="post-icons">
                            <span class="icon"><i class="fa fa-comment-o"></i></span>
                            <span class="icon"><i class="fa fa-heart-o"></i></span>
                            <span class="icon"><i class="fa fa-bookmark-o"></i></span>
                        </div>
                    </div>
                    <%--여기까지--%>

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

<%--    <!-- 모바일 뷰를 위한 바텀 네비게이션 -->--%>
<%--    <div class="bottom-nav d-md-none">--%>
<%--        <!-- 바텀 네비게이션 메뉴 아이템 -->--%>
<%--        <a href="#" class="menu-item">--%>
<%--            <i class="fas fa-home"></i>--%>
<%--            <span>홈</span>--%>
<%--        </a>--%>
<%--        <a href="#" class="menu-item">--%>
<%--            <i class="fas fa-search"></i>--%>
<%--            <span>탐색하기</span>--%>
<%--        </a>--%>
<%--        <a href="#" class="menu-item">--%>
<%--            <i class="fas fa-bookmark"></i>--%>
<%--            <span>북마크</span>--%>
<%--        </a>--%>
<%--        <a href="#" class="menu-item">--%>
<%--            <i class="fas fa-user"></i>--%>
<%--            <span>프로필</span>--%>
<%--        </a>--%>
<%--    </div>--%>
</div>

<!-- 모달창 -->
<div class="modal" id="commentModal" tabindex="-1">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <span class="drafts">Drafts</span>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="post-details">
                    <div class="post-header">
                        <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                        <span class="username">@Username</span>
                        <span class="time">7h</span>
                    </div>
                    <p class="post-content">여기에 작성한 글을 넣으세요.</p>
                </div>
                <div class="reply-area">
                    <img src="resources/img/profile1.jpeg" alt="프로필 이미지" class="profile-pic"/>

                    <textarea class="my-post-text" placeholder="Post your reply"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <div class="my-post-icons">
                    <i class="fa-regular fa-images"></i>
                    <i class="fa-solid fa-video"></i>
                    <i class="fa-solid fa-bars-progress"></i>
                    <i class="fa-regular fa-face-smile"></i>
                    <i class="fa-solid fa-calendar-day"></i>
                    <i class="fa-solid fa-location-dot"></i>
                </div>
                <button type="button" class="btn btn-primary">Reply</button>
            </div>
        </div>
    </div>
</div>


<!-- 부트스트랩 JS 추가 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<script>
    // 댓글 아이콘 클릭 이벤트 리스너 추가
    document.addEventListener('DOMContentLoaded', function () {
        const commentIcons = document.querySelectorAll('.fa-comment-o');
        commentIcons.forEach(icon => {
            icon.addEventListener('click', function () {
                const commentModal = new bootstrap.Modal(document.getElementById('commentModal'));
                commentModal.show();
            });
        });
        // 여기부터
        function editPost() {
            // Add your logic for handling post editing here
            alert("Edit button clicked");
        }

        function deletePost() {
            // Add your logic for handling post deletion here
            alert("Delete button clicked");
        }
        // 여기까지
    });

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

</body>
</html>
