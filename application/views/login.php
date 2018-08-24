<!DOCTYPE html>
<html ng-app="teste">
    <head>
        <meta charset="utf-8">
        <title> Login </title>
        <?php
            //$this->load->view('includes/linksGerais');
        ?>

        <script src="<?= base_url(); ?>assets/angular/angular.js"></script>

        <script src="<?= base_url(); ?>assets/angular/login.js"></script>
    </head>
    <body ng-controller="loginCtrl">
        <div ng-if="teste == true" class="containerLogin">
            mano
        </div>
    </body>
</html>