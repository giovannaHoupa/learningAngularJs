angular.module("roupasApp", []);

angular.module("roupasApp").run(["$http", function ($http) {

    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
}]);

angular.module("roupasApp").controller("cadastroUsuarioCtrl", ['$scope', '$http', function ($scope, $http) {

    // Adiciona Usuário
    $scope.addUsuario = function () {

        $http({
            method: 'POST',
            url: baseUrl + 'c_usuario/cadastrar',
            data: $.param({nome_usuario: $scope.nome_usuario, login: $scope.login, senha: $scope.senha})
        }).then(function (response) {
            console.log('AQUI');
            $scope.addUsuario = response.data;
        });
    };

}]);