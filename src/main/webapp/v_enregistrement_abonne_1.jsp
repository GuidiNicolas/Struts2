<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style type="text/css">
    <jsp:include page="/WEB-INF/CSS/bootstrap.css" />
</style>


<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Type d'abonné</title>
</head>
<body>

<form class="form-horizontal" method=post action="v_enregistrement_abonne_2.jsp">
    <fieldset>

        <div class="col-lg-10">
            <div class="radio">
                <label>
                    <input name="typeAbonne" value="Entreprise" type="radio"> Entreprise <br>
                </label>
            </div>

            <div class="radio">
                <label>
                    <input name="typeAbonne" value="Particulier" type="radio"> Particulier <br>
                </label>
            </div>
        </div>

        <br><br>
    </fieldset>

    <button class="btn btn-primary" type="submit">Prochaine étape</button>
</form>
</body>
</html>
