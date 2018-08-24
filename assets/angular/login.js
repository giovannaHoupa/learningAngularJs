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
                window.location.href=baseUrl+"C_usuarios";
            }
        });
    };

});