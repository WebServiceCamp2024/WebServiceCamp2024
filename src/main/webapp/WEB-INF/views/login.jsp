<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://kit.fontawesome.com/7f46d2af51.js" crossorigin="anonymous"></script>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <!-- 부트스트랩 CSS 추가 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        /* 기본 스타일 설정 */
        .text-container {
            text-align: left; /* 텍스트 왼쪽 정렬 */
        }

        .login-container {
            min-height: 100vh; /* 최소 높이 설정 */
        }

        /* 로그인 폼 스타일 */
        .login-form {
            width: 100%; /* 폼 너비 전체 사용 */
        }

        /* 로고 스타일 */
        .logo {
            display: flex; /* Flexbox 사용 */
            align-items: center; /* 수직 방향 중앙 정렬 */
            justify-content: left; /* 수평 방향 왼쪽 정렬 */
            height: 100%; /* 높이 전체 사용 */
        }

        /* 로고 이미지 스타일 */
        .logo img {
            max-height: 500px; /* 최대 높이 설정 */
            transform: scale(1.125); /* 크기 조정 */
        }

        /* 메인 텍스트 스타일 */
        .text-container h1 {
            white-space: nowrap; /* 텍스트 줄바꿈 없음 */
            font-size: 4.125rem; /* 폰트 크기 */
            font-weight: bold; /* 굵은 글씨체 */
            padding-bottom: 2.5rem; /* 아래쪽 패딩 */
        }

        .text-container h4 {
            font-weight: bold; /* 굵은 글씨체 */
            padding-bottom: 1.25rem; /* 아래쪽 패딩 */
        }

        /* 기존 계정 확인 섹션 스타일 */
        .existing-account {
            color: #6c757d; /* 글씨 색상 */
            text-align: center; /* 가운데 정렬 */
            margin-top: 25px; /* 위쪽 마진 */
        }

        /* 소셜 로그인 버튼 스타일 */
        .social-login-button {
            font-size: 0.7rem; /* 폰트 크기 */
            border-radius: 20px; /* 테두리 둥글게 */
            padding: 6.25px; /* 패딩 */
            border: 1px solid #ced4da; /* 테두리 스타일 */
            width: 312.5px; /* 너비 설정 */
            box-sizing: border-box; /* 박스 크기 계산 방식 */
            margin-bottom: 6.25px; /* 아래쪽 마진 */
            display: flex; /* Flexbox 사용 */
            justify-content: center; /* 가운데 정렬 */
            align-items: center; /* 수직 방향 중앙 정렬 */
        }

        /* 소셜 로그인 아이콘 스타일 */
        .social-login-button i {
            font-size: 1.5rem; /* 아이콘 크기 */
            margin-right: 12.5px; /* 오른쪽 마진 */
        }

        /* 계정 생성 버튼 스타일 */
        .create-account-button {
            font-size: 0.875rem;
            background-color: #007bff; /* 배경색 */
            border: none; /* 테두리 없음 */
            border-radius: 20px; /* 테두리 둥글게 */
            padding: 6.25px; /* 패딩 */
            color: white; /* 글씨 색상 */
            width: 312.5px; /* 너비 설정 */
            margin-top: 6.25px; /* 위쪽 마진 */
            margin-bottom: 2.5px; /* 아래쪽 마진 */
        }

        /* 이용 약관 텍스트 컨테이너 스타일 */
        .terms-text-container {
            width: 312.5px; /* 너비 설정 */
            margin-top: 0; /* 위쪽 마진 없음 */
            margin-bottom: 2.5rem; /* 아래쪽 마진 */
        }

        /* 이용 약관 텍스트 스타일 */
        .terms-text {
            font-size: 0.65rem; /* 폰트 크기 */
            display: block; /* 블록 요소로 표시 */
            margin-bottom: 0; /* 아래쪽 마진 없음 */
        }

        /* 기존 계정 텍스트 컨테이너 스타일 */
        .existing-account-container {
            width: 312.5px; /* 너비 설정 */
            margin-bottom: 1.25rem; /* 아래쪽 마진 */
        }

        /* 기존 계정 텍스트 스타일 */
        .existing-account-text {
            font-size: 1.25rem; /* 폰트 크기 */
            font-weight: bold; /* 굵은 글씨체 */
            display: block; /* 블록 요소로 표시 */
        }

        /* 로그인 버튼 스타일 */
        .sign-in-button {
            font-size: 0.875rem; /* 폰트 크기 */
            border: 1px solid #ced4da; /* 테두리 스타일 */
            border-radius: 20px; /* 테두리 둥글게 */
            padding: 6.25px; /* 패딩 */
            color: white; /* 글씨 색상 */
            width: 312.5px; /* 너비 설정 */
            color: #007bff; /* 글씨 색상 */
        }

        /* 페이지 하단 푸터 스타일 */
        .page-bottom {
            text-align: center; /* 가운데 정렬 */
            width: 100%; /* 너비 전체 사용 */
            position: absolute; /* 절대 위치 */
            bottom: 0; /* 하단에 위치 */
            left: 0; /* 왼쪽에 위치 */
            padding: 10px 0; /* 패딩 */
            background-color: #fff; /* 배경색 */
        }

        /* 푸터 내 텍스트 스타일 */
        .page-bottom span {
            margin: 0 3px; /* 마진 */
            font-size: 0.8rem; /* 폰트 크기 */
            color: #6c757d; /* 글씨 색상 */
            white-space: nowrap; /* 줄바꿈 없음 */
        }

        /* 부트스트랩 레이아웃 충돌 방지 */
        .container {
            padding-right: 0; /* 오른쪽 패딩 없음 */
            padding-left: 0; /* 왼쪽 패딩 없음 */
        }
    </style>
