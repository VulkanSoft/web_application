<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Landing Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Jura:wght@300;400;500;700&family=MuseoModerno:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${contextPath}/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">
    <link rel="stylesheet" href="${contextPath}/css/animate.css">
    <link rel="stylesheet" href="${contextPath}/css/main.css">
    <link rel="stylesheet" href="${contextPath}/css/carousel.css">
</head>
<body>
<header id="header" class="header">
    <header class="container">
        <div class="row">
            <div class="col-lg-5">
                <img src="${contextPath}/img/vulkan_logo.png" alt="Logo" class="logo animated fadeInLeft">
            </div>
            <div class="col-lg-5">
                <nav>
                    <ul class="menu text-right">
                        <li class="menu__item">
                            <a href="#">Главная</a>
                        </li>
                    </ul>
                </nav>
            </div>
            <c:if test="${empty user && empty admin}">
                <div class="col-lg-2">
                    <div class="login text-right">
                        <a href="${contextPath}/login.jsp">Войти</a>
                    </div>
                </div>
            </c:if>
            <c:if test="${!empty user || !empty admin}">
                <div class="col-lg-2">
                    <div class="login text-right">
                        <a href="${contextPath}/logout">Выйти</a>
                    </div>
                </div>
            </c:if>
        </div>
    </header>
</header>
<header class="header2">
    <header class="container">
        <c:if test="${!empty user}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2 class="text-right">Привет, ${user.name} ${user.lastname}</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="menu__item text-right" style="margin-right:0">
                        <a href="${contextPath}/enter">В кабинет</a>
                    </h2>
                </div>
            </div>
        </c:if>

        <c:if test="${!empty admin}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2 class="text-right">Привет, админ</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="menu__item text-right" style="margin-right:0">
                        <a href="${contextPath}/enterAdmin">В кабинет</a>
                    </h2>
                </div>
            </div>
        </c:if>

        <c:if test="${empty user && empty admin}">
            <div class="row">
                <div class="col-lg-12">
                    <br>
                    <h2 class="text-right">Привет, гость</h2>
                </div>
            </div>
        </c:if>

        <div class="row">
            <div class="col-lg-6">
                <img src="${contextPath}/rat.png" alt="Community" class="community">
            </div>
            <div class="col-lg-6">
                <div class="main">
                    <h3 class="main__title">
                        О нас
                    </h3>
                    <div class="main__intro">
                        Мы it компания из Харькова
                    </div>
                    <p class="main__text">
                        Разрабатываем игры и web-приложения

                    </p>
                    <ul class="icons text-right">
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/icons8-github-octocat-150.png" width="44px"></a></li>
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/icons8-youtube-play-150.png" width="44px"></a></li>
                        <li class="icons__item"><a href="#"><img src="${contextPath}/icons/icons8-телеграмма-app-150.png" width="44px"></a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    </div>
</header>
</header>
<section class="info" id="info">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 ">
                <div class="title">
                    <h2 class="title_main">
                        Наши проэкты
                    </h2>
                    <p class="title__text">
                        Мы работали над многии играми, такими как: max faith 2 и max faith 3.
                        В данный момент трудимся над такой игрой как max faith 4.
                    </p>
                </div>
            </div>
        </div>

        <div class="row" >
            <div class="col-lg-12">
                <div class="feature ">

                    <div class="feature__block">
                        <h3 class="feature__title">
                            Графика
                        </h3>
                        <div class="feature__text">
                            У нас всегда крутая графика
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-12 ">
                <div class="feature">

                    <div class="feature__block">
                        <h3 class="feature__title">
                            Игра по сети
                        </h3>
                        <div class="feature__text">
                            У нас только одиночная!
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</section>

<section id="carousel" class="carousel">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="swiper-container main-slider" id="myCarousel">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car1.jpg)" data-hash="slide1">
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car2.jpg)" data-hash="slide2">
                        </div>
                        <div class="swiper-slide slider-bg-position" style="background:url(${contextPath}/img/car3.jpg)" data-hash="slide3">
                        </div>
                    </div>
                    <!-- Add Pagination -->
                    <div class="swiper-pagination"></div>
                    <!-- Add Navigation -->
                    <div class="swiper-button-prev"><i class="fa fa-chevron-left"></i></div>
                    <div class="swiper-button-next"><i class="fa fa-chevron-right"></i></div>
                </div>
            </div>
        </div>
    </div>
</section>

<footer class="footer" id="footer">
    <div class="container">
        <div class="row">
        <div class="col-lg-12">
            <div class="credits">
                Volodymyr Labunskyi ECTMy-19-1
            </div>
        </div>
    </div>
    </div>
</footer>
<script src="${contextPath}/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="${contextPath}/js/carousel.js"></script>
</body>
</html>