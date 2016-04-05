'use strict';

App.factory('UserService', ['$http', '$q', function ($http, $q) {

        return {
            Version: function () {
                return $http.get('https://gentle-anchorage-67497.herokuapp.com/user/')
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
