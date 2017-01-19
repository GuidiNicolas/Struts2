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
            <title>Bienvenue !</title>
        </head>
        <body>
        <h2>Bienvenue sur l'application !</h2><br>
        <a href="v_enregistrement_abonne_1.jsp">S'enregistrer</a>
        <br>
        <a href="v_connexion.jsp">Se connecter</a>
        </body>
        </html>
    <%
        return;
        }
    %>

        <html>
        <head>
            <title>Redirection vers les messages</title>
            <meta http-equiv="refresh" content="2;URL=v_accueil.jsp">
        </head>
        <body>
        <h2>Bienvenue <%=session.getAttribute("login")%> ! Redirection en cours ...</h2><br>
        </body>
        </html>