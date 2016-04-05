<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>  
        <title>AngularJS $http Example</title>  
        <style>
            .username.ng-valid {
                background-color: lightgreen;
            }
            .username.ng-dirty.ng-invalid-required {
                background-color: red;
            }
            .username.ng-dirty.ng-invalid-minlength {
                background-color: yellow;
            }

            .email.ng-valid {
                background-color: lightgreen;
            }
            .email.ng-dirty.ng-invalid-required {
                background-color: red;
            }
            .email.ng-dirty.ng-invalid-email {
                background-color: yellow;
            }

        </style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link href="/resources/css/app.css" rel="stylesheet"></link>
    </head>
    <body ng-app="myApp" class="ng-cloak">
        <div class="generic-container" ng-controller="UserController as ctrl">
            <div class="panel panel-default">
                <div class="panel-heading"><span class="lead">Registro de Usuario:( ${userSuccess.username} )</span></div>
                <div class="formcontainer">
                    <form action='/user/userReg.htm'  method="post"  name="myForm" class="form-horizontal">
                        <input type="hidden" ng-model="ctrl.user.id" />
                        <input type="hidden" name="username" value="${userSuccess.username}" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Nombre</label>
                                <div class="col-md-7">
                                    <input type="text" name="name" class="form-control input-sm"  placeholder="Ingrese su nombre" required />
                                    <div class="has-error" ng-show="myForm.$dirty">
                                        <span ng-show="myForm.uname.$error.required">Este campo es obligatorio</span>                                        
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Apellido</label>
                                <div class="col-md-7">
                                    <input type="text" name="lastname" class="form-control input-sm" required placeholder="Ingrese su apellido"/>
                                    <div class="has-error" ng-show="myForm.$dirty">
                                        <span ng-show="myForm.uname.$error.required">Este campo es obligatorio</span>                                        
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Estado Civil</label>
                                <div class="col-md-7">
                                    <select name="civilStatus" class="form-control input-sm" >
                                        <option value="Casado">Casado(a)</option>
                                        <option value="Soltero">Soltero(a)</option>
                                    </select>


                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Fecha Nacimienot</label>
                                <div class="col-md-7">
                                    <input type="text" name="birthDate" class="form-control input-sm" placeholder="Ingres su fecha nacimiento"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Sueldo</label>
                                <div class="col-md-7">
                                    <input type="number" min="1" name="salary" class="form-control input-sm" placeholder="Ingrese su sueldo"/>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Email</label>
                                <div class="col-md-7">
                                    <input type="email"  name="email" class="email form-control input-sm" placeholder="Ingrese su email" required/>
                                    <div class="has-error" ng-show="myForm.$dirty">
                                        <span ng-show="myForm.email.$error.required">This is a required field</span>
                                        <span ng-show="myForm.email.$invalid">This field is invalid </span>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Departamento</label>
                                <div class="col-md-7">
                                    <select  class="form-control input-sm" name="departament" ng-model="dep" >                                        
                                        <option ng-repeat="departament in departaments" value="{{departament}}">{{departament.name}}</option>
                                    </select>                                    
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Ciudad</label>
                                <div class="col-md-7">
                                    <select class="form-control input-sm"  name="city" ng-disabled="!dep" ng-model="suburbs" >                                                                            
                                        <option ng-repeat="city in parJson(dep).cities" value="{{parJson(dep).name}}-{{city}}">{{city}}</option>
                                    </select>                                    
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-actions floatRight">
                                <input type="submit"  value="Aceptar" class="btn btn-primary btn-sm" >                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
    <script src="/resources/js/app.js"></script>
    <script src="/resources/js/service/user_service.js"></script>
    <script src="/resources/js/controller/user_controller.js"></script>
</body>
</html>
