<%--
  Created by IntelliJ IDEA.
  User: 30586
  Date: 2023/11/21
  Time: 16:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Modifier les informations sur les utilisateurs</title>
    <link href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css"
          rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>Modifier les informations sur les utilisateurs</small>
                </h1>
            </div>
        </div>
    </div>

    <form action="${pageContext.request.contextPath}/updateuser" method="past">
        <%--        N'oubliez pas!!!!!!!!!!!!!!!!!!--%>
        <input type="hidden" name="id" value="${utilisateur.id}">
            <div class="form-group">
                <label>Mot de Passe:</label>
                <input type="password" name="motDePasse" class="form-control" value="${utilisateur.motDePasse}" required>
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
            <input type="submit" class="form-control" value="Modify">
        </div>

    </form>
</div>
</body>
</html>
