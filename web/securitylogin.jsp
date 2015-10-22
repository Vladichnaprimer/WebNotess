
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
</head>

<body>
        <form action="${pageContext.request.contextPath}/j_spring_security_check" method="post" role="form" class="form-inline">
            <div class="form-group">
                <input type="text" class="form-control" name="j_username" placeholder="Login/Email">
            </div>
            <br/>
            <div class="form-group">
                <input type="password" class="form-control" name="j_password" placeholder="Password">
            </div>
            <div class="form-group">
                <input type="checkbox" class="form-control" name="_spring_security_remember_me" placeholder="Password">
            </div>
            <br/><br/>
            <button type="submit" class="btn btn-success">Sign In</button>
        </form>
</body>
</html>