<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<html>
<head>
    <title>Connexion</title>
</head>
<body>
<h2>Page de connexion</h2>

<br><br>

<form class="form-horizontal" method=post action="c_connexion.jsp">
    <fieldset>

        Login : <input type="text" name="login" value="">
        <br>
        Mot de passe : <input type="password" name="mdp" value="">
        <br>

        <button class="btn btn-primary" type="submit">Se connecter</button>

    </fieldset>
</form>

</body>
</html>
