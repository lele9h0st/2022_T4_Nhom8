<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="bean.ProvinceWeather" %>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<jsp:useBean id="provinceWeather" scope="request" type="bean.ProvinceWeather"/>
<jsp:useBean id="provinceList" scope="request" type="java.util.List"/>
<jsp:useBean id="randomProvinces" scope="request" type="java.util.List"/>
<jsp:useBean id="dong_bac_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="tay_bac_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="db_songhong" scope="request" type="java.util.List"/>
<jsp:useBean id="bac_trung_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="nam_trung_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="tay_nguyen" scope="request" type="java.util.List"/>
<jsp:useBean id="dong_nam_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="db_songcuulong" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<!-- saved from url=(0028)https://thoitiet.vn/ha-giang -->
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới</title>
    <meta name="description"
          content="Cập nhật dự báo thời tiết ${provinceWeather.province} hôm nay và ngày mai chính xác nhất. Dự báo khả năng có mưa, lượng mưa, thời tiết cực đoan và nhiệt độ ở ${provinceWeather.province}">
    <meta name="keywords"
          content="Dự báo thời tiết,thời tiết Tỉnh ${provinceWeather.province},thời tiết hôm nay,thời tiết ngày mai,thời tiết 3 ngày tới">
    <meta name="robots" content="index, follow">
    <meta name="robots" content="max-image-preview:large">
    <link rel="manifest" href="https://thoitiet.vn/icons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link rel="preconnect" href="https://fonts.gstatic.com/">
    <link href="./Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới_files/css2"
          rel="stylesheet">

    <link href="./css/card.css" rel="stylesheet">

    <link rel="stylesheet" href="./css/site.css">
    <link href="./css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <!-- CSS only -->
    <%--    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script type="text/javascript" async=""
            src="./Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới_files/analytics.js.download"></script>
    <script type="text/javascript" async=""
            src="./Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới_files/js"></script>
    <script async="" src="./Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới_files/f.txt"
            crossorigin="anonymous"></script>


    <script type="application/ld+json">
        {
            "@context": "https://schema.org",
            "@type": "BreadcrumbList",
            "itemListElement": [
                {
                    "@type": "ListItem",
                    "position": 1,
                    "name": "Trang chủ",
                    "item": "https://thoitiet.vn"
                },
                {
                    "@type": "ListItem",
                    "position": 2,
                    "name": "Thời tiết ${provinceWeather.province}",
                    "item": "https://thoitiet.vn/ha-giang"
                }
            ]
        }
    </script>

</head>
<body>

