<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<!-- saved from url=(0028)https://thoitiet.vn/ha-giang -->
<html lang="vi"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới</title>
  <meta name="description" content="Cập nhật dự báo thời tiết Hà Giang hôm nay và ngày mai chính xác nhất. Dự báo khả năng có mưa, lượng mưa, thời tiết cực đoan và nhiệt độ ở Hà Giang">
  <meta name="keywords" content="Dự báo thời tiết,thời tiết Tỉnh Hà Giang,thời tiết hôm nay,thời tiết ngày mai,thời tiết 3 ngày tới">
  <meta name="robots" content="index, follow">
  <meta name="robots" content="max-image-preview:large">
  <link rel="manifest" href="https://thoitiet.vn/icons/manifest.json">
  <meta name="msapplication-TileColor" content="#ffffff">
  <meta name="msapplication-TileImage" content="/icons/ms-icon-144x144.png">
  <meta name="theme-color" content="#ffffff">
  <link rel="preconnect" href="https://fonts.gstatic.com/">
  <link href="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/css2" rel="stylesheet">
  <link href="./css/bootstrap.min.css" rel="stylesheet">

  <link href="./css/card.css" rel="stylesheet">

  <link rel="stylesheet" href="./css/site.css">
  <script type="text/javascript" async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/analytics.js.download"></script><script type="text/javascript" async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/js"></script><script async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/f.txt" crossorigin="anonymous"></script>


  <script type="application/ld+json">
    {"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Trang chủ","item":"https://thoitiet.vn"},{"@type":"ListItem","position":2,"name":"Thời tiết Hà Giang","item":"https://thoitiet.vn/ha-giang"}]}

  </script>

