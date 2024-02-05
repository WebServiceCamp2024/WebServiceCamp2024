<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
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

        .profile-bg{
            height: 200px;
            background-color: #CFD9DE;
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

        .profile-id{
            margin: 4px 0 12px 0;
        }

        .profile-sub{
            margin: 0 0 12px;
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
                <div class="pe-5">
                    <i class="fa-solid fa-arrow-left"></i>
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
                    <div>img</div>
                    <a href="#" role="link" class="profile-button">프로필 수정</a>
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
                    <span class="fw-bold">2</span>
                    <span class="me-3">팔로우 중</span>
                    <span class="fw-bold">1</span>
                    <span>팔로워</span>
                </div>
            </div>



        <div class="profile-content">
            <nav class="navbar navbar-expand-lg">
                <div class="container-fluid d-flex justify-content-around">
                    <div class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">게시물</a>
                        <div class="nav-underline"></div>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">답글</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">하이라이트</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">미디어</a>
                    </div>
                    <div class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">마음에 들어요</a>
                    </div>
                </div>
            </nav>

            <div class="profile-status">
                
            </div>
        </div>

    </div>
    <%-- 오르쪽 트렌드 --%>
    <%@ include file="trend.jsp" %>

</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