<header class="bg-white">
    <div class="py-1 border-bottom shadow-sm">
        <div class="container">
            <div class="row">
                <div class="col-6 col-md-4  order-0">

                </div>
                <div class="col-12 col-md-4 order-3 order-md-2">

                </div>
                <div class="col-6 col-md-4 order-2">
                    <div class="header-timer text-right">
                        <span>
                            <i class="bi bi-clock"></i>
                            Giờ địa phương:
                        </span>
                        <span class="btn btn-link" id="timer" >${requestScope.showDate}</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<nav class="navbar sticky-top navbar-expand-md pb-1 bg-white navbar-light">

    <div class="container" style="position:relative">
        <a class="navbar-brand logo" href="${pageContext.request.contextPath}">
            <img src="./images/logo-header.png"
                 class="img-fluid d-none d-md-block">
            <img src="./images/logo-mobile.png"
                 class="img-fluid d-block d-md-none">
        </a>
        <div class="search d-md-none">
            <div class="form-group mb-0 search-group">
                <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off"
                       class="form-control basicModalAutoSelect search-input"><input type="hidden" name="simple_select">
            </div>
        </div>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
                aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="search d-none d-md-block">
                <div class="form-group mb-0 search-group">
                    <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off"
                           id="search-input-real" class="form-control basicModalAutoSelect search-input" onkeyup="function myFunction() {
                                var input,filter,dropdownPanel,searchItem,textValue,count;
                                input= document.getElementById('search-input-real');
                                dropdownPanel=document.getElementById('dropdown-search-panel');
                                searchItem=dropdownPanel.getElementsByClassName('search-item');
                                filter=input.value.toUpperCase();
                                console.log(filter)
                                count=0;
                                 for (i = 0; i < searchItem.length; i++) {
                                     textValue=searchItem[i].getElementsByTagName('p')[0].innerText;
                                     if(textValue.toUpperCase().lastIndexOf(filter)>-1){
                                          searchItem[i].style.display='block';
                                          console.log(textValue.toUpperCase())
                                          count++;
                                     }else{
                                         searchItem[i].style.display='none';
                                     }
                                 }if(count<1){
                                     dropdownPanel.classList.remove('show');
                                 }
                                else if(filter.length>1){
                                    dropdownPanel.classList.add('show');
                                }else{
                                    dropdownPanel.classList.remove('show');
                                }
                           }
                           myFunction()"><input type="hidden"
                                                name="simple_select">
                    <div class="bootstrap-autocomplete dropdown-menu " id="dropdown-search-panel"
                         style="top: 38px; left: 0px; width: 350px;">
                        <c:forEach items="${provinceList}" var="item">
                            <a class="dropdown-item search-item" style="overflow: hidden; text-overflow: ellipsis;" href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                <p style="color: black">${item.province}</p></a>
                        </c:forEach>
                    </div>
                    <span class="search-icon">
                        <i class="fa-solid fa-magnifying-glass"></i>
                    </span>
                </div>
            </div>
            <ul class="navbar-nav ml-auto menu">
                <li class="nav-item dropdown has-megamenu">
                    <span class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true"
                          aria-expanded="false" style="cursor:pointer">
                        <i class="fa-solid fa-clipboard"></i>
                        Tỉnh - Thành phố
                    </span>
                    <div class="dropdown-menu megamenu rounded-0" role="menu">
                        <div class="row">
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đông Bắc Bộ</h6>
                                    <ul class="mega-submenu">
                                        <!--<li>
                                            <a href="https://thoitiet.vn/ha-giang" title="${provinceWeather.province}">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                ${provinceWeather.province}
                                            </a>
                                        </li>-->
                                        <c:forEach items="${dong_bac_bo}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Tây Bắc Bộ</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${tay_bac_bo}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đồng bằng sông Hồng</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${db_songhong}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Bắc Trung Bộ</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${bac_trung_bo}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Nam Trung Bộ</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${nam_trung_bo}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Tây Nguyên</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${tay_nguyen}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đông Nam Bộ</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${dong_nam_bo}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đồng bằng sông Cửu Long</h6>
                                    <ul class="mega-submenu">
                                        <c:forEach items="${db_songcuulong}" var="item">
                                            <li>
                                                <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                                                    <i class="fa-solid fa-arrow-right"></i>
                                                        ${item.province}
                                                </a>
                                            </li>
                                        </c:forEach>

                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                        </div><!-- end row -->
                    </div> <!-- dropdown-mega-menu.// -->
                </li>

            </ul>
        </div>
    </div>
</nav>


