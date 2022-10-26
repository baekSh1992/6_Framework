<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        
<footer>
    <p> <!-- &copy; 저작권 표시 C 마크 -->
        Copyright &copy; KH Information Educational Institute A-Class
    </p>

    <article>
        <a href="#">프로젝트 소개</a>
        <span>|</span>
        <a href="#">이용약관</a>
        <span>|</span>
        <a href="#">개인정보처리방침</a>
        <span>|</span>
        <a href="#">고객센터</a>
    </article>
</footer>


<%--
    session scope에 message 속성이 존재하는 경우
    alert창을 이용해서 내용을 출력     
--%>

<c:if test="${not empty message}">
    <script>
        alert("${message}")
    </script>

<%-- footer에 쓰는이유 
    1) footer가 사용빈도가 적어서 가독성이 좋음
    2) header에 넣을경우 alert를 실행할때 뒤쪽에 로딩이 걸림
 --%>

    <%-- 로그인정보 오류 message 1회 출력 후 모든 scope 삭제 (안하면 맞게 입력해도 또 나옴)--%>
    <c:remove var="message" />
    
</c:if>