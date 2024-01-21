<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        /* 기본 스타일 변수 선언 */
        :root {
            --blue: #8ed0f9;
            --blue2: #1da1f2;
            --gray: rgb(101, 119, 134);
        }

        /* 페이지 전체의 기본 레이아웃 설정 */
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #fff;
            font-family: Arial, sans-serif;
        }

        /* 로그인 영역의 컨테이너 스타일링 */
        .login-container {
            display: flex;
            width: 100%;
            max-width: 960px;
        }

        /* 로고와 로그인 버튼을 갖는 섹션의 스타일링 */
        .login-container > div {
            flex: 1;
            display: flex;
            justify-content: center;
        }

        /* 로고 이미지 스타일링 */
        .logo img {
            width: auto;
            height: 400px;
        }
        
        /* 로그인 버튼 영역의 스타일링 */
        .login-buttons {
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
            height: 100%;
            padding-left: 8px;
        }

        /* 구글 로그인 버튼의 스타일링 */
        .g_id_signin {
            align-self: flex-start;
            transform: scale(2.5);
            transform-origin: top left;
            margin-left: 0px;
            order: 2;
        }

        /* 첫 번째 텍스트 스타일링 */
        .first-text {
            align-items: flex-start;
            font-size: 48px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        /* 두 번째 텍스트 스타일링 */
        .second-text {
            align-items: flex-start;
            font-size: 30px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        /* 텍스트 간 공백 스타일링 */
        .text-space {
            height: 20px;
        }

        /* 화면 크기에 따라 레이아웃 조정 */
        @media (max-width: 720px) {
            .login-container {
                flex-direction: column;
            }
            .logo,
            .login-buttons {
                width: 100%;
                margin-bottom: 8px;
            }
            .g_id_signin {
                width: 100%;
                height: 60px;
            }
            .login-buttons {
                height: 100%;
            }
        }
    </style>
</head>
<body>
<div class="login-container">
    <div class="logo">
        <!-- 로고 이미지 -->
        <img src="../resources/img/logo.svg" alt="로고">
    </div>
    <div class="login-buttons">
        <!-- 첫 번째 텍스트 영역 -->
        <div class="login-text first-text">지금 일어나고 있는 일</div>
        <div class="text-space"></div>
        <!-- 두 번째 텍스트 영역 -->
        <div class="login-text second-text">지금 로그인 하세요</div>

        <!-- 구글 로그인 버튼 -->
        <div id="g_id_onload"
             data-client_id="YOUR_CLIENT_ID"
             data-callback="handleCredentialResponse">
        </div>
        <div class="g_id_signin" data-type="standard"></div>
    </div>

    <!-- 구글 로그인 관련 스크립트 -->
    <script src="https://accounts.google.com/gsi/client" async defer></script>
</body>
</html>