<main class="weather-day">
    <section class="section-container section-wheather">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb" class="mt-2">
                        <ol class="breadcrumb mb-0" >
                            <li class="breadcrumb-item"><a href="https://thoitiet.vn/" style="color: black">Trang chủ</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Thời
                                tiết ${provinceWeather.province}</li>
                        </ol>
                    </nav>
                </div>
            </div>
            <div class="row">
                <!--Danh sách thành phố, điểm đến, núi-->
                <div class="col-12 col-md-8">
                    <div class="current-location">
                        <div class="d-flex flex-column flex-sm-row justify-content-between">
                            <div class="location-name">
                            <span class="location-name-icon">
                                <i class="bi bi-geo"></i>
                            </span>
                                <h1 class="location-name-main">
                                    <a href="https://thoitiet.vn/ha-giang">
                                        Dự báo thời tiết ${provinceWeather.province}
                                    </a>
                                </h1>
                                <a href="https://thoitiet.vn/ha-giang#" rel="nofollow" title="Chọn làm địa chỉ mặc định"
                                   class="btn-current-location" data-lat="22.7933" data-lng="105.01241">
                                    <i class="bi bi-house-door"></i>
                                </a>
                            </div>
                            <div class="share-button">
                                <div class="fb-like" data-href="https://thoitiet.vn/ha-giang" data-width=""
                                     data-layout="button" data-action="like" data-size="small" data-share="true"></div>
                            </div>

                        </div>


                        <div class="d-flex flex-wrap">
                            <div class="overview-current">
                                <img src="https://data.thoitiet.vn/weather/icons/03n@2x.png" alt="mây cụm">
                                <span class="current-temperature">${provinceWeather.temperature}°</span>
                                <div class="unit-group">
                                    <p>C</p>
                                    <p href="#" title="Thay đổi đơn vị" class="btn-unit-switcher">
                                        <span>F</span>
                                    </p>
                                </div>
                            </div>
                            <div class="overview-caption ml-3">
                                <p class="overview-caption-item overview-caption-item-detail">${provinceWeather.status}</p>
                                <p class="overview-caption-item overview-caption-summary-detail">Cảm giác
                                    như ${provinceWeather.highTemp}°.</p>
                            </div>
                        </div>
                        <div class="d-flex flex-wrap justify-content-between weather-detail mt-2">
                            <div class="d-flex">
                                <div class="avatar">
                                    <div class="avatar-img rounded-circle">
                                        <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
                                             set="current-conditions" name="temp" theme="dark" data-testid="Icon"
                                             aria-hidden="true" role="img" viewBox="0 0 24 24">
                                            <title>Temperature</title>
                                            <path d="M10.333 15.48v.321c.971.357 1.667 1.322 1.667 2.456 0 1.438-1.12 2.604-2.5 2.604S7 19.695 7 18.257c0-1.134.696-2.099 1.667-2.456v-.322a2.084 2.084 0 0 1-1.25-1.91V5.583a2.083 2.083 0 1 1 4.166 0v7.986c0 .855-.514 1.589-1.25 1.91zM15.8 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1 pt-1 ml-2">
                                    <span class="fw-bold mb-1">Thấp/Cao</span>
                                    <div class="d-flex ml-auto align-items-center">
                                        <span class="text-white op-8 fw-bold">${provinceWeather.lowTemp}°/${provinceWeather.highTemp}°</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="avatar">
                                    <div class="avatar-img rounded-circle">
                <span class="weather-icon">
                    <i class="bi bi-droplet"></i>
                </span>
                                    </div>
                                </div>
                                <div class="flex-1 pt-1 ml-2">
                                    <span class="fw-bold mb-1">Độ ẩm</span>
                                    <div class="d-flex ml-auto align-items-center">
                                        <span class="text-white op-8 fw-bold">${provinceWeather.humidity}%</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="avatar">
                                    <div class="avatar-img rounded-circle">
                                        <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
                                             set="current-conditions" name="visibility" theme="dark" data-testid="Icon"
                                             aria-hidden="true" role="img" width="1024" height="1024"
                                             viewBox="0 0 1024 1024"><title>Visibility</title>
                                            <path d="M491.856 879.808c-60.48-5.056-110.848-25.184-171.328-55.424-120.96-55.424-216.704-146.112-292.256-256.96-25.248-40.352-30.24-80.64 0-126.016 80.608-115.872 186.464-211.68 317.472-272.096 110.816-50.4 226.752-50.4 337.664 0 136 60.48 241.824 156.224 317.44 282.208 15.104 25.216 25.12 65.504 10.048 85.728-105.792 191.424-256.992 367.84-519.04 342.56zm292.256-377.92c0-151.168-120.96-272.064-272.096-272.064-146.144 0-272.128 126.016-272.128 272.064 0 151.232 120.96 277.216 272.128 277.216 151.104-.032 272.096-125.984 272.096-277.216z"></path>
                                            <path d="M789.808 500.416c0 156.896-125.472 287.52-282.336 282.336-156.864 0-282.336-130.656-282.336-287.488 0-146.4 130.656-277.12 282.336-277.12 156.896-.032 287.584 125.376 282.336 282.272zM512.752 348.832c-83.68 0-151.584 67.968-151.584 151.584 0 88.864 67.968 156.896 151.584 156.896 83.648 0 156.832-73.216 156.832-156.896-5.184-83.648-73.152-151.584-156.832-151.584z"></path>
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1 pt-1 ml-2">
                                    <span class="fw-bold mb-1">Tầm nhìn</span>
                                    <div class="d-flex ml-auto align-items-center">
                                        <span class="text-white op-8 fw-bold">${provinceWeather.visibility} km</span>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex">
                                <div class="avatar">
                                    <div class="avatar-img rounded-circle">
                                        <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
                                             set="current-conditions" name="wind" theme="dark" data-testid="Icon"
                                             aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Wind</title>
                                            <path d="M6 8.67h5.354c1.457 0 2.234-1.158 2.234-2.222S12.687 4.4 11.354 4.4c-.564 0-1.023.208-1.366.488M3 11.67h15.54c1.457 0 2.235-1.158 2.235-2.222S19.873 7.4 18.54 7.4c-.747 0-1.311.365-1.663.78M6 15.4h9.389c1.457 0 2.234 1.159 2.234 2.223 0 1.064-.901 2.048-2.234 2.048a2.153 2.153 0 0 1-1.63-.742"
                                                  stroke-width="2" stroke="currentColor" stroke-linecap="round"
                                                  fill="none"></path>
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1 pt-1 ml-2">
                                    <span class="fw-bold mb-1">Gió</span>
                                    <div class="d-flex ml-auto align-items-center">
                                        <span class="text-white op-8 fw-bold">${provinceWeather.wind} km/giờ</span>
                                    </div>
                                </div>
                            </div>
                            <%--                            <div class="d-flex">--%>
                            <%--                                <div class="avatar">--%>
                            <%--                                    <div class="avatar-img rounded-circle">--%>
                            <%--                                        <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"--%>
                            <%--                                             set="current-conditions" name="dewpoint" theme="dark" data-testid="Icon"--%>
                            <%--                                             aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Dew Point</title>--%>
                            <%--                                            <path d="M17 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>--%>
                            <%--                                            <path fill-rule="evenodd"--%>
                            <%--                                                  d="M9.743 18.912a4.182 4.182 0 0 1-2.928-1.182 3.972 3.972 0 0 1-.614-4.962.743.743 0 0 1 .646-.349c.234 0 .476.095.66.275l4.467 4.355c.385.376.39.998-.076 1.275a4.216 4.216 0 0 1-2.155.588M9.855 5c.316 0 .61.14.828.395.171.2.36.416.562.647 1.857 2.126 4.965 5.684 4.965 8.73 0 3.416-2.85 6.195-6.353 6.195-3.505 0-6.357-2.78-6.357-6.195 0-3.082 2.921-6.406 4.854-8.605.242-.275.47-.535.673-.772C9.245 5.14 9.54 5 9.855 5"></path>--%>
                            <%--                                        </svg>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                                <div class="flex-1 pt-1 ml-2">--%>
                            <%--                                    <span class="fw-bold mb-1">Điểm ngưng</span>--%>
                            <%--                                    <div class="d-flex ml-auto align-items-center">--%>
                            <%--                                        <span class="text-white op-8 fw-bold">17 °C</span>--%>
                            <%--                                    </div>--%>
                            <%--                                </div>--%>
                            <%--                            </div>--%>
                            <div class="d-flex">
                                <div class="avatar">
                                    <div class="avatar-img rounded-circle">
                                        <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8"
                                             set="current-conditions" name="uv" theme="dark" data-testid="Icon"
                                             aria-hidden="true" role="img" viewBox="0 0 24 24"><title>UV Level</title>
                                            <path d="M7.4 5.598a.784.784 0 0 1 .25-.92c.335-.256.824-.197 1.02.062.066.063.066.063.08.085l2.406 3.152-.626.238a3.983 3.983 0 0 0-1.097.633l-.522.424L7.4 5.598zm4.539 2.358c-.21 0-.418.017-.625.05l-.664.106.09-.666.438-3.266c.013-.072.013-.072.012-.057a.783.783 0 0 1 .666-.616.78.78 0 0 1 .872.639l.006.038.507 3.933-.662-.108a3.957 3.957 0 0 0-.64-.053zm-7.781 3.19l.026-.004 3.934-.507-.108.662a3.98 3.98 0 0 0-.003 1.266l.105.664-.665-.09-3.265-.439a.784.784 0 0 1-.676-.679c-.054-.42.238-.809.63-.869l.022-.004zm11.504-.617a3.98 3.98 0 0 0-.632-1.097l-.425-.522.623-.256 3.056-1.256a.787.787 0 0 1 .916.253c.256.337.199.817-.104 1.063l-.045.037-3.151 2.405-.238-.627zm-1.205-1.672a3.984 3.984 0 0 0-1.095-.637l-.626-.24.41-.532 2.008-2.602c.059-.07.059-.07.046-.052a.78.78 0 0 1 1.306.227c.076.185.079.39.02.54l-.021.06-1.528 3.662-.52-.426zM4.595 7.793c.162-.387.611-.58.971-.441.017.004.017.004.055.02L9.283 8.9l-.425.52a3.985 3.985 0 0 0-.636 1.094l-.24.627-3.144-2.425a.784.784 0 0 1-.243-.924zm14.443 7.367c.054.045.054.045.044.04a.784.784 0 0 1 .199.884c-.163.386-.61.58-.964.443-.024-.006-.024-.006-.062-.022l-3.662-1.529.426-.52a3.98 3.98 0 0 0 .636-1.094l.241-.626 3.142 2.424zm1.332-3.303c.053.422-.239.809-.63.87l-.035.006-3.945.508.108-.662a3.999 3.999 0 0 0 .003-1.266l-.105-.663.665.09 3.272.44c.068.012.068.012.052.01a.784.784 0 0 1 .615.667zm-3.894 6.421c.024.068.024.068.017.053a.786.786 0 0 1-.27.87c-.332.25-.816.194-1.047-.091-.022-.023-.022-.023-.05-.058l-2.406-3.154.626-.237a3.977 3.977 0 0 0 1.097-.632l.523-.425 1.51 3.674zm-8.26-4.932c.151.397.365.767.633 1.097l.424.522-.622.256-3.054 1.255a.787.787 0 0 1-.92-.25.781.781 0 0 1-.154-.58c.027-.199.127-.379.227-.452.045-.046.045-.046.075-.069l3.153-2.406.238.627zm3.723 2.572c.209 0 .417-.016.625-.049l.662-.103-.089.664-.438 3.26-.012.062a.785.785 0 0 1-.666.618c-.048.005-.048.005-.101.006-.386 0-.714-.28-.764-.612-.01-.043-.01-.043-.014-.072l-.507-3.934.662.108c.213.035.427.052.642.052zM7.366 18.27l.006-.015L8.9 14.592l.52.426a3.99 3.99 0 0 0 1.094.636l.626.241-.41.531-2.012 2.609-.04.046a.788.788 0 0 1-.886.2.787.787 0 0 1-.428-1.011z"></path>
                                            <path d="M11.911 14.322a2.411 2.411 0 1 0 0-4.822 2.411 2.411 0 0 0 0 4.822zm0 2a4.411 4.411 0 1 1 0-8.822 4.411 4.411 0 0 1 0 8.822z"></path>
                                        </svg>
                                    </div>
                                </div>
                                <div class="flex-1 pt-1 ml-2">
                                    <span class="fw-bold mb-1">Chỉ số UV</span>
                                    <div class="d-flex ml-auto align-items-center">
                                        <span class="text-white op-8 fw-bold">${provinceWeather.uv}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- thoitiet-ngangchitietthoitiet -->
                    <div class="google-ads-container mt-2">
                        <!-- chitiettt -->
                        <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-5437093769370767"
                             data-ad-slot="4378635342" data-ad-format="auto" data-full-width-responsive="true"></ins>
                        <script>
                            (adsbygoogle = window.adsbygoogle || []).push({});
                        </script>
                    </div>
                    <div class="current-location">
                        <div class="d-flex justify-content-between pt-1 air-container">
                            <h2 class="air-title">
                                Chất lượng không khí: ${provinceWeather.air}
                            </h2>

                            <div class="air-rules">
                                <p class="air-api air-api-1 " title=""
                                   data-original-title="Chất lượng không khí đạt tiêu chuẩn, và ô nhiễm không khí coi như không hoặc gây rất ít nguy hiểm">
                                    Tốt
                                </p>
                                <p class="air-api air-api-2 " title=""
                                   data-original-title="Chất lượng không khí ở mức chấp nhận được. Tuy nhiên, một số chất gây ô nhiễm có thể ảnh hưởng tới sức khỏe của một số ít những người nhạy cảm với không khí bị ô nhiễm">
                                    Khá
                                </p>
                                <p class="air-api air-api-3 " title=""
                                   data-original-title="Không tốt cho người nhạy cảm. Nhóm người nhạy cảm có thể chịu ảnh hưởng sức khỏe. Số đông không có nguy cơ bị tác động.">
                                    Trung bình
                                </p>
                                <p class="air-api air-api-4 " title=""
                                   data-original-title="Có hại cho sức khỏe với đa số người. Mỗi người đều có thể sẽ chịu tác động đến sức khỏe. Nhóm người nhạy cảm có thể bị ảnh hưởng nghiêm trọng hơn.">
                                    Kém
                                </p>
                                <p class="air-api air-api-5 " title=""
                                   data-original-title="Rất có hại cho sức khỏe. Cảnh báo nguy hại sức khỏe nghiêm trọng. Đa số mọi người đều bị ảnh hưởng.">
                                    Rất kém
                                </p>
                            </div>
                        </div>

                    </div>

                    <div class="location-data">
                        <div class="location-data-summary">
                            <div class="current-location hourly-tab">
                                <div class="weather-feature d-flex flex-wrap justify-content-between align-items-center mt-2 mb-2">
                                    <h2>
                                        Thời tiết ${provinceWeather.province} theo giờ (24h)
                                    </h2>
                                    <p id="hidden-text-id" style="display:none;">${provinceWeather.id}</p>
                                    <p id="hidden-text-path" style="display:none;">http://localhost:8080/2022_T4_Nhom8_war_exploded/ProvinceDetail</p>
                                    <%--                                    <a href="https://thoitiet.vn/ha-giang/theo-gio" class="weather-feature-day-btn">--%>
                                    <%--                                        Thời tiết 24h--%>
                                    <%--                                    </a>--%>
                                    <div class="dropdown">
                                        <button class="btn bg-white dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                            <span class="dropdown-date-show">${requestScope.showDate}</span>
                                        </button>
                                        <div id="sandbox-container" class="dropdown-menu" aria-labelledby="dropdownMenuButton" style=" width: 210px;">
                                            <div></div>
                                        </div>
                                    </div>


                                </div>
                                <div id="carousel-hourly" class="carousel slide" data-ride="carousel"
                                     data-interval="9000" data-touch="true">
                                    <div class="carousel-inner row w-100 mx-auto" role="listbox">
                                        <jsp:useBean id="weatherListInDay" scope="request" type="java.util.List"/>
                                        <c:forEach items="${weatherListInDay}" var="item" varStatus="loop">

                                            <div class="carousel-item col-md-3
                                            <c:if test="${loop.index==0}">
                                                active
                                            </c:if>
