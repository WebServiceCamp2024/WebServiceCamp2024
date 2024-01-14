<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://kit.fontawesome.com/15ef638f33.js" crossorigin="anonymous"></script>

<html>
<head>
    <title>Twitter Clone Layout</title>
    <style>
        /* 간단한 CSS 그리드 레이아웃을 설정합니다. */
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;
            gap: 10px;
            /*padding: 10px;*/
            height: 100vh; /* 브라우저의 뷰포트 높이 전체를 사용합니다. */
            /*border: 1px solid #e1e8ed;*/
        }
        .grid-container > div {
            background-color: white;
            padding: 20px;
            overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
            border-right: 1px solid #e1e8ed; /* 세로 테두리 추가 */
            border-bottom: 1px solid #e1e8ed; /* 가로 테두리 추가 */
        }
        #left-section {
            border-left: none;
            padding-left: 80px; /* 왼쪽 섹션의 왼쪽 패딩을 늘립니다. */
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }
        .menu-item {
            display: flex;
            align-items: center; /* 아이콘과 텍스트를 수직 중앙 정렬합니다 */
            padding: 15px 15px 15px 15px; /* 좌우 패딩을 조금 더 추가합니다 */
            /*margin: 10px 0;*/
            text-decoration: none;
            color: #333;
            /*font-weight: ;*/
            font-size: 22px;
            border-radius: 30px; /* 둥근 모서리를 위한 border-radius 설정 */
            /*background-color: #f8f9fa; !* 메뉴 아이템의 배경색 *!*/
            transition: background-color 0.2s; /* 부드러운 배경색 변경 효과 */
            width: fit-content; /* 텍스트 길이에 맞게 너비를 설정합니다 */
        }
        .menu-item i { /* 아이콘 스타일링 */
            margin-right: 10px; /* 아이콘과 텍스트 사이의 간격을 설정합니다 */
        }
        .menu-item:hover {
            background-color: #e1e8ed; /* 마우스 오버 시 배경색 변경 */
        }
        .profile-info {
            display: flex; /* Flexbox 레이아웃 적용 */
            align-items: center; /* 아이템들을 세로 중앙 정렬 */
            margin-bottom: 20px;
            /*margin-right: 20px;*/
        }
        .profile-info img {
            border-radius: 50%;
            width: 40px; /* 이미지 크기 */
            height: 40px; /* 이미지 크기 */
            margin-right: 10px; /* 이미지와 텍스트 사이의 간격 */
        }
        .profile-info .name-id {
            display: flex;
            flex-direction: column; /* 이름과 아이디를 위/아래로 배열 */
            margin-right: 10px;
        }
        .profile-info .name-id .name {
            font-weight: bold; /* 이름을 굵게 */
            font-size: 10px;
        }
        .profile-info .name-id .id {
            font-size: 10px;
            color: #555; /* 아이디 색상 */
        }
        #right-section {
            display: flex;
            flex-direction: column;
        }
        .search-container {
            display: flex;
            align-items: center;
            border-radius: 20px;
            padding: 10px 15px;
            margin-bottom: 20px;
            background-color: rgba(247,249,249,1.00);
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
        .trends-list{
            background-color: rgba(247,249,249,1.00);
            border-radius: 15px;
            padding: 10px 10px 10px 10px;
        }
        .trend-item{
            display: flex;
            justify-content: space-between; /* 내용을 양쪽 끝으로 정렬합니다 */
            align-items: center; /* 수직 중앙 정렬 */
            padding: 10px;
        }
        .trend-item:last-child
    </style>
</head>
<body>
    <div class="grid-container">
        <!-- 왼쪽 섹션 -->
        <div id="left-section">
            <div>
                <a href="#" class="menu-item"><i class="fas fa-home"></i>홈</a> <!-- 아이콘 예시 -->
                <a href="#" class="menu-item"><i class="fas fa-search"></i>탐색하기</a> <!-- 아이콘 예시 -->
                <a href="#" class="menu-item"><i class="fas fa-bell"></i>알림</a> <!-- 아이콘 예시 -->
                <a href="#" class="menu-item"><i class="fas fa-bookmark"></i>북마크</a> <!-- 아이콘 예시 -->
                <a href="#" class="menu-item"><i class="fas fa-user"></i>프로필</a> <!-- 아이콘 예시 -->
    <%--            <a href="#" class="menu-item">더 보기</a>--%>
            </div>
            <!-- 프로필 정보 -->
            <a href="#" class="menu-item">
                <div class="profile-info">
                    <img src="data:image/png;base64,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" alt="프로필 이미지"/>
                    <div class="name-id">
                        <div class="name">사용자 이름</div>
                        <div class="id">@username</div>
                    </div>
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </a>
            <!-- 추가 메뉴 항목이 필요하면 여기에 추가하세요. -->
        </div>

        <!-- 가운데 섹션 -->
        <div id="center-section">
            <p>가운데 섹션 콘텐츠</p>
            <!-- 여기에 트윗 목록이나 트윗 작성 폼 등을 추가할 수 있습니다. -->
        </div>

        <!-- 오른쪽 섹션 -->
        <div id="right-section">
            <!-- 검색 바 -->
            <div class="search-container">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" class="search-bar" placeholder="트위터 검색">
            </div>
            <!-- 트렌드 목록 -->
            <div class="trends-list">
                <h3>나를 위한 트렌드</h3>
                <!-- 더미 데이터로 구성된 트렌드 목록 -->
                <div class="trend-item">
                    #트렌드1
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
                <div class="trend-item">
                    #트렌드2
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
                <div class="trend-item">
                    #트렌드3
                    <i class="fa-solid fa-ellipsis"></i>
                </div>
            </div>
        </div>
    </div>
    </div>
</body>
</html>

