'use strict';

App.factory('UserService', ['$http', '$q', function ($http, $q) {

        return {
            Version: function () {
                return $http.get('https://gentle-anchorage-67497.herokuapp.com/version/')
                        .then(
                                function (response) {
                                    return response.data;
                                },
                                function (errResponse) {
                                    console.error('Error while fetching users');
                                    return $q.reject(errResponse);
                                }
                        );
            },
            departments: function () {
                return $http.get('http://localhost:8080/department/')
                        .then(
                                function (response) {
                                    return response.data;
                                },
                                function (errResponse) {
                                    console.error('Error while fetching users');
                                    return $q.reject(errResponse);
                                }
                        );
            }

        };

    }]);