"
                                            >
                                                <div class="location-wheather">
                                                    <div class="card">
                                                        <h3 class="card-city-title">
                                                            <span>${item.time}</span>

                                                        </h3>
                                                        <div class="card-city-body">

                                                            <div class="precipitation" title="Lượng mưa">
                                                                <i class="bi bi-droplet"></i>
                                                                    ${item.humidity} %
                                                            </div>
                                                        </div>
                                                        <p class="mb-0">
                                                                ${item.status}
                                                        </p>
                                                        <div class="card-city-footer">
                                                            <p title="Nhiệt độ trung bình">${item.temperature} °C</p>
                                                            <p>/</p>
                                                            <p title="Cảm giác như">${item.highTemp} °C</p>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>
                                        </c:forEach>

                                    </div>
                                    <span class="carousel-control-prev" href="#carousel-hourly" role="button"
                                          data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </span>
                                    <span class="carousel-control-next" href="#carousel-hourly" role="button"
                                          data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>

    </span>
                                </div>
                            </div>
                            <!-- thoitiet-ngangchitietthoitiet -->

                            <div class="current-location weather-feature">
                                <h2>
                                    Nhiệt độ và khả năng có mưa ${provinceWeather.province} trong 12h tới
                                </h2>
                                <div class="chart-container1 bg-white">
                                    <div  id="chart-container"
                                            style="height: 358.4px; width: 717.6px;"></div>
                                </div>

                            </div>


                        </div>
                    </div>

                </div>
                <!--Quảng cáo-->
                <div class="col-12 col-md-4">
                    <div class="row">
