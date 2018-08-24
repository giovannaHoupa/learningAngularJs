angular.module("roupasApp", []);

angular.module("roupasApp").run(["$http", function ($http) {

    $http.defaults.headers.post["Content-Type"] = "application/x-www-form-urlencoded";
}]);

angular.module("roupasApp").controller("cadastroUsuarioCtrl", ['$scope', '$http', '$window', function ($scope, $http, $window) {

    $scope.addUsuario = function () {
        $http({
            method: 'POST',
            url: baseUrl + 'c_usuario/cadastrar',
            data: $.param({nome_usuario: $scope.nome_usuario, login: $scope.login, senha: $scope.senha})
        }).then(function (response) {
            $scope.addUsuario = response.data;
            $window.alert("Dados inseridos com sucesso!");
            $scope.limparCampos();
        });
    };

    $scope.limparCampos = function(){
        $scope.nome_usuario = "";
        $scope.login = "";
        $scope.senha = "";
    };
}]);