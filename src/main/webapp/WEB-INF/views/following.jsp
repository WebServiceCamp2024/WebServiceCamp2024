<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>following</title>
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


      /**************  profile header  *****************/
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

      /**************  navbar  *****************/
      .navbar{
        padding: 0;
        border-bottom: 1px solid #EFF3F4;
      }

      .nav-link{
        padding: 16px;
        transition: all 0.2s;
        position: relative;
      }

     .nav-item:nth-child(3){
        border-bottom: solid 4px #1DA1F2;
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
        /*position: absolute;*/
        bottom: 0;
        left: 0;
      }

      .nav-link:hover::after{
        opacity: 1;
      }

    /***************** media query ******************/
    /* media query는 맨 마지막에, 순서 중요*/
    @media (max-width: 767px) {
      .grid-container{
        display: grid;
        grid-template-columns: 4fr 1fr 1fr;
        gap: 0px;
        height: 100vh;
      }
      .grid-container > div {
        background-color: blue;
        padding: 20px;
        overflow: auto; /* 섹션 내용이 많을 경우 스크롤을 허용합니다. */
        border-right: none; /* 세로 테두리 추가 */
        border-bottom: none; /* 가로 테두리 추가 */
      }
    }

  </style>
</head>
<body>

<div class="grid-container">
  <!-- 외쪽 사이드바 -->
  <%@ include file="sidebar.jsp" %>

  <%-- 가운데 내용 --%>
  <div>
    <div class="profile-header sticky-top">
      <div class="d-flex align-items-center">
        <div class="pe-5 profile-back">
          <a href="/profile"><i class="fa-solid fa-arrow-left"></i></a>
        </div>

        <div class="d-flex flex-column">
          <div class="fw-bold">초록효모</div>
          <div>@katekim060</div>
        </div>
      </div>
    </div>

    <div class="profile-content">
      <nav class="navbar navbar-expand-lg">
        <div class="container-fluid d-flex justify-content-around">
          <div class="nav-item">
            <a class="nav-link" aria-current="page" href="#">인증된 팔로워</a>
          </div>
          <div class="nav-item">
            <a class="nav-link" aria-current="page" href="#">팔로워</a>
          </div>
          <div class="nav-item">
            <a class="nav-link" aria-current="page" href="#">팔로잉</a>
          </div>
          </div>
      </nav>
    </div>
  </div>
  <%-- 오르쪽 트렌드 --%>
  <%@ include file="trend.jsp" %>

</div>

<script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.min.js" integrity="sha384-BBtl+eGJRgqQAUMxJ7pMwbEyER4l1g+O15P+16Ep7Q9Q+zqX6gSbd85u4mG4QzX+" crossorigin="anonymous"></script>

</body>
</html>
