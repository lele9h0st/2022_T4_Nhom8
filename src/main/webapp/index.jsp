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
<jsp:useBean id="dong_bac_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="tay_bac_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="db_songhong" scope="request" type="java.util.List"/>
<jsp:useBean id="bac_trung_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="nam_trung_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="tay_nguyen" scope="request" type="java.util.List"/>
<jsp:useBean id="dong_nam_bo" scope="request" type="java.util.List"/>
<jsp:useBean id="db_songcuulong" scope="request" type="java.util.List"/>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ThoiTiet</title>

    <meta name="robots" content="index, follow">
    <meta name="robots" content="max-image-preview:large">
    <link rel="manifest" href="https://thoitiet.vn/icons/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/icons/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <link rel="preconnect" href="https://fonts.gstatic.com/">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css"
          integrity="sha512-xh6O/CkQoPOWDdYTDqeRdPCVd1SpvCA9XXcUnZS2FmJNp1coAFzvtCN9BmamE+4aHK8yyUHUSCcJHgXloTyT2A=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="./css/theme.css">
    <link href="./css/card.css" rel="stylesheet">

    <link rel="stylesheet" href="./css/site.css">
    <link href="./css/bootstrap.min.css" rel="stylesheet">


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
    <div class="container" style="position:relative;color:black">
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
<div id="weather_container">

    <div class="title_weather">
        <h3>DỰ BÁO THỜI TIẾT CÁC TỈNH/THÀNH PHỐ</h3>
    </div>
    <div class="weather_wrap">
        <c:forEach items="${provinceList}" var="item">
            <a href="${pageContext.request.contextPath}/ProvinceDetail?pid=${item.id}">
                <div class="weather_box">
                    <h3>${item.province}</h3>
                    <img src="https://data.thoitiet.vn/weather/icons/03n@2x.png">
                    <p>${item.status}</p>
                    <p> ${item.temperature}°C/${item.highTemp}°C</p>
                </div>
            </a>
        </c:forEach>
    </div>
</div>

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
<!-- Main/Activator js -->
<script src="js/main.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
        crossorigin="anonymous"></script>
<script src="./js/site.js.download"></script>
<script src="./js/geo.js.download"></script>


</body>
</html>