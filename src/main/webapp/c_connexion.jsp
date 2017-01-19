<%@ page import="annuaire.GestionPersistance" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<% if (GestionPersistance.connexionValide( request.getParameter("login"), request.getParameter("mdp"))) {
    %>
        <html>
        <head>
            <title>Connexion</title>
            <meta http-equiv="refresh" content="2;URL=v_accueil.jsp">
        </head>
        <body>
        Connexion réussie !
<%
        session.setAttribute("login",request.getParameter("login"));

    } else {
    %>
        <html>
        <head>
            <title>Connexion</title>
            <meta http-equiv="refresh" content="2;URL=v_connexion.jsp">
        </head>
        <body>
        Connexion échouée, veuillez réessayer.
    <%
    }
%>

</body>
</html>
