<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>

<%--<html>--%>
<%--<head>--%>
<%--    <title>회원 가입</title>--%>
<%--</head>--%>
<%--<body>--%>

<%--<h2>회원 가입 폼</h2>--%>

<%--<!-- action은 백엔드 컨트롤러의 @PostMapping 주소와 일치해야 함 -->--%>
<%--<form action="/member/create" method="post">--%>
<%--    <div>--%>
<%--        <label for="username">사용자 이름:</label>--%>
<%--        <input type="text" id="username" name="username" required>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <label for="password">비밀번호:</label>--%>
<%--        <input type="password" id="password" name="password" required>--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <button type="submit">회원 가입</button>--%>
<%--    </div>--%>
<%--</form>--%>

<%--<h2>멤버 리스트</h2>--%>
<%--<!-- 회원 정보 업데이트 폼, 처음에는 숨겨져 있음 -->--%>
<%--<div id="updateForm" style="display:none;">--%>
<%--    <h2>회원 정보 업데이트</h2>--%>
<%--    <form id="updateMemberForm" action="/member/update" method="post">--%>
<%--        <input type="hidden" id="updateMemberId" name="memberId" value="" />--%>
<%--        <div>--%>
<%--            <label for="updateUsername">사용자 이름:</label>--%>
<%--            <input type="text" id="updateUsername" name="username" required>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <label for="updatePassword">비밀번호:</label>--%>
<%--            <input type="password" id="updatePassword" name="password" required>--%>
<%--        </div>--%>
<%--        <div>--%>
<%--            <button type="submit">정보 업데이트</button>--%>
<%--        </div>--%>
<%--    </form>--%>
<%--</div>--%>

<%--<table border="1">--%>
<%--    <tbody>--%>
<%--    <c:forEach var="member" items="${members}" varStatus="loopStatus">--%>
<%--        <tr>--%>
<%--            <td>${member.memberId}</td>--%>
<%--            <td>${member.username}</td>--%>
<%--            <td>--%>
<%--                <!-- 업데이트 링크가 JavaScript 함수를 호출하도록 변경 -->--%>
<%--                <a href="javascript:showUpdateForm('${member.memberId}', '${member.username}', '${member.password}');">업데이트</a> |--%>
<%--                <a href="javascript:deleteMember(${member.memberId});">삭제</a>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </c:forEach>--%>
<%--    </tbody>--%>
<%--</table>--%>

<%--<script>--%>
<%--    function showUpdateForm(memberId, username, password) {--%>
<%--        document.getElementById('updateMemberId').value = memberId;--%>
<%--        document.getElementById('updateUsername').value = username;--%>
<%--        document.getElementById('updatePassword').value = password;--%>
<%--        document.getElementById('updateForm').style.display = 'block';--%>
<%--    }--%>
<%--</script>--%>

<%--<script>--%>
<%--    function deleteMember(memberId) {--%>
<%--        if (!confirm('회원을 삭제하시겠습니까?')) {--%>
<%--            return;--%>
<%--        }--%>
<%--        window.location.href = '/member/delete/' + memberId;--%>
<%--    }--%>

<%--</script>--%>

<%--</body>--%>
<%--</html>--%>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>회원 가입</title>
</head>
<body>

<h2>회원 가입 폼</h2>

<!-- action은 백엔드 컨트롤러의 @PostMapping 주소와 일치해야 함 -->
<form action="/member2/create" method="post">
    <div>
        <label for="email">이메일:</label>
        <input type="email" id="email" name="email" required>
    </div>
    <div>
        <label for="profileImage">프로필 이미지:</label>
        <input type="text" id="profileImage" name="profileImage" required>
    </div>
    <div>
        <label for="twitterId">트위터 아이디:</label>
        <input type="text" id="twitterId" name="twitterId" required>
    </div>
    <div>
        <label for="nickname">닉네임:</label>
        <input type="text" id="nickname" name="nickname" required>
    </div>
    <div>
        <label for="region">지역:</label>
        <input type="text" id="region" name="region">
    </div>
    <div>
        <label for="info">자기소개:</label>
        <textarea id="info" name="info"></textarea>
    </div>
    <div>
        <button type="submit">회원 가입</button>
    </div>
</form>


<h2>멤버 리스트</h2>
<!-- 회원 정보 업데이트 폼, 처음에는 숨겨져 있음 -->
<div id="updateForm" style="display:none;">
    <h2>회원 정보 업데이트</h2>
    <form id="updateMemberForm" action="/member/update" method="post">
        <input type="hidden" id="updateMemberId" name="memberId" value="" />
        <div>
            <label for="updateUsername">사용자 이름:</label>
            <input type="text" id="updateUsername" name="username" required>
        </div>
        <div>
            <label for="updatePassword">비밀번호:</label>
            <input type="password" id="updatePassword" name="password" required>
        </div>
        <div>
            <button type="submit">정보 업데이트</button>
        </div>
    </form>
</div>

<table border="1">
    <tbody>
    <c:forEach var="member" items="${members}" varStatus="loopStatus">
        <tr>
            <td>${member.memberId}</td>
            <td>${member.username}</td>
            <td>
                <!-- 업데이트 링크가 JavaScript 함수를 호출하도록 변경 -->
                <a href="javascript:showUpdateForm('${member.memberId}', '${member.username}', '${member.password}');">업데이트</a> |
                <a href="javascript:deleteMember(${member.memberId});">삭제</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<script>
    function showUpdateForm(memberId, username, password) {
        document.getElementById('updateMemberId').value = memberId;
        document.getElementById('updateUsername').value = username;
        document.getElementById('updatePassword').value = password;
        document.getElementById('updateForm').style.display = 'block';
    }
</script>

<script>
    function deleteMember(memberId) {
        if (!confirm('회원을 삭제하시겠습니까?')) {
            return;
        }
        window.location.href = '/member/delete/' + memberId;
    }

</script>

</body>
</html>



