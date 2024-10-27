<html>
<body>
    <form action="ProcesaLogin" method="post">
        <label>Usuario:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <button type="submit">Login</button>
        <% if (request.getParameter("error") != null) { %>
            <p style="color: red;">Invalid credentials, please try again.</p>
        <% } %>
    </form>
</body>
</html>
