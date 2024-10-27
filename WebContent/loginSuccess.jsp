<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Login Successful</title>
</head>
<body>
    <h2>Welcome, ${sessionScope.user}!</h2>
    <p>You have successfully logged in.</p>
    
    <!-- Button to proceed to the private area -->
    <form action="areaPrivada.jsp" method="get">
        <button type="submit">Go to Private Area</button>
    </form>
    
    <!-- Button to log out directly from this page -->
    <form action="Deslogueo" method="get">
        <button type="submit">Logout</button>
    </form>
</body>
</html>
