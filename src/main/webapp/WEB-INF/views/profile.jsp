<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
        html{
            box-sizing: border-box;
        }
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;
            /*gap: 10px;*/
            height: 100vh;
        }
        .grid-container > div {
            background-color: white;
            /*padding: 20px;*/
            overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
            border-right: 1px solid #e1e8ed; /* 세로 테두리 추가 */
            border-bottom: 1px solid #e1e8ed; /* 가로 테두리 추가 */
        }

        .profile-header{
            padding: 0 16px;
        }

        .profile-back a{
            color: black;
            text-decoration: none;
            outline: none;
        }

        .profile-back a:hover, .profile-back a:active{
            text-decoration: none;
        }

        .profile-bg{
            height: 200px;
            background-color: #CFD9DE;
        }

        .profile-image img{
            position: relative;
            display: block;
            margin-left: auto;
            margin-right: auto;
            z-index: 1;
            width: 140px;
            height: 140px;
            border-radius: 50%;
            border: 4px solid white;
            margin-top: -80px;
        }

        .profile-detail{
            padding: 12px 12px 0 12px;
            margin: 0 0 16px;
        }

        .profile-icon{
            margin: 0 2px 0 0;
        }

        .profile-button{
            border: 1px solid rgb(207,217,222);
            border-radius: 32px;
            color: black;
            display: inline-block;
            padding: 5px 15px;
            text-decoration: none;
            /*transition: background-color 200ms ease-in-out;*/
            margin: 0 0 32px;
        }

        /******************  Modal  *********************/
        .modal-body{
            padding: 0 2px 64px 2px;
            /* modal 내부 크기 지정 */
            max-height: calc( 100vh - 100px);
            overflow-y: auto;
        }

        .modal-dialog{
            /* modal 내부 크기 지정 */
            overflow-y: initial !important;
        }

        /* modal-body 자식 전체에 속성적용*/
        .modal-body *{
            margin-bottom: 10px;
        }

        #input-file, #input-profileFile{
            /* DOM에서 요소를 완전 제거 */
            display: none;
        }

        .modal-background{
            height: 200px;
            background-color: #BBBBBB;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .modal-background > button{
            border: 0;
            background-color: transparent;
        }

        .modal-background > button > i{
            padding: 14px;
            border-radius: 24px;
            color: white;
            background-color: #636466;
        }

        .modal-profile{
            height: 120px;
        }

        .image-wrapper{
            width: 120px;
        }

        .modal-profile img{
            display: block;
            margin-left: 10px;
            z-index: 1;
            /* 부모의 width 상속받아 100% 사용 */
            width: 100%;
            border-radius: 50%;
            border: 4px solid white;
            margin-top: -40px;
        }

        .camera-wrapper{
            margin-left: 10px;
        }

        .camera-wrapper > i{
            padding: 14px;
            border-radius: 24px;
            color: white;
            background-color: #636466;
        }

        .profile-id{
            margin: 4px 0 12px 0;
        }

        .profile-sub{
            margin: 0 0 12px;
        }

        .form-group {
            overflow: hidden;
            margin-bottom: 0;
            border: 1px solid #b3b3b3;
            padding: 15px 15px;
            border-bottom: none;
            position: relative;
        }
        .form-group label {
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            transition: .3s all ease;
        }
        .form-group input:focus + label {
            margin-top: -20px;
        }

        .form-group label{
            font-size: 12px;
            display: block;
            margin-bottom: 0;
            color: #b3b3b3;
        }
        .form-group.field--not-empty label{
            /*color: #1DA1F2;*/
            margin-top: -20px;
        }

        .form-control {
            border: none;
            padding: 0;
            font-size: 20px;
            border-radius: 0;
        }
        .form-control:active, .form-control:focus {
            outline: none;
            box-shadow: none;
        }

        .navbar{
            padding: 0;
            border-bottom: 1px solid #EFF3F4;
        }

        .nav-link{
            padding: 16px;
            transition: all 0.2s;
            position: relative;
        }

        .nav-link:hover{
            /*text-decoration: underline;*/
            /*border-bottom: 2px solid greenyellow;*/
        }

        .nav-link::after{
            content: '';
            opacity: 0;
            transition: all 0.2s;
            height: 4px;
            width: 100%;
            background-color: #1E9BF0;
            position: absolute;
            bottom: 0;
            left: 0;
        }

        .nav-link:hover::after{
            opacity: 1;
        }
    </style>