<c:forEach items="${randomProvinces}" var="item" varStatus="loop">
                        <div class="col-6 col-md-6">
                            <article class="forecast">

                                <div class="location-wheather">
                                    <div class="card mb-3">
                                        <a href="https://thoitiet.vn/ha-giang">
                                            <h3 class="card-city-title">${item.province}</h3>
                                            <div class="card-city-body">
                                                <img src="https://data.thoitiet.vn/weather/icons/03n@2x.png" alt="${item.province}" title="Clear">

                                                <div class="precipitation" title="Lượng mưa">
                                                    <i class="fa-solid fa-droplet"></i>
                                                    ${item.humidity} %
                                                </div>
                                            </div>
                                            <p class="mb-0">
                                               ${item.status}
                                            </p>
                                            <div class="card-city-footer">
                                                <p> ${item.temperature}°C/${item.highTemp}°C</p>
                                            </div>

                                        </a>
                                    </div>
                                </div>

                            </article>
                        </div>
</c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main>
<footer>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-8">
                <div class="footer-items footer-items-left">
                    <span>© 2021 Kênh thông tin dự báo Thời tiết</span>


                </div>
            </div>

        </div>
    </div>
</footer>


<!-- jQuery-V1.12.4 -->
<script src="js/vendor/jquery-1.12.4.min.js"></script>
<!-- Popper js -->
<script src="js/vendor/popper.min.js"></script>
<!-- Bootstrap V4.1.3 Fremwork js -->
<script src="js/bootstrap.min.js"></script>
<!-- Ajax Mail js -->
<script src="js/ajax-mail.js"></script>
<!-- Meanmenu js -->
<script src="js/jquery.meanmenu.min.js"></script>
<!-- Wow.min js -->
<script src="js/wow.min.js"></script>
<!-- Slick Carousel js -->
<script src="js/slick.min.js"></script>
<!-- Owl Carousel-2 js -->
<script src="js/owl.carousel.min.js"></script>
<!-- Magnific popup js -->

