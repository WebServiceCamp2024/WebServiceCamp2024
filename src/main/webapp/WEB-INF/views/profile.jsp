<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>profile</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

    <style>
        .grid-container {
            display: grid;
            grid-template-columns: 1fr 2fr 1fr;
            gap: 10px;
            height: 100vh;
        }
        .grid-container > div {
            background-color: white;
            /*padding: 20px;*/
            overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
            border-right: 1px solid #e1e8ed; /* 세로 테두리 추가 */
            border-bottom: 1px solid #e1e8ed; /* 가로 테두리 추가 */
        }
    </style>
</head>
<body>
<div class="grid-container">
    <!-- 외쪽 사이드바 -->
    <%@ include file="sidebar.jsp" %>

    <%-- 가운데 내용 --%>
    <div class="">
        <div class="sticky-top">
            <div class="d-flex align-items-center">
                <div>
                    <i class="fa-solid fa-arrow-left"></i>
                </div>

                <div class="d-flex flex-column">
                    <div>초록효모</div>
                    <div>5 게시물</div>
                </div>
            </div>
        </div>

        <div class="bg-body-secondary"></div>

        <h2>내용</h2>


    </div>
    <%-- 오르쪽 트렌드 --%>
    <%@ include file="trend.jsp" %>

</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>
</body>
</html>
