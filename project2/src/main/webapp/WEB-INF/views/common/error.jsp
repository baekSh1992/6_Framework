<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%-- 코어 태그는 <c:if> 조건문 사용할 때만 </c:if> --%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>

    <style>
        body{
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .error-container{
            width: 800px;
            height: 300px;
            text-align: center;
        }

        .error-container > h1{
            margin-bottom: 50px;
        }

        .error-content-title{
            text-align: left;
            font-weight: bold;
        }

        .btn-area{
        text-align: center;
        }

        .btn-area > a{
        color: black;
        }


    </style>
</head>
<body>
    <div class="error-container">
        <h1>${errorMessage}</h1>

        <span class="error-content-title">발생한 예외 : </span> ${e}
        <p>
            자세한 문제 원인은 Eclipse 에러 메세지를 확인해주세요.
        </p>

        <div class="btn-area">
            <a href="/">메인 페이지</a>
            
            <button type="button" onclick="history.back()">뒤로 가기</button>
        </div>

    </div>
</body>
</html>