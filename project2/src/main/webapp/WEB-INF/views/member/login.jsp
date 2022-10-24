<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 페이지</title>

    <%-- "/" = 최상위 주소 --%>
    <link rel="stylesheet" href="/resources/css/login-style.css">

    <!-- fontawesome 사이트 아이콘 이용 -->
    <script src="https://kit.fontawesome.com/f7459b8054.js" 
    crossorigin="anonymous"></script>

</head>
<body>
    <main>

        <section class="logo-area">
            <a href="/">
                <img src="/resources/images/logo.jpg">
            </a>
        </section>

        <form action="/member/login" method="post">
            <section class="input-box">
                <!-- required(뜻:필수) 속성 : form태그 제출 시 해당 input 태그에 값이 존재하는지 검사 -->
                <input type="text" name="inputEmail" placeholder="Email" required value="${cookie.saveId.value}">
            </section>

            <section class="input-box">
                <!-- required(뜻:필수) 속성 : 미입력시 제출 안되고, 입력칸 작성 요청 메세지 뜸 -->
                <input type="password" name="inputPw" placeholder="Password" required>
            </section>

            <button class="login-btn">Login</button>


            <%-- 쿠키에 saveId가 있는 경우 변수 생성 --%>
            <c:if test="${!empty cookie.savaId.value}">
                <c:set var="temp" value="checked"/>
            </c:if>

            <div class="saveId-area">
                <input type="checkbox" name="saveId" id="saveId" ${temp}>
                <label for="saveId">
                    <i class="fas fa-check"></i> 아이디 저장
                </label>
            </div>



            <p class="text-area">
                <a href="/member/signUp">회원가입</a>
                |
                <a href="#">ID/PW 찾기</a>
            </p>


        </form>
    </main>

            <%--
                session scope에 message 속성이 존재하는 경우
                alert창을 이용해서 내용을 출력     
            --%>

            <c:if test="${not empty sessionScope.message}">
                <script>
                    alert("${sessionScope.message}")
                </script>

            <%-- footer에 쓰는이유 
                1) footer가 사용빈도가 적어서 가독성이 좋음
                2) header에 넣을경우 alert를 실행할때 뒤쪽에 로딩이 걸림
            --%>

                <%-- 로그인정보 오류 message 1회 출력 후 session scope에서 삭제 (안하면 맞게 입력해도 또 나옴)--%>
                <c:remove var="message" scope="session" />
                
            </c:if>


</body>
</html>