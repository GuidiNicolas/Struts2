<%@ page import="annuaire.persistance.Message" %>
<%@ page import="annuaire.GestionPersistance" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<% try {
    session.getAttribute("login").equals("");
} catch (NullPointerException e) {
%>

<html>
<head>
    <title>Mauvaise adresse</title>
    <meta http-equiv="refresh" content="2;URL=index.jsp">
</head>
<body>
<h2>Bienvenue sur l'application ! Redirection en cours ...</h2><br>
</body>
</html>
<%
        return;
    }
%>

<html>
<head>
    <title>Message posté !</title>
    <meta http-equiv="refresh" content="2;URL=v_accueil.jsp">
</head>
<body>
<%
    Message me = new Message(GestionPersistance.listeAbonnesAvecLogin((String)session.getAttribute("login")).get(0),
    request.getParameter("objet"), request.getParameter("message"));
    GestionPersistance.AjouterMessage(me);
%>

Message envoyé ! Redirection ...

