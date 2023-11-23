<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Liste des utilisateurs</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div>
            Admin: <p>${param.AdminEmail}</p>
            Description: <p>${param.AdminDiscription}</p>
        </div>

        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Liste des utilisateurs</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toadduser">Ajouter un utilisateur</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/allusers">Afficher tous les utilisateurs</a>
            </div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/queryUsersByName" method="post" style="display: flex; justify-content: center">
                    <input type="text" name="queryUserName" class="form-control" placeholder="Entrez le nom de l'utilisateur à rechercher">
                    <input type="submit" value="Rechercher" class="btn btn-primary">
                </form>
            </div>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>Email</th>
                    <th>Mot de passe</th>
                    <th>Nom</th>
                    <th>Niveau</th>
                    <th>Description</th>
                    <th>Abonnement Id List</th>
                    <th>Abonné Id List</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${AllUsers}">
                    <tr>
                        <td>${user.email}</td>
                        <td>${user.motDePasse}</td>
                        <td>${user.nom}</td>
                        <td>${user.niveau}</td>
                        <td>${user.description}</td>
                        <td>${user.abonnementIdList}</td>
                        <td>${user.abonneIdList}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/tomodify/${user.id}">Modifier</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/deleteUsers/${user.id}">Supprimer</a>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>
