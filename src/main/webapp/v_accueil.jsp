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
            <title>Liste des messages</title>
        </head>
        <body>

        <div style="overflow-y:scroll; height:600px;">
            <% for (Message me : GestionPersistance.listeMessages()) {
            %>
            <div class="jumbotron">
                Expéditeur : <%=me.getAbonne().getLogin()%> <br>
                Objet : <%=me.getObjet()%> <br>
                Message : <%=me.getCorps()%>
            </div>
            <%
                }
            %>
        </div>

        <br><br>

        Ecriture d'un message : <br><br>



        <form class="form-horizontal" method=post action="c_poster_message.jsp">
            <fieldset>
                Objet du message : <input type="text" name="objet" value=""/> <br><br>
                Envoyer un message : <textarea rows="4" cols="70" name="message" value=""></textarea>

                <br><br>

                <button class="btn btn-primary" type="submit">Poster</button>
            </fieldset>
        </form>

        <br><br>

        <form class="form-horizontal" method=post action="c_deconnexion.jsp">
            <fieldset>
                <button class="btn btn-primary" type="submit" onclick="">Se déconnecter</button>
            </fieldset>
        </form>

        </body>
        </html>