<script src="js/jquery.magnific-popup.min.js"></script>
<!-- Isotope js -->
<script src="js/isotope.pkgd.min.js"></script>
<!-- Imagesloaded js -->
<script src="js/imagesloaded.pkgd.min.js"></script>
<!-- Mixitup js -->
<script src="js/jquery.mixitup.min.js"></script>
<!-- Countdown -->
<script src="js/jquery.countdown.min.js"></script>
<!-- Counterup -->
<script src="js/jquery.counterup.min.js"></script>
<!-- Waypoints -->
<script src="js/waypoints.min.js"></script>
<!-- Barrating -->
<script src="js/jquery.barrating.min.js"></script>
<!-- Jquery-ui -->
<script src="js/jquery-ui.min.js"></script>
<!-- Venobox -->
<script src="js/venobox.min.js"></script>
<!-- Nice Select js -->
<script src="js/jquery.nice-select.min.js"></script>
<!-- ScrollUp js -->
<script src="js/scrollUp.min.js"></script>
<script src="js/bootstrap-datepicker.min.js"></script>
<script src="js/bootstrap-datepicker.vi.min.js"></script>
<!-- Main/Activator js -->
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<script src="./js/site.js.download"></script>
<script src="./js/geo.js.download"></script>


<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
<script >

        var chart = new CanvasJS.Chart("chart-container", {
            theme: "light2",
            title: {
                text: "Nhiệt độ trung bình trong 7 ngày qua."


            },
            axisX: {
                title: "Ngày"
            },
            axisY: {
                title: "Nhiệt độ °C",
                includeZero: true
            },
            data: [{
                type: "line",
                yValueFormatString: "#,##0mn °C",
                dataPoints : <%=request.getAttribute("listTempChart")%>
            }]
        });
        chart.render();

</script>

<style>
    @media (max-width: 786px) {
        .container {
            padding-left: 0;
            padding-right: 0;
            overflow: hidden;
        }
    }
</style>



<!-- Global site tag (gtag.js) - Google Analytics -->
<script async=""
        src="./Dự báo thời tiết ${provinceWeather.province} hôm nay, ngày mai và 10 ngày tới_files/js(1)"></script>
<script>
    window.dataLayer = window.dataLayer || [];
    function gtag() {
        dataLayer.push(arguments);
    }
    gtag('js', new Date());
    gtag('config', 'G-KVHV391KVM');
</script>

</body>
</html>

