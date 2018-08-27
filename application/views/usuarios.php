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
        <div>
            Primeira página após login

            <span ng-click="doLogout()">SAIR</span>
        </div>
    </body>
</html>