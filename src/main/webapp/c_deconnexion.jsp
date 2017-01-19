<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<html>
<head>
    <title>Déconnexion</title>
    <meta http-equiv="refresh" content="2;URL=index.jsp">
</head>
<body>
    <% session.setAttribute("login",null); %>
    Déconnecté, retour à l'index.
</body>
</html>