</head>
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
  <div class="container" style="position:relative">
    <a class="navbar-brand logo" href="https://thoitiet.vn/">
      <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/logo-header.png" class="img-fluid d-none d-md-block">
      <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/logo-mobile.png" class="img-fluid d-block d-md-none">
    </a>
    <div class="search d-md-none">
      <div class="form-group mb-0 search-group">
        <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off" class="form-control basicModalAutoSelect search-input"><input type="hidden" name="simple_select">
      </div>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <div class="search d-none d-md-block">
        <div class="form-group mb-0 search-group">
          <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off" class="form-control basicModalAutoSelect search-input"><input type="hidden" name="simple_select">
          <span class="search-icon">
                        <i class="bi bi-search"></i>
                    </span>
        </div>
      </div>
      <ul class="navbar-nav ml-auto menu">
        <li class="nav-item dropdown has-megamenu">
                    <span class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor:pointer">
                        <i class="bi bi-clipboard-data"></i>
                        Tỉnh - Thành phố
                    </span>
          <div class="dropdown-menu megamenu rounded-0" role="menu">
            <div class="row">
              <div class="col-6 col-md-3">
                <div class="col-megamenu">
                  <h6 class="title">Đông Bắc Bộ</h6>
                  <ul class="mega-submenu">
                    <li>
                      <a href="https://thoitiet.vn/ha-giang" title="Hà Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/cao-bang" title="Cao Bằng">
                        <i class="bi bi-arrow-right-short"></i>
                        Cao Bằng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-kan" title="Bắc Kạn">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Kạn
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tuyen-quang" title="Tuyên Quang">
                        <i class="bi bi-arrow-right-short"></i>
                        Tuyên Quang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thai-nguyen" title="Thái Nguyên">
                        <i class="bi bi-arrow-right-short"></i>
                        Thái Nguyên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lang-son" title="Lạng Sơn">
                        <i class="bi bi-arrow-right-short"></i>
                        Lạng Sơn
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-ninh" title="Quảng Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-giang" title="Bắc Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/phu-tho" title="Phú Thọ">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Lào Cai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dien-bien" title="Điện Biên">
                        <i class="bi bi-arrow-right-short"></i>
                        Điện Biên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lai-chau" title="Lai Châu">
                        <i class="bi bi-arrow-right-short"></i>
                        Lai Châu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/son-la" title="Sơn La">
                        <i class="bi bi-arrow-right-short"></i>
                        Sơn La
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/yen-bai" title="Yên Bái">
                        <i class="bi bi-arrow-right-short"></i>
                        Yên Bái
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hoa-binh" title="Hoà Bình">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Nội
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/vinh-phuc" title="Vĩnh Phúc">
                        <i class="bi bi-arrow-right-short"></i>
                        Vĩnh Phúc
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-ninh" title="Bắc Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hai-duong" title="Hải Dương">
                        <i class="bi bi-arrow-right-short"></i>
                        Hải Dương
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hai-phong" title="Hải Phòng">
                        <i class="bi bi-arrow-right-short"></i>
                        Hải Phòng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hung-yen" title="Hưng Yên">
                        <i class="bi bi-arrow-right-short"></i>
                        Hưng Yên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thai-binh" title="Thái Bình">
                        <i class="bi bi-arrow-right-short"></i>
                        Thái Bình
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ha-nam" title="Hà Nam">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Nam
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/nam-dinh" title="Nam Định">
                        <i class="bi bi-arrow-right-short"></i>
                        Nam Định
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ninh-binh" title="Ninh Bình">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Thanh Hóa
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/nghe-an" title="Nghệ An">
                        <i class="bi bi-arrow-right-short"></i>
                        Nghệ An
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ha-tinh" title="Hà Tĩnh">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Tĩnh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-binh" title="Quảng Bình">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Bình
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-tri" title="Quảng Trị">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Trị
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thua-thien-hue" title="Thừa Thiên Huế">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Đà Nẵng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-nam" title="Quảng Nam">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Nam
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-ngai" title="Quảng Ngãi">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Ngãi
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-dinh" title="Bình Định">
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Định
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/phu-yen" title="Phú Yên">
                        <i class="bi bi-arrow-right-short"></i>
                        Phú Yên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/khanh-hoa" title="Khánh Hòa">
                        <i class="bi bi-arrow-right-short"></i>
                        Khánh Hòa
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ninh-thuan" title="Ninh Thuận">
                        <i class="bi bi-arrow-right-short"></i>
                        Ninh Thuận
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-thuan" title="Bình Thuận">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Kon Tum
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/gia-lai" title="Gia Lai">
                        <i class="bi bi-arrow-right-short"></i>
                        Gia Lai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dak-lak" title="Đắk Lắk">
                        <i class="bi bi-arrow-right-short"></i>
                        Đắk Lắk
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dak-nong" title="Đắk Nông">
                        <i class="bi bi-arrow-right-short"></i>
                        Đắk Nông
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lam-dong" title="Lâm Đồng">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Phước
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tay-ninh" title="Tây Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Tây Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-duong" title="Bình Dương">
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Dương
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dong-nai" title="Đồng Nai">
                        <i class="bi bi-arrow-right-short"></i>
                        Đồng Nai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ba-ria-vung-tau" title="Bà Rịa - Vũng Tàu">
                        <i class="bi bi-arrow-right-short"></i>
                        Bà Rịa - Vũng Tàu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ho-chi-minh" title="Hồ Chí Minh">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Long An
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tien-giang" title="Tiền Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Tiền Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ben-tre" title="Bến Tre">
                        <i class="bi bi-arrow-right-short"></i>
                        Bến Tre
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tra-vinh" title="Trà Vinh">
                        <i class="bi bi-arrow-right-short"></i>
                        Trà Vinh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/vinh-long" title="Vĩnh Long">
                        <i class="bi bi-arrow-right-short"></i>
                        Vĩnh Long
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dong-thap" title="Đồng Tháp">
                        <i class="bi bi-arrow-right-short"></i>
                        Đồng Tháp
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/an-giang" title="An Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        An Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/kien-giang" title="Kiên Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Kiên Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/can-tho" title="Cần Thơ">
                        <i class="bi bi-arrow-right-short"></i>
                        Cần Thơ
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hau-giang" title="Hậu Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Hậu Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/soc-trang" title="Sóc Trăng">
                        <i class="bi bi-arrow-right-short"></i>
                        Sóc Trăng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-lieu" title="Bạc Liêu">
                        <i class="bi bi-arrow-right-short"></i>
                        Bạc Liêu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ca-mau" title="Cà Mau">
                        <i class="bi bi-arrow-right-short"></i>
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
            <i class="bi bi-cloud-sun"></i>
            Địa danh
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/nui">
            <i class="bi bi-geo-fill"></i>
            Núi
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/bien">
            <i class="bi bi-droplet"></i>
            Biển
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/tin-tong-hop/kham-pha">
            <i class="bi bi-flower2"></i>
            Khám phá
          </a>
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
            <ol class="breadcrumb mb-0">
              <li class="breadcrumb-item"><a href="https://thoitiet.vn/">Trang chủ</a></li>
              <li class="breadcrumb-item active" aria-current="page">Thời tiết Hà Giang</li>
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
                    Dự báo thời tiết Hà Giang
                  </a>
                </h1>
                <a href="https://thoitiet.vn/ha-giang#" rel="nofollow" title="Chọn làm địa chỉ mặc định" class="btn-current-location" data-lat="22.7933" data-lng="105.01241">
                  <i class="bi bi-house-door"></i>
                </a>
              </div>
              <div class="share-button">
                <div class="fb-like" data-href="https://thoitiet.vn/ha-giang" data-width="" data-layout="button" data-action="like" data-size="small" data-share="true"></div>
              </div>

            </div>
            <div class="location-auto-refresh">
              <span>Đã cập nhật 6 phút trước</span>
            </div>

            <div class="d-flex flex-wrap">
              <div class="overview-current">
                <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/04d@2x.png" alt="Mây cụm">
                <span class="current-temperature">25°</span>
                <div class="unit-group">
                  <p>C</p>
                  <p href="#" title="Thay đổi đơn vị" class="btn-unit-switcher">
                    <span>F</span>
                  </p>
                </div>
              </div>
              <div class="overview-caption ml-3">
                <p class="overview-caption-item overview-caption-item-detail">Mây cụm</p>
                <p class="overview-caption-item overview-caption-summary-detail">Cảm giác như 26°.</p>
              </div>
            </div>
            <div class="d-flex flex-wrap justify-content-between weather-detail mt-2">
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="temp" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24">
                      <title>Temperature</title>
                      <path d="M10.333 15.48v.321c.971.357 1.667 1.322 1.667 2.456 0 1.438-1.12 2.604-2.5 2.604S7 19.695 7 18.257c0-1.134.696-2.099 1.667-2.456v-.322a2.084 2.084 0 0 1-1.25-1.91V5.583a2.083 2.083 0 1 1 4.166 0v7.986c0 .855-.514 1.589-1.25 1.91zM15.8 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                    </svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Thấp/Cao</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">16°/28°</span>
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
                    <span class="text-white op-8 fw-bold">61%</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="visibility" theme="dark" data-testid="Icon" aria-hidden="true" role="img" width="1024" height="1024" viewBox="0 0 1024 1024"><title>Visibility</title><path d="M491.856 879.808c-60.48-5.056-110.848-25.184-171.328-55.424-120.96-55.424-216.704-146.112-292.256-256.96-25.248-40.352-30.24-80.64 0-126.016 80.608-115.872 186.464-211.68 317.472-272.096 110.816-50.4 226.752-50.4 337.664 0 136 60.48 241.824 156.224 317.44 282.208 15.104 25.216 25.12 65.504 10.048 85.728-105.792 191.424-256.992 367.84-519.04 342.56zm292.256-377.92c0-151.168-120.96-272.064-272.096-272.064-146.144 0-272.128 126.016-272.128 272.064 0 151.232 120.96 277.216 272.128 277.216 151.104-.032 272.096-125.984 272.096-277.216z"></path><path d="M789.808 500.416c0 156.896-125.472 287.52-282.336 282.336-156.864 0-282.336-130.656-282.336-287.488 0-146.4 130.656-277.12 282.336-277.12 156.896-.032 287.584 125.376 282.336 282.272zM512.752 348.832c-83.68 0-151.584 67.968-151.584 151.584 0 88.864 67.968 156.896 151.584 156.896 83.648 0 156.832-73.216 156.832-156.896-5.184-83.648-73.152-151.584-156.832-151.584z"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Tầm nhìn</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">10 km</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="wind" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Wind</title><path d="M6 8.67h5.354c1.457 0 2.234-1.158 2.234-2.222S12.687 4.4 11.354 4.4c-.564 0-1.023.208-1.366.488M3 11.67h15.54c1.457 0 2.235-1.158 2.235-2.222S19.873 7.4 18.54 7.4c-.747 0-1.311.365-1.663.78M6 15.4h9.389c1.457 0 2.234 1.159 2.234 2.223 0 1.064-.901 2.048-2.234 2.048a2.153 2.153 0 0 1-1.63-.742" stroke-width="2" stroke="currentColor" stroke-linecap="round" fill="none"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Gió</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">0.85 km/giờ</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="dewpoint" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Dew Point</title><path d="M17 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path><path fill-rule="evenodd" d="M9.743 18.912a4.182 4.182 0 0 1-2.928-1.182 3.972 3.972 0 0 1-.614-4.962.743.743 0 0 1 .646-.349c.234 0 .476.095.66.275l4.467 4.355c.385.376.39.998-.076 1.275a4.216 4.216 0 0 1-2.155.588M9.855 5c.316 0 .61.14.828.395.171.2.36.416.562.647 1.857 2.126 4.965 5.684 4.965 8.73 0 3.416-2.85 6.195-6.353 6.195-3.505 0-6.357-2.78-6.357-6.195 0-3.082 2.921-6.406 4.854-8.605.242-.275.47-.535.673-.772C9.245 5.14 9.54 5 9.855 5"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Điểm ngưng</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">17 °C</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="uv" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>UV Level</title><path d="M7.4 5.598a.784.784 0 0 1 .25-.92c.335-.256.824-.197 1.02.062.066.063.066.063.08.085l2.406 3.152-.626.238a3.983 3.983 0 0 0-1.097.633l-.522.424L7.4 5.598zm4.539 2.358c-.21 0-.418.017-.625.05l-.664.106.09-.666.438-3.266c.013-.072.013-.072.012-.057a.783.783 0 0 1 .666-.616.78.78 0 0 1 .872.639l.006.038.507 3.933-.662-.108a3.957 3.957 0 0 0-.64-.053zm-7.781 3.19l.026-.004 3.934-.507-.108.662a3.98 3.98 0 0 0-.003 1.266l.105.664-.665-.09-3.265-.439a.784.784 0 0 1-.676-.679c-.054-.42.238-.809.63-.869l.022-.004zm11.504-.617a3.98 3.98 0 0 0-.632-1.097l-.425-.522.623-.256 3.056-1.256a.787.787 0 0 1 .916.253c.256.337.199.817-.104 1.063l-.045.037-3.151 2.405-.238-.627zm-1.205-1.672a3.984 3.984 0 0 0-1.095-.637l-.626-.24.41-.532 2.008-2.602c.059-.07.059-.07.046-.052a.78.78 0 0 1 1.306.227c.076.185.079.39.02.54l-.021.06-1.528 3.662-.52-.426zM4.595 7.793c.162-.387.611-.58.971-.441.017.004.017.004.055.02L9.283 8.9l-.425.52a3.985 3.985 0 0 0-.636 1.094l-.24.627-3.144-2.425a.784.784 0 0 1-.243-.924zm14.443 7.367c.054.045.054.045.044.04a.784.784 0 0 1 .199.884c-.163.386-.61.58-.964.443-.024-.006-.024-.006-.062-.022l-3.662-1.529.426-.52a3.98 3.98 0 0 0 .636-1.094l.241-.626 3.142 2.424zm1.332-3.303c.053.422-.239.809-.63.87l-.035.006-3.945.508.108-.662a3.999 3.999 0 0 0 .003-1.266l-.105-.663.665.09 3.272.44c.068.012.068.012.052.01a.784.784 0 0 1 .615.667zm-3.894 6.421c.024.068.024.068.017.053a.786.786 0 0 1-.27.87c-.332.25-.816.194-1.047-.091-.022-.023-.022-.023-.05-.058l-2.406-3.154.626-.237a3.977 3.977 0 0 0 1.097-.632l.523-.425 1.51 3.674zm-8.26-4.932c.151.397.365.767.633 1.097l.424.522-.622.256-3.054 1.255a.787.787 0 0 1-.92-.25.781.781 0 0 1-.154-.58c.027-.199.127-.379.227-.452.045-.046.045-.046.075-.069l3.153-2.406.238.627zm3.723 2.572c.209 0 .417-.016.625-.049l.662-.103-.089.664-.438 3.26-.012.062a.785.785 0 0 1-.666.618c-.048.005-.048.005-.101.006-.386 0-.714-.28-.764-.612-.01-.043-.01-.043-.014-.072l-.507-3.934.662.108c.213.035.427.052.642.052zM7.366 18.27l.006-.015L8.9 14.592l.52.426a3.99 3.99 0 0 0 1.094.636l.626.241-.41.531-2.012 2.609-.04.046a.788.788 0 0 1-.886.2.787.787 0 0 1-.428-1.011z"></path><path d="M11.911 14.322a2.411 2.411 0 1 0 0-4.822 2.411 2.411 0 0 0 0 4.822zm0 2a4.411 4.411 0 1 1 0-8.822 4.411 4.411 0 0 1 0 8.822z"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Chỉ số UV</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">0.63</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <!-- thoitiet-ngangchitietthoitiet -->
          <div class="google-ads-container mt-2">
            <!-- chitiettt -->
            <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-5437093769370767" data-ad-slot="4378635342" data-ad-format="auto" data-full-width-responsive="true"></ins>
            <script>
              (adsbygoogle = window.adsbygoogle || []).push({});
            </script>
          </div>
          <div class="current-location">
            <div class="d-flex justify-content-between pt-1 air-container">
              <h2 class="air-title">
                Chất lượng không khí: Rất kém
              </h2>

              <div class="air-rules">
                <p class="air-api air-api-1 " title="" data-original-title="Chất lượng không khí đạt tiêu chuẩn, và ô nhiễm không khí coi như không hoặc gây rất ít nguy hiểm">
                  Tốt
                </p>
                <p class="air-api air-api-2 " title="" data-original-title="Chất lượng không khí ở mức chấp nhận được. Tuy nhiên, một số chất gây ô nhiễm có thể ảnh hưởng tới sức khỏe của một số ít những người nhạy cảm với không khí bị ô nhiễm">
                  Khá
                </p>
                <p class="air-api air-api-3 " title="" data-original-title="Không tốt cho người nhạy cảm. Nhóm người nhạy cảm có thể chịu ảnh hưởng sức khỏe. Số đông không có nguy cơ bị tác động.">
                  Trung bình
                </p>
                <p class="air-api air-api-4 " title="" data-original-title="Có hại cho sức khỏe với đa số người. Mỗi người đều có thể sẽ chịu tác động đến sức khỏe. Nhóm người nhạy cảm có thể bị ảnh hưởng nghiêm trọng hơn.">
                  Kém
                </p>
                <p class="air-api air-api-5 air-active" title="" data-original-title="Rất có hại cho sức khỏe. Cảnh báo nguy hại sức khỏe nghiêm trọng. Đa số mọi người đều bị ảnh hưởng.">
                  Rất kém
                </p>
              </div>
            </div>

          </div>

          <div class="location-data">
            <div class="location-data-summary">
              <div class="current-location">
                <div class="weather-feature d-flex flex-wrap justify-content-between align-items-center mt-2 mb-2">
                  <h2>
                    Thời tiết Hà Giang theo giờ (24h)
                  </h2>
                  <a href="https://thoitiet.vn/ha-giang/theo-gio" class="weather-feature-day-btn">
                    Thời tiết 24h
                  </a>
                </div>
                <div id="carousel-hourly" class="carousel slide" data-ride="carousel" data-interval="9000" data-touch="true">
                  <div class="carousel-inner row w-100 mx-auto" role="listbox">
                    <div class="carousel-item col-md-3">
                      <div class="location-wheather">
                        <div class="card">
                          <h3 class="card-city-title">
                            <span>Hiện tại</span>

                          </h3>
                          <div class="card-city-body">
                            <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/04d@2x.png" title="Mây cụm">
                            <div class="precipitation" title="Lượng mưa">
                              <i class="bi bi-droplet"></i>
                              61 %
                            </div>
                          </div>
                          <p class="mb-0">
                            Mây cụm
                          </p>
                          <div class="card-city-footer">
                            <p title="Nhiệt độ trung bình">25 °C</p>
                            <p>/</p>
                            <p title="Cảm giác như">26 °C</p>
                          </div>
                        </div>
                      </div>

                    </div>

                  </div>
                  <span class="carousel-control-prev" href="#carousel-hourly" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </span>
                  <span class="carousel-control-next" href="#carousel-hourly" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </span>
                </div>
              </div>
              <!-- thoitiet-ngangchitietthoitiet -->
              <div class="google-ads-container mt-2">
                <!-- thoitiet-chitiet2 -->
                <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-5437093769370767" data-ad-slot="7351011526" data-ad-format="auto" data-full-width-responsive="true"></ins>
                <script>
                  (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
              </div>
              <div class="current-location weather-feature">
                <h2>
                  Nhiệt độ và khả năng có mưa Hà Giang trong 12h tới
                </h2>
                <div class="chart-container bg-white">
                  <canvas id="rainHour" width="897" height="448" style="display: block; box-sizing: border-box; height: 358.4px; width: 717.6px;"></canvas>
                </div>
              </div>

              <div class="google-ads-container mt-2">
                <!-- luongmua -->
                <ins class="adsbygoogle" style="display:block" data-ad-client="ca-pub-5437093769370767" data-ad-slot="4706843331" data-ad-format="auto" data-full-width-responsive="true"></ins>
                <script>
                  (adsbygoogle = window.adsbygoogle || []).push({});
                </script>
              </div>

              <div class="current-location weather-feature">
                <h2>
                  Nhiệt độ và khả năng mưa Hà Giang những ngày tới
                </h2>
                <div class="chart-container bg-white">
                  <canvas id="myChart" width="897" height="448" style="display: block; box-sizing: border-box; height: 358.4px; width: 717.6px;"></canvas>
                </div>
              </div>
              <div class="current-location weather-feature">
                <h2>
                  Lượng mưa Hà Giang những ngày tới
                </h2>
                <div class="chart-container bg-white">
                  <canvas id="rain" width="897" height="448" style="display: block; box-sizing: border-box; height: 358.4px; width: 717.6px;"></canvas>
                </div>
              </div>

            </div>
          </div>

        </div>
        <!--Quảng cáo-->
        <div class="col-12 col-md-4">

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
          <span>© 2021 Kênh thông tin dự báo <a href="https://thoitiet.vn/">Thời tiết</a></span>
          <a href="mailto:info@thoitiet.vn" rel="nofollow">
            <i class="bi bi-envelope"></i>
            info@thoitiet.vn
          </a>
          <div class="social-footer-items">
            <a class="social-footer social-facebook" href="https://www.facebook.com/kenhdubaothoitiet" rel="nofollow" target="_blank">
              <i class="bi bi-facebook"></i>
            </a>
            <a class="social-footer social-twitter" href="https://twitter.com/thoitietvn2021" rel="nofollow" target="_blank">
              <i class="bi bi-twitter"></i>
            </a>
            <a class="social-footer social-instagram" href="https://www.instagram.com/thoitietvn2021/" rel="nofollow" target="_blank">
              <i class="bi bi-instagram"></i>
            </a>
            <a class="social-footer social-linkedin" href="https://www.linkedin.com/in/thoitiet-vn-250186218/" rel="nofollow" target="_blank">
              <i class="bi bi-linkedin"></i>
            </a>
            <a class="social-footer social-pinterest" href="https://www.pinterest.com/thoitietvn" rel="nofollow" target="_blank">
              <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/pinterest.png" alt="pinterest">
            </a>
            <a class="social-footer social-youtube" href="https://www.youtube.com/channel/UCeIRG6_32j8RmV4We0-5jTA" rel="nofollow" target="_blank">
              <i class="bi bi-youtube"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-12 col-md-4 text-left text-sm-right">
        <ul class="list-inline footer-items">
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/widget" rel="nofollow">Widget</a>
          </li>
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/dieu-khoan-dich-vu" rel="nofollow">Điều khoản dịch vụ</a>
          </li>
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/chinh-sach-bao-mat" rel="nofollow">Chính sách bảo mật</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</footer>

<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/jquery.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/popper.min.js.download" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap.bundle.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/moment.min.js.download" crossorigin="anonymous"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap-autocomplete.min.js.download"></script>

<div class="modal fade" tabindex="-1" id="requestLocalModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Website cần biết địa điểm của bạn để gợi ý thông tin dự báo thời tiết được chính xác.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Từ chối</button>
        <button type="button" class="btn btn-primary" onclick="getLocation()">Đồng ý</button>
      </div>
    </div>
  </div>
</div>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/site.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/geo.js.download"></script>

<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/chart.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/chartjs-plugin-datalabels.min.js.download"></script>

<script>
  $(document).ready(function () {
    $('.air-api').tooltip()
  })
  const data = {
    labels: ['CN Ngày 06','T2 Ngày 07','T3 Ngày 08','T4 Ngày 09','T5 Ngày 10','T6 Ngày 11','T7 Ngày 12','CN Ngày 13'],
    datasets: [
      {
        type: 'line',
        label: 'Nhiệt độ',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [26,26,27,26,26,26,25,24],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '°';
          }
        }
      },
      {
        type: 'line',
        label: 'Khả năng có mưa',
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgb(255, 99, 132)',
        data: [1,0,0,32,35,44,34,58],
        datalabels: {
          align: 'end',
          color: 'rgb(0, 0, 0)',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '%';
          }
        }
      }]
  };

  const config = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: data,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          scaleOverride: true,
          suggestedMax: 68,
          suggestedMin: -10,
        }
      },
      legend: {
        display: true,
        labels: {
          color: 'rgb(255, 99, 132)'
        },
        padding: 100
      }

    }
  };

  function drawChart() {
    var ctx = document.getElementById('myChart');
    new Chart(ctx, config);
  }
  drawChart();

  // char mưa
  const dataMua = {
    labels: ['CN Ngày 06','T2 Ngày 07','T3 Ngày 08','T4 Ngày 09','T5 Ngày 10','T6 Ngày 11','T7 Ngày 12','CN Ngày 13'],
    datasets: [
      {
        type: 'bar',
        label: 'Lượng mưa (mm)',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [0,0,0,0.24,0.4,0.79,0.63,2.43],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value;
          }
        }
      }]
  };
  const configMua = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: dataMua,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          suggestedMax: 7.43,
        }
      },
      legend: {
        display: true,
        position: 'right',
        align: 'start',
        labels: {
          color: 'rgb(255, 99, 132)'
        }
      }

    }
  };
  function drawChartMua() {
    var ctx = document.getElementById('rain');
    new Chart(ctx, configMua);
  }
  drawChartMua();

  // theo giờ
  const dataMuaTheoGio = {
    labels: ['16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','00:00','01:00','02:00','03:00'],
    datasets: [
      {
        type: 'line',
        label: 'Nhiệt độ',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [25,25,24,23,22,20,20,19,19,18,17,17],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '°';
          }
        }
      },
      {
        type: 'bar',
        label: 'Khả năng có mưa',
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgb(255, 99, 132)',
        data: [1,1,1,0,0,0,0,0,0,0,0,0],
        datalabels: {
          align: 'end',
          anchor:'end',
          color: 'rgb(0, 0, 0)',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '%';
          }
        }
      }]
  };
  const configMuaTheoGio = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: dataMuaTheoGio,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          suggestedMax: 30,
        }
      },
      legend: {
        display: true,
        labels: {
          color: 'rgb(255, 99, 132)'
        }
      }

    }
  };
  function drawChartMuaHour() {
    var ctx = document.getElementById('rainHour');
    new Chart(ctx, configMuaTheoGio);
  }
  drawChartMuaHour();
