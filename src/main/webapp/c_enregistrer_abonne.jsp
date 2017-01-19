<%@ page import="annuaire.persistance.Particulier" %>
<%@ page import="annuaire.GestionPersistance" %>
<%@ page import="annuaire.persistance.Entreprise" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<html>
<head>
    <title>Enregistrement</title>
    <meta http-equiv="refresh" content="2;URL=index.jsp">
</head>
<body>

    <% if (request.getParameter("typeAbonne").equals("Particulier")) {
        Particulier pa = new Particulier(request.getParameter("login"), request.getParameter("mdp"), request.getParameter("nom"),
                request.getParameter("prenom"), GestionPersistance.RecupererAnnuairesAvecNom(request.getParameter("annuaire")));
        GestionPersistance.AjouterParticulier(pa);
    } else {
        Entreprise en = new Entreprise(request.getParameter("login"), request.getParameter("mdp"), request.getParameter("raisonSociale"),
                GestionPersistance.RecupererAnnuairesAvecNom(request.getParameter("annuaire")));
        GestionPersistance.AjouterEntreprise(en);
    }

    %>

Enregistrement effectué ! Vous pouvez dès à présent vous connecter !

</body>
</html>
