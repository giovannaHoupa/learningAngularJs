<!DOCTYPE html>
<html ng-app="roupasApp">
    <head>
        <meta charset="utf-8">
        <title> Login </title>
        <?php
            $this->load->view('includes/linksGerais');
        ?>

        <script src="<?= base_url(); ?>assets/angular/login.js"></script>
    </head>
    <body ng-controller="loginCtrl">
        <div class="containerLogin">
            <input type="text" ng-model="usuario.userLogin"/>
            <input type="password" ng-model="usuario.userPassword"/>

            <input type="button" value="Login" ng-click="logar()"/>

        </div>
    </body>
</html>