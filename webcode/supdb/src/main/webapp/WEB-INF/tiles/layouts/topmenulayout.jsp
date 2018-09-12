<%-- $Id: topmenulayout.jsp,v 1.15 2018/02/05 06:22:43 a0284538 Exp $ --%>
<%@ page session="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>${requestScope['menu.pageTitle']}</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
       


        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
        <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>-->
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

        <!--
            ClickJack busting script
            ref: https://www.owasp.org/index.php/Clickjacking_Defense_Cheat_Sheet
            ref: https://www.codemagi.com/blog/post/194
        -->
        <style id="antiClickjack">body{display:none !important;}</style>
        <script type="text/javascript">
            if (self === top) {
                var antiClickjack = document.getElementById("antiClickjack");
                antiClickjack.parentNode.removeChild(antiClickjack);
            } else {
                top.location = self.location;
            }
        </script>
    </head>
    <body>

        <%-- Disables caching for Ajax requests --%>
        <script type="text/javascript">
            $.ajaxSetup({cache: false});
        </script>

       
            <div id="menu" class="row"><tiles:insertAttribute name="menu" /></div> <!-- End of menu div -->
            <div id="body" class="row"><tiles:insertAttribute name="body" /></div> <!-- End of body div -->
            <div id="footer" class="row"><tiles:insertAttribute name="footer" /></div> <!-- End of footer div -->

        <%-- This div is a placeholder for a popup jQuery dialog --%>
        <div id="edit_dialog" title="Add/Update Record"></div> <!-- End of popup dialog div -->

    </body>
</html>
