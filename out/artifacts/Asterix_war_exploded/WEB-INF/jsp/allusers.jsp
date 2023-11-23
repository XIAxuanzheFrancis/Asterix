<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User List</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <style>
      body {
        font-family: 'Arial', sans-serif;
      }

      .admin-info {
        margin-bottom: 20px;
      }

      .btn-container {
        margin-top: 20px;
      }

      .search-form {
        display: flex;
        justify-content: center;
        margin-top: 20px;
      }

      .user-table {
        margin-top: 20px;
      }

      .user-actions {
        white-space: nowrap;
      }
    </style>
</head>
<body>
<div class="container">
    <div class="row clearfix admin-info">
        <div class="col-md-4">
            <h4>Admin Information</h4>
            <p><strong>Email:</strong> ${sessionScope.AdminEmail}</p>
            <p><strong>Description:</strong> ${sessionScope.AdminDiscription}</p>
            <p>
                <a href="${pageContext.request.contextPath}/logout" class="btn btn-danger">Logout</a>
            </p>
        </div>

        <div class="col-md-8">
            <div class="page-header">
                <h1>
                    <small>User List</small>
                </h1>
            </div>
        </div>

        <div class="row btn-container">
            <div class="col-md-4">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toadduser">Add User</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/allusers">Show All Users</a>
            </div>
            <div class="col-md-4">
                <form action="${pageContext.request.contextPath}/queryUsersByName" method="post" class="search-form">
                    <input type="text" name="queryUserName" class="form-control" placeholder="Enter username to search">
                    <input type="submit" value="Search" class="btn btn-primary">
                </form>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12">
            <table class="table table-hover table-striped user-table">
                <thead>
                <tr>
                    <th>Email</th>
                    <th>Password</th>
                    <th>Name</th>
                    <th>Level</th>
                    <th>Description</th>
                    <th>Subscription Id List</th>
                    <th>Subscriber Id List</th>
                    <th>Actions</th>
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
                        <td class="user-actions">
                            <a href="${pageContext.request.contextPath}/tomodify/${user.id}" class="btn btn-warning">Modify</a>
                            <a href="${pageContext.request.contextPath}/deleteUsers/${user.id}" class="btn btn-danger">Delete</a>
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
