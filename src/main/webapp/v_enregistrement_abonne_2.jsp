<%@ page import="annuaire.persistance.Annuaire" %>
<%@ page import="annuaire.GestionPersistance" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<html>
<head>
    <title>
        S'enregistrer en tant que <%=request.getParameter("typeAbonne")%>
    </title>
</head>
<body>
    <h2>Enregistrement en tant que <%=request.getParameter("typeAbonne")%></h2>

    <br>

    <form class="form-horizontal" method=post action="c_enregistrer_abonne.jsp">
        <fieldset>

            <input type="hidden" name="typeAbonne" value = "<%=request.getParameter("typeAbonne")%>"/>

            Login : <input type="text" name="login" value="">
            Mot de passe : <input type="password" name="mdp" value="">

            <br><br>

            Annuaires disponibles :
            <select name = "annuaire" class="form-control">
                <% for (Annuaire an : GestionPersistance.listeAnnuaires()) { %>
                <option value = <%=an.getNom()%>><%=an.getNom()%> </option>
                <%
                    }
                %>

            </select>

            <br><br>

            <% if (request.getParameter("typeAbonne").equals("Particulier")) {
                    %>
                Prénom : <input type="text" name="prenom" value="">
                Nom : <input type="text" name="nom" value="">

            <%
                } else {
                    %>

                Raison sociale : <input type="text" name="raisonSociale" value="">

                <%
                }
            %>

            <br><br>

            <button class="btn btn-primary" type="submit">Confirmer l'enregistrement</button>
        </fieldset>
    </form>

</body>
</html>