</head>
<body>
<!-- 컨테이너 시작: 로그인 섹션을 중앙에 배치하기 위한 Flexbox 컨테이너 -->
<div class="container d-flex align-items-center justify-content-center login-container">
    <div class="row">
        <!-- 로고 부분: 화면의 왼쪽 절반을 차지 -->
        <div class="col-md-6 text-center">
            <div class="logo">
                <!-- 로고 이미지 -->
                <img src="../resources/img/logo.svg" alt="로고" class="img-fluid">
            </div>
        </div>

        <!-- 로그인 폼 부분: 화면의 오른쪽 절반을 차지 -->
        <div class="col-md-6">
            <div class="login-form">
                <!-- 로그인 폼 제목 -->
                <div class="text-container">
                    <h1 class="mb-3">지금 일어나고 있는 일</h1>
                    <h4 class="mb-3">지금 가입하세요.</h4>
                </div>

                <!-- 소셜 로그인 버튼 -->
                <button class="social-login-button btn mb-2">
                    <i class="fab fa-google"></i> <span>Google 계정으로 가입하기</span>
                </button>
                <button class="social-login-button btn">
                    <i class="fab fa-apple"></i> <span>Apple에서 가입하기</span>
                </button>

                <!-- '또는' 구분선 -->
                <div class="existing-account">
                    <span>또는</span>
                </div>
                <!-- 계정 만들기 버튼 -->
                <button class="create-account-button">계정 만들기</button>

                <!-- 이용약관 동의 문구 -->
                <div class="terms-text-container">
                    <span class="terms-text">가입하시려면 쿠키사용을 포함해 이용약관과 개인정보 처리방침에 동의해야 합니다.</span>
                </div>

                <!-- 기존 계정 로그인 안내 문구 -->
                <div class="existing-account-container">
                    <span class="existing-account-text">이미 트위터에 가입하셨나요?</span>
                </div>

                <!-- 로그인 버튼 -->
                <button class="sign-in-button">로그인</button>

                <!-- 페이지 하단 푸터 -->
                <div class="page-bottom">
                    <!-- 푸터 내용 -->
                    <span>소개</span>
                    <span>고객센터</span>
                    <span>이용약관</span>
                    <span>개인정보 처리방침</span>
                    <span>쿠키 정책</span>
                    <span>광고 정보</span>
                    <span>블로그</span>
                    <span>상태</span>
                    <span>채용</span>
                    <span>브랜드 리소스</span>
                    <span>광고</span>
                    <span>마케팅</span>
                    <span>비즈니스용</span>
                    <span>개발자</span>
                    <span>디렉터리</span>
                    <span>설정</span>
                    <span>&copy; 2024 X Corp.</span>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- 부트스트랩 JavaScript 파일 추가 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
