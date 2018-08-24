<!DOCTYPE html>
<html ng-app="roupasApp" lang="pt-br">

<head>
    <title>Cadastro de Usuário</title>

    <link href="<?= base_url(); ?>assets/css/cadastro.css" rel="stylesheet" type="text/css"/>
    <script src="<?= base_url(); ?>assets/angular/cadastroUsuario.js"></script>
</head>

<body ng-controller="cadastroUsuarioCtrl">

<div class="container">

    <!-- Formulário de Cadastro de Usuarios -->
    <div>
        <div>
            <h1>Novo Usuário</h1>
        </div>

        <form ng-submit="addUsuario()" method="post">
            <div>
                <input type="text" required ng-model="nome_usuario" name="nomeUsuario" id="nomeUsuario" placeholder="Nome: ">
            </div>

            <div>
                <input type="text" required ng-model="login" name="login" id="login" placeholder="Login: ">
            </div>

            <div>
                <input type="password" required ng-model="senha" name="senha" id="senha" placeholder="Senha: ">
            </div>

            <div>
                <button type="reset">Cancelar</button>
                <button type="submit">Salvar</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>