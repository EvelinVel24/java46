<%@ page import="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var="dbSource" driver="oracle.jdbc.driver.OracleDriver"
    url="jdbc:oracle:thin:@localhost:1521:xe" user="your_db_username" password="your_db_password" />

<sql:query dataSource="${dbSource}" var="departamentos">
    SELECT * FROM DEPARTAMENTO
</sql:query>

<h2>Welcome, ${sessionScope.user}</h2>
<table border="1">
    <tr>
        <th>NumDepto</th>
        <th>NomDepto</th>
        <th>UbicacionDpto</th>
    </tr>
    <c:forEach var="row" items="${departamentos.rows}">
        <tr>
            <td><c:out value="${row.NUMDEPTO}" /></td>
            <td><c:out value="${row.NOMDEPTO}" /></td>
            <td><c:out value="${row.UBICACIONDPTO}" /></td>
        </tr>
    </c:forEach>
</table>
<form action="Deslogueo" method="get">
    <button type="submit">Cerrar Sesión</button>
</form>
