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
</style>
</head>
<body>
<div class="grid-container">
    <!-- 외쪽 사이드바 -->
        <%@ include file="sidebar.jsp" %>

    <%-- 가운데 내용 --%>
        <div>
            <h2>Center</h2>
            <p>Center 섹션입니다.</p>
        </div>
    <%-- 오르쪽 트렌드 --%>
        <%@ include file="trend.jsp" %>

</div>
</body>
</html>