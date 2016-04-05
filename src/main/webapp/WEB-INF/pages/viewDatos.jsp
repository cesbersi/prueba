<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>  
        <title>Prueba Conocimiento</title>
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
    <body >
        <div class="generic-container" >
            <div class="panel panel-default">
                <div class="panel-heading"><span class="lead">Registro de Usuario:( ${userReg.username} )</span></div>
                <div class="formcontainer">
                    <form action='/user/back.htm'  method="post"  name="myForm" class="form-horizontal">
                        
                        <input type="hidden" name="username" value="${userSuccess.username}" />
                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Nombre</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true" name="name" class="form-control input-sm" value="${userReg.name}" />                                  
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Apellido</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true" name="lastname" class="form-control input-sm" value="${userReg.lastname}"/>                                  
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Estado Civil</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true" name="civilStatus" class="form-control input-sm" value="${userReg.civilStatus}"/>

                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Fecha Nacimienot</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true" name="birthDate" class="form-control input-sm" value="${userReg.birthDate}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Sueldo</label>
                                <div class="col-md-7">
                                    <input type="text"  readonly="true" name="salary" class="form-control input-sm" value="${userReg.salary}"/>
                                </div>
                            </div>
                        </div>


                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Email</label>
                                <div class="col-md-7">
                                    <input type="email" readonly="true" name="email" class="email form-control input-sm" value="${userReg.email}"/>                                    
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Departamento</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true"  name="departament" class="form-control input-sm" value="${userReg.departament}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-group col-md-12">
                                <label class="col-md-2 control-lable" for="file">Ciudad</label>
                                <div class="col-md-7">
                                    <input type="text" readonly="true" name="city" class="form-control input-sm" value="${userReg.city}"/>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="form-actions floatRight">
                                <input type="submit"  value="Regresar" class="btn btn-primary btn-sm" >                                
                            </div>
                        </div>
                    </form>
                </div>
            </div>

        </div>
    </div>


</body>
</html>
