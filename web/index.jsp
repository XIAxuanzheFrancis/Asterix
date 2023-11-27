<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <title>Login Page</title>
  <style>
    body {
      background-image: url('background-image.jpg');
      background-size: cover;
      background-position: center;
      height: 100vh;
      margin: 0;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .login-container {
      backdrop-filter: blur(10px);
      background-color: rgba(255, 255, 255, 0.5);
      border-radius: 10px;
      padding: 20px;
      width: 300px;
    }

    .login-container:hover {
      backdrop-filter: blur(15px);
    }

    .form-group {
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin-bottom: 8px;
    }

    input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ced4da;
      border-radius: 4px;
      box-sizing: border-box;
    }

    .btn-primary {
      background-color: #007bff;
      color: #fff;
      padding: 10px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      width: 100%;
    }

    .rocket {
      transition: transform 0.5s ease-in-out;
    }

    .rocket:hover {
      transform: translateY(-10px);
    }
  </style>
</head>
<body>
<div class="container login-container">
  <div class="card">
    <div class="card-header text-center">
      <h2>Welcome</h2>
    </div>
    <div class="card-body">
      <form id="loginForm" action="${pageContext.request.contextPath }/processLogin" method="post">
        <div class="form-group">
          <label for="email">Email:</label>
          <input type="text" class="form-control" id="email" name="email" required>
        </div>
        <div class="form-group">
          <label for="motDePasse">mot de passe:</label>
          <input type="password" class="form-control" id="motDePasse" name="motDePasse" required>
        </div>
        <button type="submit" class="btn btn-primary btn-block rocket" id="loginButton">Login</button>
      </form>
    </div>
  </div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

<!-- Custom JavaScript for rocket animation -->
<script>
  var rocketButton = document.getElementById('loginButton');

  rocketButton.addEventListener('mouseover', function() {
    rocketButton.classList.add('rocket');
  });

  rocketButton.addEventListener('mouseout', function() {
    rocketButton.classList.remove('rocket');
  });
</script>
</body>
</html>
