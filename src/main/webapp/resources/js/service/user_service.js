'use strict';

App.factory('UserService', ['$http', '$q', function ($http, $q) {

        return {
            //servicio rest de version del sistema
            version: function () {
                return $http.get('https://gentle-anchorage-67497.herokuapp.com/version/')
                        .then(
                                function (response) {          
                                    console.error(response.data);
                                    return response.data;
                                },
                                function (errResponse) {
                                    console.error(errResponse);
                                    return $q.reject(errResponse);
                                }
                        );
            },
            //servicio rest con informacion de los departamentos y ciudades
            departments: function () {
                return $http.get('https://gentle-anchorage-67497.herokuapp.com/department/')
                        .then(
                                function (response) {
                                    return response.data;
                                },
                                function (errResponse) {
                                    console.error('Error while fetching departments');
                                    return $q.reject(errResponse);
                                }
                        );
            }

        };

    }]);
