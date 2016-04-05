'use strict';

App.controller('UserController', ['$scope', 'UserService', function ($scope, UserService) {
        
      
        $scope.parJson = function (json) {
            return angular.fromJson(json);
        };
        
        $scope.departaments = [
            {
                name: "Santander",
                data: ["Bucaramanga", "Sangil", "Socorro"]
            },
            {
                name: "Cundinamarca",
                data: ["Bogota", "Tenjo", "Madrid", "Sopo", "Tunja"]
            }
        ];

//        

//        self.fetchAllUsers = function () {
//            UserService.fetchAllUsers()
//                    .then(
//                            function (d) {
//                                self.users = d;
//                            },
//                            function (errResponse) {
//                                console.error('Error while fetching Currencies');
//                            }
//                    );
//        };//
//        

     

    }]);