</script>
<style>
  @media (max-width:786px) {
    .container {
      padding-left: 0;
      padding-right: 0;
      overflow: hidden;
    }
  }
</style>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/js(1)"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() { dataLayer.push(arguments); }
  gtag('js', new Date());

  gtag('config', 'G-KVHV391KVM');
</script>


</body></html><!DOCTYPE html>
<!-- saved from url=(0028)https://thoitiet.vn/ha-giang -->
<html lang="vi"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới</title>
  <meta name="description" content="Cập nhật dự báo thời tiết Hà Giang hôm nay và ngày mai chính xác nhất. Dự báo khả năng có mưa, lượng mưa, thời tiết cực đoan và nhiệt độ ở Hà Giang">
  <meta name="keywords" content="Dự báo thời tiết,thời tiết Tỉnh Hà Giang,thời tiết hôm nay,thời tiết ngày mai,thời tiết 3 ngày tới">

  <link href="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/css2" rel="stylesheet">
  <link href="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" href="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap-icons.css">

  <link href="./css/card.css" rel="stylesheet">

  <link rel="stylesheet" href="./css/site.css">
  <script type="text/javascript" async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/analytics.js.download"></script><script type="text/javascript" async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/js"></script><script async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/f.txt" crossorigin="anonymous"></script>


  <script type="application/ld+json">
    {"@context":"https://schema.org","@type":"BreadcrumbList","itemListElement":[{"@type":"ListItem","position":1,"name":"Trang chủ","item":"https://thoitiet.vn"},{"@type":"ListItem","position":2,"name":"Thời tiết Hà Giang","item":"https://thoitiet.vn/ha-giang"}]}

  </script>

