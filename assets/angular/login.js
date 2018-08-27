angular.module("roupasApp",[]);

angular.module("roupasApp").run(["$http", function ($http) {

    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
}]);

angular.module("roupasApp").controller('loginCtrl',function ($scope, $http) {

    $scope.usuario = {
        userLogin: '',
        userPassword: ''
    };

    $scope.logar = function(){
        $http({
            method: 'POST',
            url: baseUrl + 'c_login/logar',
            data: $.param($scope.usuario)
        }).then(function (response) {
            console.log('resposta ', response);
            if(response.data.sucesso){
                window.location.href=baseUrl+"C_usuario";
            }
        });
    };

    $scope.addUsuario = function () {
        $http({
            method: 'POST',
            url: baseUrl + 'c_usuario/cadastrar',
            data: $.param({nome_usuario: $scope.nome_usuario, login: $scope.login, senha: $scope.senha})
        }).then(function (response) {
            $scope.addUsuario = response.data;

            $scope.usuario =  {
                userLogin: $scope.login,
                userPassword: $scope.senha
            };

            $scope.logar();

        });
    };

    $scope.doLogout = function () {
        window.location.href=baseUrl+"C_login/sair";
    };
});