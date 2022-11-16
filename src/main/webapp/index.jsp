<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: hoang
  Date: 11/16/2022
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="provinceList" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <%--    <meta http-equiv="X-UA-Compatible" content="IE=edge">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ThoiTiet</title>
    <link rel="stylesheet" href="index.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
</head>
<body>
<div class="header">
    <div class="logo">
        <img src="https://thoitiet.vn/img/logo-header.png" alt="thoitietlogo">
    </div>
    <div class="search">
        <i class="fa-solid fa-magnifying-glass"></i>
        <input type="text" placeholder="Nhập Tên Địa Điểm">
    </div>
    <div class="province map">
        <p>Tỉnh-Thành Phố</p>
        <div class="name_province"></div>
    </div>
    <div class="explore map">
        <p>Khám Phá</p>
    </div>
    <div class="sites map">
        <p>Dia Danh</p>
    </div>
    <div class="blog map">
        <p>blog</p>
    </div>
</div>
<div class="container">
    <div class="title">
        <h3>DỰ BÁO THỜI TIẾT CÁC TỈNH/THÀNH PHỐ</h3>
    </div>
    <div class="weather_wrap">
        <c:forEach items="${provinceList}" var="item">
            <div class="weather_box">
                <h3>${item.province}</h3>
                <img src="https://data.thoitiet.vn/weather/icons/03n@2x.png">
                <p>Mây Rải Rác</p>
                <p>20/20</p>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>