</head>
<body>
<div class="grid-container">
    <!-- 외쪽 사이드바 -->
    <%@ include file="sidebar.jsp" %>

    <%-- 가운데 내용 --%>
    <div class="profile">
        <div class="profile-header sticky-top">
            <div class="d-flex align-items-center">
                <div class="pe-5 profile-back">
                    <a href="/home"><i class="fa-solid fa-arrow-left"></i></a>
                </div>

                <div class="d-flex flex-column">
                    <div class="fw-bold">초록효모</div>
                    <div>5 게시물</div>
                </div>
            </div>
        </div>
            <div class="profile-bg"></div>
            <div class="profile-detail">
                <div class="profile-edit d-flex justify-content-between">
                    <div class="profile-image">
                        <img src="/resources/img/profile1.jpeg" alt="profile">
                    </div>
                    <a href="#" role="link" class="profile-button" data-bs-toggle="modal" data-bs-target="#exampleModal">프로필 수정</a>
                </div>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable ">
                        <div class="modal-content">
                            <div class="px-3 py-2 d-flex justify-content-between align-items-center">
                                <div class="me-5">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div>
                                    <span class="modal-title fs-5 fw-bold" id="exampleModalLabel" >프로필 수정</span>
                                </div>
                                <div class="ms-auto">
                                    <button type="button" class="btn btn-dark px-3 rounded-pill fw-bold">저장</button>
                                </div>
                            </div>
                            <div class="modal-body">
                                <div class="modal-background">
                                    <input type="file" id="input-file"/>
                                    <button onclick="onClickUpload();"><i class="fa-solid fa-camera"></i></button>
                                </div>

                                <div class="modal-profile">
                                    <div class="image-wrapper position-relative">
                                        <img src="/resources/img/profile1.jpeg" alt="default">
                                        <div class="camera-wrapper position-absolute top-50 start-50 translate-middle">
                                            <input type="file" id="input-profileFile"/>
                                            <i class="fa-solid fa-camera"></i>
                                        </div>
                                    </div>
                                </div>

                                <div class="modal-name">
                                    <div class="name-header">이름</div>
                                    <input type="text" value="초록효모">
                                </div>
                                <div class="modal-introduce">
                                    <div class="introduce-header">자기소개</div>
                                    <textarea name="" id="" maxlength="160" style="height: 60px">student</textarea>
                                </div>
                                <div class="modal-location">
                                    <div class="location-header">위치</div>
                                    <input type="text" value="Pohang">
                                </div>
                                <div class="form-group modal-website">
                                    <label for="website">웹사이트</label>
                                    <input type="text" class="form-control" id="website" name="websiteUrl">
                                </div>
                                <div class="modal-birth">
                                    <div class="birth-header">
                                        <span>생년월일</span>
                                        <span>·</span>
                                        <span>수정</span>
                                    </div>
                                    <div class="birth-date">
                                        2000년 8월 10일
                                    </div>
                                </div>
                                <div class="modal-account d-flex justify-content-between">
                                    <span>프로페셔널 계정으로 전환</span>
                                    <i class="fa-solid fa-arrow-right"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="profile-id">
                    <div class="profile-nickname fw-bold">초록효모</div>
                    <div class="profile-username">@katekim060</div>
                </div>

                <div class="profile-job mb-2">student</div>
                <div class="profile-sub">
<%--                    <img src="resources/img/icon-location.png" alt="location" width="20px"/>--%>
                    <i class="fa-solid fa-location-dot profile-icon ms-1"></i>
                    <span class="me-3">Pohang</span>
                    <i class="fa-regular fa-calendar profile-icon"></i>
                    <span>가입일: 2024년 1월</span>
                </div>
                <div class="profile-follow">
                    <span class="follow-num fw-bold">2</span>
                    <span class="me-3">팔로우 중</span>
                    <span class="follower-num fw-bold">1</span>
                    <span>팔로워</span>
                </div>
            </div>


        <div class="profile-content">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid d-flex justify-content-around">
                    <div class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">게시물</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">답글</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">하이라이트</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">미디어</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link" aria-current="page" href="#">마음에 들어요</a>
                    </div>
                </div>
            </nav>

            <div class="profile-post">
                
            </div>
        </div>

    </div>
    <%-- 오르쪽 트렌드 --%>
    <%@ include file="trend.jsp" %>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
<script>
    $(function() {
        'use strict';

        $('.form-control').on('input', function() {
            var $field = $(this).closest('.form-group');
            if (this.value) {
                $field.addClass('field--not-empty');
            //    form group 과 form group label 의 색상 바꾸기
                $field.css("borderColor", "blue");
            } else {
                $field.removeClass('field--not-empty');
            }
        });
    });

    // file upload 모양 커스텀
    function onClickUpload(){
        let inputFile = document.getElementById("input-file");
        inputFile.click();
    }

    document.addEventListener("DOMContentLoaded", function() {
        var followNumElement = document.querySelector('.follow-num');
        // 함수 인자로 현재 멤버를 id를 보내야함
        followNumElement.addEventListener('click', function() {
            window.location.href = 'my/following';
        });
    });
</script>
</body>
</html>
