'use strict';

App.controller('UserController', ['$scope', 'UserService', function ($scope, UserService) {

        //funcion para parsear objeto a JSON
        $scope.parJson = function (json) {
            return angular.fromJson(json);
        };
        
       
       //llamado a servicio de departamentos    
        UserService.departments()
                .then(
                        function (d) {
                            $scope.departaments = d;
                        },
                        function (errResponse) {
                            console.error('Error while fetching Currencies');
                        }
                );
        
        UserService.version()
                .then(
                        function (d) {
                            $scope.version = d;
                        },
                        function (errResponse) {
                            console.error('Error while fetching Currencies');
                        }
                );





    }]);