</head>
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
  <div class="container" style="position:relative">
    <a class="navbar-brand logo" href="https://thoitiet.vn/">
      <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/logo-header.png" class="img-fluid d-none d-md-block">
      <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/logo-mobile.png" class="img-fluid d-block d-md-none">
    </a>
    <div class="search d-md-none">
      <div class="form-group mb-0 search-group">
        <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off" class="form-control basicModalAutoSelect search-input"><input type="hidden" name="simple_select">
      </div>
    </div>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <div class="search d-none d-md-block">
        <div class="form-group mb-0 search-group">
          <input type="search" name="simple_select_text" placeholder="Nhập tên địa điểm..." autocomplete="off" class="form-control basicModalAutoSelect search-input"><input type="hidden" name="simple_select">
          <span class="search-icon">
                        <i class="bi bi-search"></i>
                    </span>
        </div>
      </div>
      <ul class="navbar-nav ml-auto menu">
        <li class="nav-item dropdown has-megamenu">
                    <span class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" style="cursor:pointer">
                        <i class="bi bi-clipboard-data"></i>
                        Tỉnh - Thành phố
                    </span>
          <div class="dropdown-menu megamenu rounded-0" role="menu">
            <div class="row">
              <div class="col-6 col-md-3">
                <div class="col-megamenu">
                  <h6 class="title">Đông Bắc Bộ</h6>
                  <ul class="mega-submenu">
                    <li>
                      <a href="https://thoitiet.vn/ha-giang" title="Hà Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/cao-bang" title="Cao Bằng">
                        <i class="bi bi-arrow-right-short"></i>
                        Cao Bằng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-kan" title="Bắc Kạn">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Kạn
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tuyen-quang" title="Tuyên Quang">
                        <i class="bi bi-arrow-right-short"></i>
                        Tuyên Quang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thai-nguyen" title="Thái Nguyên">
                        <i class="bi bi-arrow-right-short"></i>
                        Thái Nguyên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lang-son" title="Lạng Sơn">
                        <i class="bi bi-arrow-right-short"></i>
                        Lạng Sơn
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-ninh" title="Quảng Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-giang" title="Bắc Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/phu-tho" title="Phú Thọ">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Lào Cai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dien-bien" title="Điện Biên">
                        <i class="bi bi-arrow-right-short"></i>
                        Điện Biên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lai-chau" title="Lai Châu">
                        <i class="bi bi-arrow-right-short"></i>
                        Lai Châu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/son-la" title="Sơn La">
                        <i class="bi bi-arrow-right-short"></i>
                        Sơn La
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/yen-bai" title="Yên Bái">
                        <i class="bi bi-arrow-right-short"></i>
                        Yên Bái
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hoa-binh" title="Hoà Bình">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Nội
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/vinh-phuc" title="Vĩnh Phúc">
                        <i class="bi bi-arrow-right-short"></i>
                        Vĩnh Phúc
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-ninh" title="Bắc Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Bắc Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hai-duong" title="Hải Dương">
                        <i class="bi bi-arrow-right-short"></i>
                        Hải Dương
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hai-phong" title="Hải Phòng">
                        <i class="bi bi-arrow-right-short"></i>
                        Hải Phòng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hung-yen" title="Hưng Yên">
                        <i class="bi bi-arrow-right-short"></i>
                        Hưng Yên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thai-binh" title="Thái Bình">
                        <i class="bi bi-arrow-right-short"></i>
                        Thái Bình
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ha-nam" title="Hà Nam">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Nam
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/nam-dinh" title="Nam Định">
                        <i class="bi bi-arrow-right-short"></i>
                        Nam Định
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ninh-binh" title="Ninh Bình">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Thanh Hóa
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/nghe-an" title="Nghệ An">
                        <i class="bi bi-arrow-right-short"></i>
                        Nghệ An
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ha-tinh" title="Hà Tĩnh">
                        <i class="bi bi-arrow-right-short"></i>
                        Hà Tĩnh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-binh" title="Quảng Bình">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Bình
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-tri" title="Quảng Trị">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Trị
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/thua-thien-hue" title="Thừa Thiên Huế">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Đà Nẵng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-nam" title="Quảng Nam">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Nam
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/quang-ngai" title="Quảng Ngãi">
                        <i class="bi bi-arrow-right-short"></i>
                        Quảng Ngãi
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-dinh" title="Bình Định">
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Định
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/phu-yen" title="Phú Yên">
                        <i class="bi bi-arrow-right-short"></i>
                        Phú Yên
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/khanh-hoa" title="Khánh Hòa">
                        <i class="bi bi-arrow-right-short"></i>
                        Khánh Hòa
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ninh-thuan" title="Ninh Thuận">
                        <i class="bi bi-arrow-right-short"></i>
                        Ninh Thuận
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-thuan" title="Bình Thuận">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Kon Tum
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/gia-lai" title="Gia Lai">
                        <i class="bi bi-arrow-right-short"></i>
                        Gia Lai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dak-lak" title="Đắk Lắk">
                        <i class="bi bi-arrow-right-short"></i>
                        Đắk Lắk
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dak-nong" title="Đắk Nông">
                        <i class="bi bi-arrow-right-short"></i>
                        Đắk Nông
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/lam-dong" title="Lâm Đồng">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Phước
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tay-ninh" title="Tây Ninh">
                        <i class="bi bi-arrow-right-short"></i>
                        Tây Ninh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/binh-duong" title="Bình Dương">
                        <i class="bi bi-arrow-right-short"></i>
                        Bình Dương
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dong-nai" title="Đồng Nai">
                        <i class="bi bi-arrow-right-short"></i>
                        Đồng Nai
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ba-ria-vung-tau" title="Bà Rịa - Vũng Tàu">
                        <i class="bi bi-arrow-right-short"></i>
                        Bà Rịa - Vũng Tàu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ho-chi-minh" title="Hồ Chí Minh">
                        <i class="bi bi-arrow-right-short"></i>
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
                        <i class="bi bi-arrow-right-short"></i>
                        Long An
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tien-giang" title="Tiền Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Tiền Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ben-tre" title="Bến Tre">
                        <i class="bi bi-arrow-right-short"></i>
                        Bến Tre
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/tra-vinh" title="Trà Vinh">
                        <i class="bi bi-arrow-right-short"></i>
                        Trà Vinh
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/vinh-long" title="Vĩnh Long">
                        <i class="bi bi-arrow-right-short"></i>
                        Vĩnh Long
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/dong-thap" title="Đồng Tháp">
                        <i class="bi bi-arrow-right-short"></i>
                        Đồng Tháp
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/an-giang" title="An Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        An Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/kien-giang" title="Kiên Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Kiên Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/can-tho" title="Cần Thơ">
                        <i class="bi bi-arrow-right-short"></i>
                        Cần Thơ
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/hau-giang" title="Hậu Giang">
                        <i class="bi bi-arrow-right-short"></i>
                        Hậu Giang
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/soc-trang" title="Sóc Trăng">
                        <i class="bi bi-arrow-right-short"></i>
                        Sóc Trăng
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/bac-lieu" title="Bạc Liêu">
                        <i class="bi bi-arrow-right-short"></i>
                        Bạc Liêu
                      </a>
                    </li>
                    <li>
                      <a href="https://thoitiet.vn/ca-mau" title="Cà Mau">
                        <i class="bi bi-arrow-right-short"></i>
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
            <i class="bi bi-cloud-sun"></i>
            Địa danh
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/nui">
            <i class="bi bi-geo-fill"></i>
            Núi
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/bien">
            <i class="bi bi-droplet"></i>
            Biển
          </a>
        </li>
        <li class="nav-item">
          <a rel="nofollow" class="nav-link" href="https://thoitiet.vn/tin-tong-hop/kham-pha">
            <i class="bi bi-flower2"></i>
            Khám phá
          </a>
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
            <ol class="breadcrumb mb-0">
              <li class="breadcrumb-item"><a href="https://thoitiet.vn/">Trang chủ</a></li>
              <li class="breadcrumb-item active" aria-current="page">Thời tiết Hà Giang</li>
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
                    Dự báo thời tiết Hà Giang
                  </a>
                </h1>
                <a href="https://thoitiet.vn/ha-giang#" rel="nofollow" title="Chọn làm địa chỉ mặc định" class="btn-current-location" data-lat="22.7933" data-lng="105.01241">
                  <i class="bi bi-house-door"></i>
                </a>
              </div>
              <div class="share-button">
                <div class="fb-like" data-href="https://thoitiet.vn/ha-giang" data-width="" data-layout="button" data-action="like" data-size="small" data-share="true"></div>
              </div>

            </div>
            <div class="location-auto-refresh">
              <span>Đã cập nhật 6 phút trước</span>
            </div>

            <div class="d-flex flex-wrap">
              <div class="overview-current">
                <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/04d@2x.png" alt="Mây cụm">
                <span class="current-temperature">25°</span>
                <div class="unit-group">
                  <p>C</p>
                  <p href="#" title="Thay đổi đơn vị" class="btn-unit-switcher">
                    <span>F</span>
                  </p>
                </div>
              </div>
              <div class="overview-caption ml-3">
                <p class="overview-caption-item overview-caption-item-detail">Mây cụm</p>
                <p class="overview-caption-item overview-caption-summary-detail">Cảm giác như 26°.</p>
              </div>
            </div>
            <div class="d-flex flex-wrap justify-content-between weather-detail mt-2">
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="temp" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24">
                      <title>Temperature</title>
                      <path d="M10.333 15.48v.321c.971.357 1.667 1.322 1.667 2.456 0 1.438-1.12 2.604-2.5 2.604S7 19.695 7 18.257c0-1.134.696-2.099 1.667-2.456v-.322a2.084 2.084 0 0 1-1.25-1.91V5.583a2.083 2.083 0 1 1 4.166 0v7.986c0 .855-.514 1.589-1.25 1.91zM15.8 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
                    </svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Thấp/Cao</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">16°/28°</span>
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
                    <span class="text-white op-8 fw-bold">61%</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="visibility" theme="dark" data-testid="Icon" aria-hidden="true" role="img" width="1024" height="1024" viewBox="0 0 1024 1024"><title>Visibility</title><path d="M491.856 879.808c-60.48-5.056-110.848-25.184-171.328-55.424-120.96-55.424-216.704-146.112-292.256-256.96-25.248-40.352-30.24-80.64 0-126.016 80.608-115.872 186.464-211.68 317.472-272.096 110.816-50.4 226.752-50.4 337.664 0 136 60.48 241.824 156.224 317.44 282.208 15.104 25.216 25.12 65.504 10.048 85.728-105.792 191.424-256.992 367.84-519.04 342.56zm292.256-377.92c0-151.168-120.96-272.064-272.096-272.064-146.144 0-272.128 126.016-272.128 272.064 0 151.232 120.96 277.216 272.128 277.216 151.104-.032 272.096-125.984 272.096-277.216z"></path><path d="M789.808 500.416c0 156.896-125.472 287.52-282.336 282.336-156.864 0-282.336-130.656-282.336-287.488 0-146.4 130.656-277.12 282.336-277.12 156.896-.032 287.584 125.376 282.336 282.272zM512.752 348.832c-83.68 0-151.584 67.968-151.584 151.584 0 88.864 67.968 156.896 151.584 156.896 83.648 0 156.832-73.216 156.832-156.896-5.184-83.648-73.152-151.584-156.832-151.584z"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Tầm nhìn</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">10 km</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="wind" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Wind</title><path d="M6 8.67h5.354c1.457 0 2.234-1.158 2.234-2.222S12.687 4.4 11.354 4.4c-.564 0-1.023.208-1.366.488M3 11.67h15.54c1.457 0 2.235-1.158 2.235-2.222S19.873 7.4 18.54 7.4c-.747 0-1.311.365-1.663.78M6 15.4h9.389c1.457 0 2.234 1.159 2.234 2.223 0 1.064-.901 2.048-2.234 2.048a2.153 2.153 0 0 1-1.63-.742" stroke-width="2" stroke="currentColor" stroke-linecap="round" fill="none"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Gió</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">0.85 km/giờ</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="dewpoint" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>Dew Point</title><path d="M17 8.1a2.8 2.8 0 1 1 0-5.6 2.8 2.8 0 0 1 0 5.6zm0-1.85a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path><path fill-rule="evenodd" d="M9.743 18.912a4.182 4.182 0 0 1-2.928-1.182 3.972 3.972 0 0 1-.614-4.962.743.743 0 0 1 .646-.349c.234 0 .476.095.66.275l4.467 4.355c.385.376.39.998-.076 1.275a4.216 4.216 0 0 1-2.155.588M9.855 5c.316 0 .61.14.828.395.171.2.36.416.562.647 1.857 2.126 4.965 5.684 4.965 8.73 0 3.416-2.85 6.195-6.353 6.195-3.505 0-6.357-2.78-6.357-6.195 0-3.082 2.921-6.406 4.854-8.605.242-.275.47-.535.673-.772C9.245 5.14 9.54 5 9.855 5"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Điểm ngưng</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">17 °C</span>
                  </div>
                </div>
              </div>
              <div class="d-flex">
                <div class="avatar">
                  <div class="avatar-img rounded-circle">
                    <svg class="WeatherDetailsListItem--icon--NgMGn Icon--icon--2AbGu Icon--darkTheme--2U1o8" set="current-conditions" name="uv" theme="dark" data-testid="Icon" aria-hidden="true" role="img" viewBox="0 0 24 24"><title>UV Level</title><path d="M7.4 5.598a.784.784 0 0 1 .25-.92c.335-.256.824-.197 1.02.062.066.063.066.063.08.085l2.406 3.152-.626.238a3.983 3.983 0 0 0-1.097.633l-.522.424L7.4 5.598zm4.539 2.358c-.21 0-.418.017-.625.05l-.664.106.09-.666.438-3.266c.013-.072.013-.072.012-.057a.783.783 0 0 1 .666-.616.78.78 0 0 1 .872.639l.006.038.507 3.933-.662-.108a3.957 3.957 0 0 0-.64-.053zm-7.781 3.19l.026-.004 3.934-.507-.108.662a3.98 3.98 0 0 0-.003 1.266l.105.664-.665-.09-3.265-.439a.784.784 0 0 1-.676-.679c-.054-.42.238-.809.63-.869l.022-.004zm11.504-.617a3.98 3.98 0 0 0-.632-1.097l-.425-.522.623-.256 3.056-1.256a.787.787 0 0 1 .916.253c.256.337.199.817-.104 1.063l-.045.037-3.151 2.405-.238-.627zm-1.205-1.672a3.984 3.984 0 0 0-1.095-.637l-.626-.24.41-.532 2.008-2.602c.059-.07.059-.07.046-.052a.78.78 0 0 1 1.306.227c.076.185.079.39.02.54l-.021.06-1.528 3.662-.52-.426zM4.595 7.793c.162-.387.611-.58.971-.441.017.004.017.004.055.02L9.283 8.9l-.425.52a3.985 3.985 0 0 0-.636 1.094l-.24.627-3.144-2.425a.784.784 0 0 1-.243-.924zm14.443 7.367c.054.045.054.045.044.04a.784.784 0 0 1 .199.884c-.163.386-.61.58-.964.443-.024-.006-.024-.006-.062-.022l-3.662-1.529.426-.52a3.98 3.98 0 0 0 .636-1.094l.241-.626 3.142 2.424zm1.332-3.303c.053.422-.239.809-.63.87l-.035.006-3.945.508.108-.662a3.999 3.999 0 0 0 .003-1.266l-.105-.663.665.09 3.272.44c.068.012.068.012.052.01a.784.784 0 0 1 .615.667zm-3.894 6.421c.024.068.024.068.017.053a.786.786 0 0 1-.27.87c-.332.25-.816.194-1.047-.091-.022-.023-.022-.023-.05-.058l-2.406-3.154.626-.237a3.977 3.977 0 0 0 1.097-.632l.523-.425 1.51 3.674zm-8.26-4.932c.151.397.365.767.633 1.097l.424.522-.622.256-3.054 1.255a.787.787 0 0 1-.92-.25.781.781 0 0 1-.154-.58c.027-.199.127-.379.227-.452.045-.046.045-.046.075-.069l3.153-2.406.238.627zm3.723 2.572c.209 0 .417-.016.625-.049l.662-.103-.089.664-.438 3.26-.012.062a.785.785 0 0 1-.666.618c-.048.005-.048.005-.101.006-.386 0-.714-.28-.764-.612-.01-.043-.01-.043-.014-.072l-.507-3.934.662.108c.213.035.427.052.642.052zM7.366 18.27l.006-.015L8.9 14.592l.52.426a3.99 3.99 0 0 0 1.094.636l.626.241-.41.531-2.012 2.609-.04.046a.788.788 0 0 1-.886.2.787.787 0 0 1-.428-1.011z"></path><path d="M11.911 14.322a2.411 2.411 0 1 0 0-4.822 2.411 2.411 0 0 0 0 4.822zm0 2a4.411 4.411 0 1 1 0-8.822 4.411 4.411 0 0 1 0 8.822z"></path></svg>
                  </div>
                </div>
                <div class="flex-1 pt-1 ml-2">
                  <span class="fw-bold mb-1">Chỉ số UV</span>
                  <div class="d-flex ml-auto align-items-center">
                    <span class="text-white op-8 fw-bold">0.63</span>
                  </div>
                </div>
              </div>
            </div>
          </div>


        </div>
        <!--Quảng cáo-->
        <div class="col-12 col-md-4">

          <div class="current-location">
            <div class="location-name">
        <span class="location-name-icon">
            <i class="bi bi-geo-alt"></i>
        </span>
              <span class="location-name-main">
            Thời tiết các tỉnh lân cận
        </span>
            </div>
            <div class="location-data">
              <div class="location-data-summary">
                <div class="weather-detail mt-2">
                  <a href="https://thoitiet.vn/cao-bang" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/02d.png" alt="Mây thưa" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Cao Bằng
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">26 °C</span>
                          <span title="Cảm giác như">/ 26 °C</span>
                        </div>
                        <span class="d-block text-right">Mây thưa</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/bac-kan" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/03d.png" alt="Mây rải rác" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Bắc Kạn
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">27 °C</span>
                          <span title="Cảm giác như">/ 27 °C</span>
                        </div>
                        <span class="d-block text-right">Mây rải rác</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/tuyen-quang" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/01d.png" alt="Bầu trời quang đãng" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Tuyên Quang
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">27 °C</span>
                          <span title="Cảm giác như">/ 28 °C</span>
                        </div>
                        <span class="d-block text-right">Bầu trời quang đãng</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/thai-nguyen" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/02d.png" alt="Mây thưa" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Thái Nguyên
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">28 °C</span>
                          <span title="Cảm giác như">/ 28 °C</span>
                        </div>
                        <span class="d-block text-right">Mây thưa</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/lang-son" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/01d.png" alt="Bầu trời quang đãng" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Lạng Sơn
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">26 °C</span>
                          <span title="Cảm giác như">/ 26 °C</span>
                        </div>
                        <span class="d-block text-right">Bầu trời quang đãng</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/quang-ninh" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/01d.png" alt="Bầu trời quang đãng" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Quảng Ninh
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">24 °C</span>
                          <span title="Cảm giác như">/ 24 °C</span>
                        </div>
                        <span class="d-block text-right">Bầu trời quang đãng</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/bac-giang" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/01d.png" alt="Bầu trời quang đãng" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Bắc Giang
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">28 °C</span>
                          <span title="Cảm giác như">/ 28 °C</span>
                        </div>
                        <span class="d-block text-right">Bầu trời quang đãng</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                  <a href="https://thoitiet.vn/phu-tho" class="city-item">
                    <div class="d-flex">
                      <div class="avatar tt-weather-icon">
                        <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/01d.png" alt="Bầu trời quang đãng" class="img-fluid">
                      </div>
                      <div class="flex-1 pt-1 ml-2">
                        <h6 class="fw-bold mb-1">
                          Phú Thọ
                        </h6>
                      </div>
                      <div class="ml-auto align-items-center">
                        <div class="weather-sun">
                          <span title="Nhiệt độ">27 °C</span>
                          <span title="Cảm giác như">/ 28 °C</span>
                        </div>
                        <span class="d-block text-right">Bầu trời quang đãng</span>
                      </div>
                    </div>
                  </a>

                  <div class="separator-dashed"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="current-location">
            <div class="location-name">
            <span class="location-name-main">
                Dự báo thời tiết khu vực trực thuộc
            </span>
            </div>
            <div class="location-data">
              <div class="weather-detail mt-2">
                <div class="row">
                  <div class="col-12 col-md-6">
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/bac-me">Huyện Bắc Mê</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/bac-quang">Huyện Bắc Quang</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/dong-van">Huyện Đồng Văn</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/hoang-su-phi">Huyện Hoàng Su Phì</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/meo-vac">Huyện Mèo Vạc</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/quan-ba">Huyện Quản Bạ</a>
                    </h6>
                    <div class="separator-dashed"></div>
                  </div>
                  <div class="col-12 col-md-6">
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/quang-binh">Huyện Quang Bình</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/vi-xuyen">Huyện Vị Xuyên</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/xin-man">Huyện Xín Mần</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/yen-minh">Huyện Yên Minh</a>
                    </h6>
                    <div class="separator-dashed"></div>
                    <h6 class="fw-bold pt-1 ml-2 mb-1 khu-vuc-lan-can">
                      <a href="https://thoitiet.vn/ha-giang/ha-giang">Thành Phố Hà Giang</a>
                    </h6>
                    <div class="separator-dashed"></div>
                  </div>
                </div>

              </div>
            </div>
          </div>




          <div class="current-location top-news">
            <h2>
              Tin tức mới nhất
            </h2>
            <div class="google-ads-container">
              <!-- thoitiet-tintuc -->
              <ins class="adsbygoogle" style="display:inline-block;width:338px;height:66px" data-ad-client="ca-pub-5437093769370767" data-ad-slot="9311613428"></ins>
              <script>
                (adsbygoogle = window.adsbygoogle || []).push({});
              </script>
            </div>
            <ul class="list-unstyled list-top-news">
              <li class="media my-4 list-top-new-items">
                <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/du-bao-thoi-tiet.jpg" class="mr-3" alt="Dự báo thời tiết - đêm 5 và ngày 06/11/2022 Miền Bắc rét về đêm và sáng, miền Trung mưa dông dài ngày">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">Dự báo thời tiết - đêm 5 và ngày 06/11/2022 Miền Bắc rét về đêm và sáng, miền Trung mưa dông dài ngày</h5>
                </div>
                <a rel="nofollow" href="https://thoitiet.vn/du-bao-thoi-tiet-dem-5-va-ngay-06-11-2022-aqwacgdujwm.html" class="top-news-link"></a>
              </li>
              <li class="media my-4 list-top-new-items">
                <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/du-bao-thoi-tiet(1).jpg" class="mr-3" alt="Dự báo thời tiết - đêm 4 và ngày 05/11/2022 tin dự báo gió mạnh, sóng lớn trên vùng biển phía bắc khu vực bắc Biển Đông, Vịnh Bắc Bộ và Bình Thuận đến Cà Mau">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">Dự báo thời tiết - đêm 4 và ngày 05/11/2022 tin dự báo gió mạnh, sóng lớn trên vùng biển phía bắc khu vực bắc Biển Đông, Vịnh Bắc Bộ và Bình Thuận đến Cà Mau</h5>
                </div>
                <a rel="nofollow" href="https://thoitiet.vn/du-bao-thoi-tiet-dem-4-va-ngay-05-11-2022-ygwqcapulmz.html" class="top-news-link"></a>
              </li>
              <li class="media my-4 list-top-new-items">
                <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/tin-du-bao-thoi-tiet.jpg" class="mr-3" alt="Dự báo thời tiết - đêm 3 và ngày 04/11/2022 tin dự báo gió mạnh, sóng lớn trên vùng biển phía bắc khu vực Bắc Biển Đông, Vịnh Bắc Bộ và Bình Thuận đến Cà Mau">
                <div class="media-body">
                  <h5 class="mt-0 mb-1">Dự báo thời tiết - đêm 3 và ngày 04/11/2022 tin dự báo gió mạnh, sóng lớn trên vùng biển phía bắc khu vực Bắc Biển Đông, Vịnh Bắc Bộ và Bình Thuận đến Cà Mau</h5>
                </div>
                <a rel="nofollow" href="https://thoitiet.vn/du-bao-thoi-tiet-dem-3-va-ngay-04-11-2022-bzqrurzuvxy.html" class="top-news-link"></a>
              </li>
            </ul>

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
          <span>© 2021 Kênh thông tin dự báo <a href="https://thoitiet.vn/">Thời tiết</a></span>
          <a href="mailto:info@thoitiet.vn" rel="nofollow">
            <i class="bi bi-envelope"></i>
            info@thoitiet.vn
          </a>
          <div class="social-footer-items">
            <a class="social-footer social-facebook" href="https://www.facebook.com/kenhdubaothoitiet" rel="nofollow" target="_blank">
              <i class="bi bi-facebook"></i>
            </a>
            <a class="social-footer social-twitter" href="https://twitter.com/thoitietvn2021" rel="nofollow" target="_blank">
              <i class="bi bi-twitter"></i>
            </a>
            <a class="social-footer social-instagram" href="https://www.instagram.com/thoitietvn2021/" rel="nofollow" target="_blank">
              <i class="bi bi-instagram"></i>
            </a>
            <a class="social-footer social-linkedin" href="https://www.linkedin.com/in/thoitiet-vn-250186218/" rel="nofollow" target="_blank">
              <i class="bi bi-linkedin"></i>
            </a>
            <a class="social-footer social-pinterest" href="https://www.pinterest.com/thoitietvn" rel="nofollow" target="_blank">
              <img src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/pinterest.png" alt="pinterest">
            </a>
            <a class="social-footer social-youtube" href="https://www.youtube.com/channel/UCeIRG6_32j8RmV4We0-5jTA" rel="nofollow" target="_blank">
              <i class="bi bi-youtube"></i>
            </a>
          </div>
        </div>
      </div>
      <div class="col-12 col-md-4 text-left text-sm-right">
        <ul class="list-inline footer-items">
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/widget" rel="nofollow">Widget</a>
          </li>
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/dieu-khoan-dich-vu" rel="nofollow">Điều khoản dịch vụ</a>
          </li>
          <li class="list-inline-item">
            <a href="https://thoitiet.vn/chinh-sach-bao-mat" rel="nofollow">Chính sách bảo mật</a>
          </li>
        </ul>
      </div>
    </div>
  </div>
