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
                    <div class="header-location">
                        <span>
                            <i class="bi bi-geo-alt"></i>
                            Thành phố của bạn:
                        </span>
                        <a class="btn btn-link" href="https://thoitiet.vn/ha-noi">
                            Hà Nội
                        </a>
                        <span class="btn btn-link btn-sm text-muted" onclick="changeLocation()">
                            <i class="bi bi-arrow-repeat"></i>
                            Thay đổi
                        </span>
                    </div>
                </div>
                <div class="col-12 col-md-4 order-3 order-md-2">

                </div>
                <div class="col-6 col-md-4 order-2">
                    <div class="header-timer text-right">
                        <span>
                            <i class="bi bi-clock"></i>
                            Giờ địa phương:
                        </span>
                        <span class="btn btn-link" id="timer">16:13 | 06/11/2022</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<nav class="navbar sticky-top navbar-expand-md pb-1 bg-white navbar-light">
    <div class="container" style="position:relative;color:black">
        <a class="navbar-brand logo" href="https://thoitiet.vn/">
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
                           class="form-control basicModalAutoSelect search-input"><input type="hidden"
                                                                                         name="simple_select">
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
                                        <li>
                                            <a href="https://thoitiet.vn/cao-bang" title="Cao Bằng">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Cao Bằng
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/bac-kan" title="Bắc Kạn">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bắc Kạn
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/tuyen-quang" title="Tuyên Quang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Tuyên Quang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/thai-nguyen" title="Thái Nguyên">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Thái Nguyên
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/lang-son" title="Lạng Sơn">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Lạng Sơn
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/quang-ninh" title="Quảng Ninh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Quảng Ninh
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/bac-giang" title="Bắc Giang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bắc Giang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/phu-tho" title="Phú Thọ">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Phú Thọ
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Tây Bắc Bộ</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/lao-cai" title="Lào Cai">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Lào Cai
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/dien-bien" title="Điện Biên">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Điện Biên
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/lai-chau" title="Lai Châu">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Lai Châu
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/son-la" title="Sơn La">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Sơn La
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/yen-bai" title="Yên Bái">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Yên Bái
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/hoa-binh" title="Hoà Bình">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hoà Bình
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đồng bằng sông Hồng</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/ha-noi" title="Hà Nội">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hà Nội
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/vinh-phuc" title="Vĩnh Phúc">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Vĩnh Phúc
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/bac-ninh" title="Bắc Ninh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bắc Ninh
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/hai-duong" title="Hải Dương">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hải Dương
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/hai-phong" title="Hải Phòng">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hải Phòng
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/hung-yen" title="Hưng Yên">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hưng Yên
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/thai-binh" title="Thái Bình">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Thái Bình
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ha-nam" title="Hà Nam">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hà Nam
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/nam-dinh" title="Nam Định">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Nam Định
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ninh-binh" title="Ninh Bình">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Ninh Bình
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Bắc Trung Bộ</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/thanh-hoa" title="Thanh Hóa">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Thanh Hóa
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/nghe-an" title="Nghệ An">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Nghệ An
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ha-tinh" title="Hà Tĩnh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hà Tĩnh
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/quang-binh" title="Quảng Bình">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Quảng Bình
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/quang-tri" title="Quảng Trị">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Quảng Trị
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/thua-thien-hue" title="Thừa Thiên Huế">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Thừa Thiên Huế
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Nam Trung Bộ</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/da-nang" title="Đà Nẵng">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Đà Nẵng
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/quang-nam" title="Quảng Nam">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Quảng Nam
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/quang-ngai" title="Quảng Ngãi">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Quảng Ngãi
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/binh-dinh" title="Bình Định">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bình Định
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/phu-yen" title="Phú Yên">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Phú Yên
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/khanh-hoa" title="Khánh Hòa">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Khánh Hòa
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ninh-thuan" title="Ninh Thuận">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Ninh Thuận
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/binh-thuan" title="Bình Thuận">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bình Thuận
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Tây Nguyên</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/kon-tum" title="Kon Tum">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Kon Tum
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/gia-lai" title="Gia Lai">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Gia Lai
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/dak-lak" title="Đắk Lắk">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Đắk Lắk
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/dak-nong" title="Đắk Nông">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Đắk Nông
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/lam-dong" title="Lâm Đồng">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Lâm Đồng
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đông Nam Bộ</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/binh-phuoc" title="Bình Phước">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bình Phước
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/tay-ninh" title="Tây Ninh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Tây Ninh
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/binh-duong" title="Bình Dương">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bình Dương
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/dong-nai" title="Đồng Nai">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Đồng Nai
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ba-ria-vung-tau" title="Bà Rịa - Vũng Tàu">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bà Rịa - Vũng Tàu
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ho-chi-minh" title="Hồ Chí Minh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hồ Chí Minh
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                            <div class="col-6 col-md-3">
                                <div class="col-megamenu">
                                    <h6 class="title">Đồng bằng sông Cửu Long</h6>
                                    <ul class="mega-submenu">
                                        <li>
                                            <a href="https://thoitiet.vn/long-an" title="Long An">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Long An
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/tien-giang" title="Tiền Giang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Tiền Giang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ben-tre" title="Bến Tre">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bến Tre
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/tra-vinh" title="Trà Vinh">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Trà Vinh
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/vinh-long" title="Vĩnh Long">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Vĩnh Long
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/dong-thap" title="Đồng Tháp">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Đồng Tháp
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/an-giang" title="An Giang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                An Giang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/kien-giang" title="Kiên Giang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Kiên Giang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/can-tho" title="Cần Thơ">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Cần Thơ
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/hau-giang" title="Hậu Giang">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Hậu Giang
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/soc-trang" title="Sóc Trăng">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Sóc Trăng
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/bac-lieu" title="Bạc Liêu">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Bạc Liêu
                                            </a>
                                        </li>
                                        <li>
                                            <a href="https://thoitiet.vn/ca-mau" title="Cà Mau">
                                                <i class="fa-solid fa-arrow-right"></i>
                                                Cà Mau
                                            </a>
                                        </li>
                                    </ul>
                                </div>  <!-- col-megamenu.// -->
                            </div><!-- end col-3 -->
                        </div><!-- end row -->
                    </div> <!-- dropdown-mega-menu.// -->
                </li>
                <li class="nav-item">
                    <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/dia-danh">
                        <i class="fa-solid fa-cloud-sun"></i>
                        Địa danh
                    </a>
                </li>
                <li class="nav-item">
                    <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/nui">
                        <i class="fa-solid fa-mountain-sun"></i>
                        Núi
                    </a>
                </li>
                <li class="nav-item">
                    <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/bien">
                        <i class="fa-solid fa-water"></i>
                        Biển
                    </a>
                </li>
                <li class="nav-item">
                    <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/tin-tong-hop/kham-pha">
                        <i class="fa-regular fa-flower"></i>
                        Khám phá
                    </a>
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
                <p>20/20</p>
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