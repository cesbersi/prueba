<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
    <link href="css/style.css" rel="stylesheet" class="demo__css">      
</head>
<div class="cont">

    <div class="demo">
        <div class="login">          
            <form ng-submit="vm.login()">
                <div class="login__check"></div>
                <div class="login__form">
                    <div class="login__row">
                        <svg class="login__icon name svg-icon" viewBox="0 0 20 20">
                        <path d="M0,20 a10,8 0 0,1 20,0z M10,0 a4,4 0 0,1 0,8 a4,4 0 0,1 0,-8" />
                        </svg>
                        <div class="form-group" ng-class="{ 'has-error': form.username.$dirty && form.username.$error.required }">            
                            <input type="text" name="username" class="login__input name" id="username" placeholder="{{ 'userName' | translate }}" ng-model="vm.username" required />
                            <span ng-show="form.username.$dirty && form.username.$error.required" class="help-block">Username is required</span>

                        </div>
                    </div>
                    <div class="login__row">
                        <svg class="login__icon pass svg-icon" viewBox="0 0 20 20">
                        <path d="M0,20 20,20 20,8 0,8z M10,13 10,16z M4,8 a6,8 0 0,1 12,0" />
                        </svg>
                        <div class="form-group" ng-class="{ 'has-error': form.password.$dirty && form.password.$error.required }">            
                            <input type="password" name="password" placeholder="Contraseña" class="login__input name" id="password" ng-model="vm.password" required />
                            <span ng-show="form.password.$dirty && form.password.$error.required" class="help-block">Password is required</span>
                        </div>
                    </div>                 
                    <button type="submit" class="login__submit">Ingresar</button>               
                </div>
            </form>
        </div>

    </div>

</div>
