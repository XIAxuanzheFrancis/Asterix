<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List de livres</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>List of users</small>
                </h1>
            </div>
        </div>

        <div class="row">
            <div class="col-md-4 column">
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/toadduser">Add
                    user</a>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/allusers">Show all users</a>
            </div>
            <div class="col-md-4 column">
                <form action="${pageContext.request.contextPath}/book/queryBookByName" method="post" style="display: flex; justify-content: center">
                    <input type="text" name="queryUserName" class="form-control"
                           placeholder="Enter the name of the user to be searched">
                    <input type="submit" value="search" class="btn btn-primary">
                </form>
            </div>

        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <table class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>login</th>
                    <th>password</th>
                    <th>name</th>
                    <th>niveau</th>
                    <th>address</th>
                    <th>dateDeNaissance</th>
                    <th>profil</th>
                </tr>
                </thead>
                <tbody>
                <c:forEach var="user" items="${AllUsers}">
                    <tr>
                        <td>${user.login}</td>
                        <td>${user.password}</td>
                        <td>${user.pseudo}</td>
                        <td>${user.niveau}</td>
                        <td>${user.address}</td>
                        <td>${user.dateDeNaissance}</td>
                        <td>${user.profil}</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/tomodify/${user.login}">Modify</a>
                            &nbsp; | &nbsp;
                            <a href="${pageContext.request.contextPath}/deleteUsers/${user.login}">Delete</a>
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