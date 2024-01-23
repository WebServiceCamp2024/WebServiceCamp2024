<%--
  Created by IntelliJ IDEA.
  User: seoyoun
  Date: 2024/01/18
  Time: 5:13 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>HOME</title>
    <style>
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;
            gap: 10px;
            height: 100vh;
        }
        .grid-container > div {
            background-color: white;
            padding: 20px;
            overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
            border-right: 1px solid #e1e8ed; /* 세로 테두리 추가 */
            border-bottom: 1px solid #e1e8ed; /* 가로 테두리 추가 */
        }

        #main-section {
            display: flex;
            flex-direction: column;
        }
        .search-container {
            display: flex;
            align-items: center;
            border-radius: 20px;
            padding: 10px 15px;
            margin-bottom: 20px;
            background-color: rgba(247, 249, 249, 1.00);
        }
        .search-bar {
            flex-grow: 1;
            border: none;
            outline: none;
            background-color: transparent;
            padding-left: 10px;
        }
        .fa-magnifying-glass {
            color: #555;
        }

        .bg-img img {
            max-width: 100%;
            height: auto;
        }

        .popular-list {
            /*background-color: rgba(247, 249, 249, 1.00);*/
            background-color: white;
            /*border-radius: 15px;*/
            padding: 10px 10px 10px 10px;
        }

        .popular-item {
            display: flex;
            justify-content: space-between; /* 내용을 양쪽 끝으로 정렬합니다 */
            align-items: center; /* 수직 중앙 정렬 */
            padding: 10px;
            cursor: pointer; /* 클릭 가능하도록 커서 변경 */
        }

        /* 추가된 스타일 */
        .popular-item:hover {
            background-color: #f0f0f0; /* 호버 시 배경색 변경 */
        }

        /* Show more 버튼에 대한 스타일 */
        .show-more-btn {
            cursor: pointer;
            color: #1DA1F2; /* 글자 색을 파란색으로 지정 */
            /*font-weight: bold;*/
            margin-top: 10px;
        }

        .show-more-btn:hover {
            text-decoration: underline; /* 호버 시 밑줄 표시 */
        }

        /* 현재 주목하는 트랜드 */
        .event-list {
            /*background-color: rgba(247, 249, 249, 1.00);*/
            background-color: white;
            /*border-radius: 15px;*/
            padding: 10px 10px 10px 10px;
        }

        .event-item {
            display: flex;
            justify-content: space-between; /* 내용을 양쪽 끝으로 정렬합니다 */
            align-items: center; /* 수직 중앙 정렬 */
            padding: 10px;
            cursor: pointer; /* 클릭 가능하도록 커서 변경 */
        }

        /* 추가된 스타일 */
        .event-item:hover {
            background-color: #f0f0f0; /* 호버 시 배경색 변경 */
        }

        .event-item img {
            width: 96px; /* 이미지의 너비 조절 */
            height: 96px; /* 이미지의 높이 조절 */
            margin-left: 10px; /* 이미지와 텍스트 사이의 간격 조절 */
        }
    </style>
</head>
<body>

<div class="grid-container">
    <!-- 외쪽 사이드바 -->
    <%@ include file="sidebar.jsp" %>

    <%-- 가운데 내용 --%>
    <div id="main-section">

        <div class="search-container">
            <i class="fa-solid fa-magnifying-glass"></i>
            <input type="text" class="search-bar" placeholder="Search">
        </div>

        <%--    <!-- 진행중인 이벤트 -->--%>
        <%--    <div class="bg-img">--%>
        <%--        <img src="https://getbootstrap.com/docs/4.6/assets/brand/bootstrap-solid.svg" alt="Background Image">--%>
        <%--    </div>--%>


        <!-- 이벤트 항목에 영상을 링크로 추가 -->
        <div class="event-item row d-flex justify-content-center">
            <div class="col-9">
                <iframe width="640" height="315" src="https://www.youtube.com/embed/Z7uBInm1PJY?si=qCqHob5xpUjin4ZO" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen autoplay></iframe>
            </div>
        </div>

        <!-- 실시간 인기 트렌드 목록 -->
        <div class="popular-list">
            <hr class="my-4 border-top border-light"> <!-- 추가: 두 섹션 사이의 수평선 -->

            <h2> Trends for you </h2>

            <!-- 더미 데이터로 구성된 트렌드 목록 -->
            <div class="popular-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    Trending in South Korea<br>
                    <span style="display: block; font-size: 1.1em;"><b>안녕하세요</b></span>
                    27.9K posts
                </div>
                <div class="col-3 text-right">
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>

            <div class="popular-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    Trending in Computer<br>
                    <span style="display: block; font-size: 1.1em;"><b>웹 서비스 개발</b></span>
                    24.5K posts
                </div>
                <div class="col-3 text-right">
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>

            <div class="popular-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    Trending in Computer<br>
                    <span style="display: block; font-size: 1.1em;"><b>앱 서비스 개발</b></span>
                    19.9K posts
                </div>
                <div class="col-3 text-right">
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>

            <div class="popular-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    Trending in Handong<br>
                    <span style="display: block; font-size: 1.1em;"><b>장소연 교수님</b></span>
                    14.3K posts
                </div>
                <div class="col-3 text-right">
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>

            <div class="popular-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    Trending in Handong<br>
                    <span style="display: block; font-size: 1.1em;"><b>김광 교수님</b></span>
                    10.9K posts
                </div>
                <div class="col-3 text-right">
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>

            <div class="popular-item show-more-btn row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                Show more
            </div>
            <hr class="my-4 border-top border-light"> <!-- 추가: 두 섹션 사이의 수평선 -->

        </div>


        <div class="event-list">
            <h2>What's happening</h2>

            <!-- 더미 데이터로 구성된 이벤트 목록 -->
            <div class="event-item row border-bottom py-2 border-light" onclick="location.href='your_page_url_here'">
                <div class="col-9">
                    <span style="display: block; font-size: 1.1em; "><b>Manswear Fashion Weeks</b></span>
                    Fashion.Live
                </div>
                <div class="col-3 text-right">
                    <img src="https://getbootstrap.com/docs/4.6/assets/brand/bootstrap-solid.svg" alt="Event Image">
                </div>
            </div>

            <div class="event-item show-more-btn" onclick="location.href='your_page_url_here'">
                Show more
            </div>
        </div>

    </div>
    <%-- 오르쪽 트렌드 --%>
    <%@ include file="trend.jsp" %>

</div>
</body>
</html>


