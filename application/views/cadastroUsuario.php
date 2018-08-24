<!DOCTYPE html>
<html ng-app="roupasApp" lang="pt-br">

<head>
    <title>Cadastro de Usuário</title>

    <?php
        $this->load->view('includes/linksGerais');
    ?>

    <link href="<?= base_url(); ?>assets/css/cadastro.css" rel="stylesheet" type="text/css"/>
    <script src="<?= base_url(); ?>assets/angular/cadastroUsuario.js"></script>

    <script type="text/javascript">
        var baseUrl = '<?= base_url(); ?>'
    </script>

</head>

<body ng-controller="cadastroUsuarioCtrl">

<a href="#openModal">Abrir Modal</a>

<div id="openModal" class="modalDialog">
    <div>
        <a href="#close" title="Close" class="closeModal"></a>
        <!-- Conteúdo do Modal -->

            <!-- Formulário de Cadastro de Usuarios -->
            <div class="container">
                <div class="title-modal">
                    Novo Usuário
                </div>

                <form class="form-cadastro" ng-submit="addUsuario()" method="post">
                    <div class="form-input">
                        <input class="input-cadastro" type="text" required ng-model="nome_usuario" name="nomeUsuario" id="nomeUsuario" placeholder="Nome: ">
                    </div>

                    <div class="form-input">
                        <input class="input-cadastro" type="text" required ng-model="login" name="login" id="login" placeholder="Login: ">
                    </div>

                    <div class="form-input">
                        <input class="input-cadastro" type="password" required ng-model="senha" name="senha" id="senha" placeholder="Senha: ">
                    </div>

                    <div class="btn-cadastro">
                        <button class="btn-form" type="submit">Salvar</button>
                    </div>
                </form>
            </div>

        <!-- Conteúdo do Modal -->
    </div>
</div>

</body>
</html>