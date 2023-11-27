<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/26
  Time: 22:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Personal page</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

    <style>
      body {
        background-color: #f8f9fa;
        padding-top: 56px;
      }
      .profile-section, .social-section, .books-section {
        margin-bottom: 30px;
        background-color: white;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }
      .profile-section img {
        max-width: 150px;
        border-radius: 50%;
      }
      .books-section .card {
        margin-bottom: 20px;
      }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <a class="navbar-brand" href="#">Personal page</a>

</nav>

<div class="container">
    <div class="profile-section">
        <div class="row">
            <div class="col-md-3">
                <img src="https://via.placeholder.com/150" alt="User's avatar" class="img-fluid">
            </div>
            <div class="col-md-9">
                <h2>${utilisateur.nom}</h2>
                <p><strong>Email: </strong>${utilisateur.email}</p>
                <p><strong>Description: </strong>${utilisateur.description}</p>
            </div>
        </div>
    </div>

    <div class="social-section">
        <h2>social connection</h2>
        <p><strong>abonnement: </strong>${fn:length(utilisateur.abonnementIdList.split(','))}</p>
        <p><strong>abonné: </strong>${fn:length(utilisateur.abonneIdList.split(','))}</p>
    </div>

    <div class="books-section">
        <h2>Published Books</h2>
        <div class="row">
            <c:forEach var="livre" items="${livres}">
                <div class="col-md-4">
                    <div class="card">
                        <img src="https://via.placeholder.com/200" alt="book cover" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">${livre.nom}</h5>
                            <p class="card-text">${livre.description}</p>
                            <p class="card-text">${livre.dateDePublication}</p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>


</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>