</footer>

<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/jquery.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/popper.min.js.download" integrity="sha384-SR1sx49pcuLnqZUnnPwx6FCym0wLsk5JZuNx2bPPENzswTNFaQU1RDvt3wT4gWFG" crossorigin="anonymous"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap.bundle.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/moment.min.js.download" crossorigin="anonymous"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/bootstrap-autocomplete.min.js.download"></script>

<div class="modal fade" tabindex="-1" id="requestLocalModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">
        <p>Website cần biết địa điểm của bạn để gợi ý thông tin dự báo thời tiết được chính xác.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Từ chối</button>
        <button type="button" class="btn btn-primary" onclick="getLocation()">Đồng ý</button>
      </div>
    </div>
  </div>
</div>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/site.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/geo.js.download"></script>

<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/chart.min.js.download"></script>
<script src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/chartjs-plugin-datalabels.min.js.download"></script>

<script>
  $(document).ready(function () {
    $('.air-api').tooltip()
  })
  const data = {
    labels: ['CN Ngày 06','T2 Ngày 07','T3 Ngày 08','T4 Ngày 09','T5 Ngày 10','T6 Ngày 11','T7 Ngày 12','CN Ngày 13'],
    datasets: [
      {
        type: 'line',
        label: 'Nhiệt độ',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [26,26,27,26,26,26,25,24],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '°';
          }
        }
      },
      {
        type: 'line',
        label: 'Khả năng có mưa',
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgb(255, 99, 132)',
        data: [1,0,0,32,35,44,34,58],
        datalabels: {
          align: 'end',
          color: 'rgb(0, 0, 0)',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '%';
          }
        }
      }]
  };

  const config = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: data,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          scaleOverride: true,
          suggestedMax: 68,
          suggestedMin: -10,
        }
      },
      legend: {
        display: true,
        labels: {
          color: 'rgb(255, 99, 132)'
        },
        padding: 100
      }

    }
  };

  function drawChart() {
    var ctx = document.getElementById('myChart');
    new Chart(ctx, config);
  }
  drawChart();

  // char mưa
  const dataMua = {
    labels: ['CN Ngày 06','T2 Ngày 07','T3 Ngày 08','T4 Ngày 09','T5 Ngày 10','T6 Ngày 11','T7 Ngày 12','CN Ngày 13'],
    datasets: [
      {
        type: 'bar',
        label: 'Lượng mưa (mm)',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [0,0,0,0.24,0.4,0.79,0.63,2.43],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value;
          }
        }
      }]
  };
  const configMua = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: dataMua,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          suggestedMax: 7.43,
        }
      },
      legend: {
        display: true,
        position: 'right',
        align: 'start',
        labels: {
          color: 'rgb(255, 99, 132)'
        }
      }

    }
  };
  function drawChartMua() {
    var ctx = document.getElementById('rain');
    new Chart(ctx, configMua);
  }
  drawChartMua();

  // theo giờ
  const dataMuaTheoGio = {
    labels: ['16:00','17:00','18:00','19:00','20:00','21:00','22:00','23:00','00:00','01:00','02:00','03:00'],
    datasets: [
      {
        type: 'line',
        label: 'Nhiệt độ',
        backgroundColor: 'rgba(54, 162, 235, 0.2)',
        borderColor: 'rgb(54, 162, 235)',
        data: [25,25,24,23,22,20,20,19,19,18,17,17],
        datalabels: {
          color: 'rgb(0, 0, 0)',
          align: 'end',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '°';
          }
        }
      },
      {
        type: 'bar',
        label: 'Khả năng có mưa',
        backgroundColor: 'rgba(255, 99, 132, 0.2)',
        borderColor: 'rgb(255, 99, 132)',
        data: [1,1,1,0,0,0,0,0,0,0,0,0],
        datalabels: {
          align: 'end',
          anchor:'end',
          color: 'rgb(0, 0, 0)',
          font: {
            weight: 'bold'
          },
          formatter: function (value, context) {
            return value + '%';
          }
        }
      }]
  };
  const configMuaTheoGio = {
    plugins: [ChartDataLabels],
    type: 'line',
    data: dataMuaTheoGio,
    options: {
      plugins: {
        // Change options for ALL labels of THIS CHART
        datalabels: {
          color: '#36A2EB'
        }
      },
      responsive: true,
      scales: {
        y: {
          display: true,
          suggestedMax: 30,
        }
      },
      legend: {
        display: true,
        labels: {
          color: 'rgb(255, 99, 132)'
        }
      }

    }
  };
  function drawChartMuaHour() {
    var ctx = document.getElementById('rainHour');
    new Chart(ctx, configMuaTheoGio);
  }
  drawChartMuaHour();
</script>
<style>
  @media (max-width:786px) {
    .container {
      padding-left: 0;
      padding-right: 0;
      overflow: hidden;
    }
  }
</style>


<!-- Global site tag (gtag.js) - Google Analytics -->
<script async="" src="./Dự báo thời tiết Hà Giang hôm nay, ngày mai và 10 ngày tới_files/js(1)"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag() { dataLayer.push(arguments); }
  gtag('js', new Date());

  gtag('config', 'G-KVHV391KVM');
</script>


</body></html>