<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" session="true" %>

<c:set var="contextPath" value="${pageContext.servletContext.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registration form</title>
    <link href="https://fonts.googleapis.com/css2?family=Fira+Sans:wght@400;600&display=swap" rel="stylesheet">
    <link href="${contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/css/common.css" rel="stylesheet">
</head>

<body>

<div class="container">
    <h4 class="text-center">Введите следующую информацию для создания аккаунта</h4>

    <form method="POST" action="${contextPath}/createUser" class="form-signin" accept-charset="UTF-8">
        <div class="form-group">
            <h5 class="text-center">Логин</h5>
            <input name="login" type="text" class="form-control" placeholder="Введите логин" autofocus="true" required/>
            <h5 class="text-center">Пароль</h5>
            <input name="password" type="password" class="form-control" placeholder="Введите пароль" required/>
            <h5 class="text-center">Имя</h5>
            <input name="name" type="text" class="form-control" placeholder="Введите имя" required/>
            <h5 class="text-center">Фамилия</h5>
            <input name="lastname" type="text" class="form-control" placeholder="Введите фамилию"/>
            <h5 class="text-center">E-mail</h5>
            <input name="email" type="text" class="form-control" placeholder="Введите e-mail" required/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Создать аккаунт</button>
        </div>
    </form>
</div>
</body>
</html>