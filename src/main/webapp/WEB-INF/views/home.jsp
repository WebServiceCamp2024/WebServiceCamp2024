<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://kit.fontawesome.com/7f46d2af51.js" crossorigin="anonymous"></script>

<html>
<head>
    <title>HOME</title>
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
            left: 135px;
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
            width: 100%;
            height: 40%;
            box-sizing: border-box;
            border: none;
            outline: none;
            resize: none;
            font-size: 20px;
            border-bottom: 1px solid #e1e8ed;
            margin-top: 30px;
        }

        form {
            margin: 0; /* 폼 마진 제거 */
            padding: 0; /* 폼 패딩 제거 */
            width: 100%
        }

        .post-button {
            position: absolute;
            bottom: 8px;
            right: 20px;
            padding: 5px 17px;
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

        .post-icons .icon.like-button {
            margin-left: 55px;
        }

        .post-icons .icon.bookmark-button {
            margin-left: 70px;
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
            margin: 3px 15px 10px 55px;
            padding-left: 11px
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

        .btn-secondary {
            color: #6c757d;
            background-color: white;
            border-color: white;
        }

        .dropdown {
            margin-left: auto;
        }

        .like-button {
            background: none;
            border: none;
            cursor: pointer;
            margin-left: 230px;
        }

        .like-button i {
            color: #333;
        }

        .like-button:hover i {
            color: #1DA1F2;
        }

        .my-post-member-id{
            margin-left: 330px;
            width: 100px;
            margin-top: 14px;
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

                        <form action="/post/create" method="post">
                            <textarea name="content" class="my-post-text" placeholder="무슨 일이 일어나고 있나요?" required></textarea>
                            <div class="my-post-icons">
                                <i class="fa-regular fa-images"></i>
                                <i class="fa-solid fa-video"></i>
                                <i class="fa-solid fa-bars-progress"></i>
                                <i class="fa-regular fa-face-smile"></i>
                                <i class="fa-solid fa-calendar-day"></i>
                                <i class="fa-solid fa-location-dot"></i>
                            </div>
                            <input type="text" name="memberId" class="my-post-member-id" placeholder="멤버 아이디" required>
                            <button type="submit" class="post-button">게시하기</button>
                        </form>
                    </div>
                    <c:forEach var="post" items="${posts}">
                        <div class="post">
                            <div class="post-header">
                                <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                                <span class="username">@Username</span>
                                <span class="time">
                                    <fmt:formatDate value="${post.updatedDate}" pattern="yyyy-MM-dd HH:mm:ss" />
                                </span>

                                <!-- 드롭다운 메뉴 시작 -->
                                <div class="dropdown">
                                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                        <i class="fa-solid fa-ellipsis"></i>
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                        <li><a class="dropdown-item" href="javascript:editPost('${post.postId}', '${post.content}');">수정</a></li>
                                        <li><a class="dropdown-item" href="javascript:showDeleteConfirmation(${post.postId});">삭제</a></li>
                                    </ul>
                                </div>
                                <!-- 드롭다운 메뉴 끝 -->
                            </div>
                            <p class="post-content">${post.content}</p>
                            <div class="post-icons">
                                <span class="icon"><i class="fa fa-comment-o"></i></span>

                                <span class="icon like-button" data-post-id="${post.postId}">
                                    <i class="fa fa-heart-o"></i>
                                </span>

                                <span class="icon bookmark-button" data-post-id="${post.postId}">
                                    <i class="fa fa-bookmark-o"></i>
                                </span>
                            </div>
                        </div>
                    </c:forEach>

                </div>
            </div>
        </div>
    </div>
    <!-- 오른쪽 트렌드 -->
    <%@ include file="trend.jsp" %>
</div>

<!-- 댓글 모달창 -->
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
                <button type="button" class="btn btn-primary" data-bs-dismiss="modal">Reply</button><%-- 모달 창 닫기--%>
            </div>
        </div>
    </div>
</div>

<%-- 삭제 모달--%>
<div class="modal fade" id="deleteConfirmationModal" tabindex="-1" aria-labelledby="deleteConfirmationModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="deleteConfirmationModalLabel">게시물 삭제</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                이 동작을 수행할 수 없으며 내 프로필, 나를 팔로우하는 계정의 타임라인, 그리고 검색 결과에서 삭제됩니다.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                <button type="button" class="btn btn-primary" id="confirmDelete">삭제하기</button>
            </div>
        </div>
    </div>
</div>

<!-- 수정 모달 -->
<div class="modal" id="updatePostModal" tabindex="-1" role="dialog" aria-labelledby="updatePostModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="updatePostModalLabel">게시물 수정</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </button>
            </div>
            <div class="modal-body">
                <!-- 프로필 이미지, 사용자 이름, 시간 -->
                <div class="post-header">
                    <img src="resources/img/profile1.jpeg" alt="Profile Picture" class="profile-pic">
                    <span class="username">@Username</span>
                    <span class="time">7h</span>
                </div>
                <!-- 게시물 내용 -->
                <p class="post-content" id="modalPostContent"></p>
                <form id="updatePostForm" action="/post/update" method="post">
                    <input type="hidden" id="updatePostId" name="postId">
                    <div class="form-group">
                        <label for="updateContent">수정할 게시물 내용:</label>
                        <textarea class="form-control" id="updateContent" name="content" required></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소</button>
                <button type="submit" form="updatePostForm" class="btn btn-primary">수정 완료</button>
            </div>
        </div>
    </div>
</div>

<!-- 부트스트랩 JS 추가 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

<%--삭제--%>
<script>
    function showDeleteConfirmation(postId) {
        const confirmDeleteBtn = document.getElementById('confirmDelete');
        confirmDeleteBtn.onclick = function() {
            deletePost(postId);
        };
        const deleteModal = new bootstrap.Modal(document.getElementById('deleteConfirmationModal'));
        deleteModal.show();
    }

    function deletePost(postId) {
        window.location.href = '/post/delete/' + postId;
    }
</script>

<script>
    function editPost(postId, content) {
        // 모달 내 게시물 정보 업데이트
        document.getElementById('updatePostId').value = postId;
        document.getElementById('updateContent').value = content;
        document.getElementById('modalPostContent').innerText = content;

        var form = document.getElementById('updatePostForm');
        form.action = '/post/update/' + postId;

        var updatePostModal = new bootstrap.Modal(document.getElementById('updatePostModal'));
        updatePostModal.show();
    }
</script>

<script>
    let commentModal; // 모달 인스턴스를 저장할 변수 선언

    document.addEventListener('DOMContentLoaded', function () {
        const commentIcons = document.querySelectorAll('.fa-comment-o');
        commentIcons.forEach(icon => {
            icon.addEventListener('click', function () {
                if (!commentModal) { // commentModal이 초기화되지 않았다면 초기화
                    commentModal = new bootstrap.Modal(document.getElementById('commentModal'));
                }
                commentModal.show(); // 모달 보여주기
            });
        });

        var toggleButtons = document.querySelectorAll('.toggle-button');
        var myPostArea = document.querySelector('.my-post-area');
        var myPostText = document.querySelector('.my-post-text');
        var postButton = document.querySelector('.post-button');

        // 게시하기 버튼 초기 상태 설정
        updatePostButtonState();

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
        myPostText.addEventListener('input', updatePostButtonState);
        function updatePostButtonState() {
            if (myPostText.value.trim() === '') {
                postButton.disabled = true; // 버튼을 비활성화
                postButton.style.backgroundColor = '#8ec6ff'; // 배경색을 더 밝은 색으로 변경
            } else {
                postButton.disabled = false; // 버튼을 활성화
                postButton.style.backgroundColor = '#1DA1F2'; // 기본 배경색으로 변경
            }
        }
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const likeButtons = document.querySelectorAll('.like-button');

        likeButtons.forEach(button => {
            button.addEventListener('click', async function (event) {
                event.preventDefault();
                await toggleLikeIcon(button, 'fa-heart-o', 'fa-heart');
            });
        });
        async function toggleLikeIcon(button, initialClass, toggledClass) {
            const postId = button.dataset.postId;
            try {
                const response = await fetch('/postlike/toggle/' + postId, {
                    method: 'POST',
                });

                if (response.ok) {
                    const icon = button.querySelector('i');
                    if (icon.classList.contains(initialClass)) {
                        icon.classList.remove(initialClass);
                        icon.classList.add(toggledClass);
                        icon.style.color = '#ff0000';
                    } else {
                        icon.classList.remove(toggledClass);
                        icon.classList.add(initialClass);
                        icon.style.color = '#333';
                    }
                } else {
                    console.error('Server error');
                }
            } catch (error) {
                console.error('Error during AJAX request', error);
            }
        }
    });
</script>

<script>
    document.querySelectorAll('.bookmark-button').forEach(button => {
        button.addEventListener('click', async function(event) {
            event.preventDefault();
            await toggleBookmarkIcon(button, 'fa-bookmark-o', 'fa-bookmark');
        });
    });

    async function toggleBookmarkIcon(button, initialClass, toggledClass) {
        const postId = button.dataset.postId;

        try {
            const response = await fetch('/bookmark/toggle/' + postId, {
                method: 'POST',
            });

            if (response.ok) {
                const bookmarkIcon = button.querySelector('i');
                if (bookmarkIcon.classList.contains(initialClass)) {
                    bookmarkIcon.classList.remove(initialClass);
                    bookmarkIcon.classList.add(toggledClass);
                    bookmarkIcon.style.color = '#009dff';
                } else {
                    bookmarkIcon.classList.remove(toggledClass);
                    bookmarkIcon.classList.add(initialClass);
                    bookmarkIcon.style.color = '#333';
                }
            } else {
                console.error('서버 오류');
            }
        } catch (error) {
            console.error('AJAX 요청 중 오류 발생', error);
        }
    }
</script>



</body>
</html>
