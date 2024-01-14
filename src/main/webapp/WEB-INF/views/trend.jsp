<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="https://kit.fontawesome.com/15ef638f33.js" crossorigin="anonymous"></script>

<title>Twitter Clone Layout</title>
<style>
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

