<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/21
  Time: 15:53
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List d'utilisateurs</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Ajouter un utilisateur</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/addusers" method="past">
        <div class="form-group">
            <label>Nom utilisateur:</label>
            <input type="text" name="nom" class="form-control" required>
        </div>
        <div class="form-group">
            <label>email:</label>
            <input type="email" name="email" class="form-control" required>
        </div>
        <div class="form-group">
            <label>mot de passe:</label>
            <input type="password" name="motDePasse" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="niveau">niveau:</label>
            <select name="niveau" id="niveau" class="form-control" required>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
            </select>
        </div>

        <div class="form-group">
            <label>description:</label>
            <input type="text" name="description" class="form-control" required>
        </div>

        <div class="form-group">
            <input type="submit" class="form-control" value="Add">
        </div>
    </form>
</div>
</body>
</html>
