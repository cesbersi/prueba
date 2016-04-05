<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Prueba Conocimiento</title>
        <link href="/resources/css/bootstrap.css" rel="stylesheet"></link>  
        <link href="/resources/css/app.css" rel="stylesheet"></link>
    </head>
    <body>
        <div class="generic-container">
            <div class="panel panel-default">
                <div class="panel-heading"><span class="lead">Ingreso al sistema</span></div>
                <div class="formcontainer">
                    <fieldset>  
                        <p style="color:red;">${userError}<p>
                        <form  class="form-horizontal" method="post" action='/user/validate.htm' name="loginUser" id="loginUser">
                            <div class="control-group">
                                <label class="control-label">Usuario</label>
                                <div class="controls">
                                    <input type="text" class="form-control input-sm" name="user" id="user" title="Usuario" value="" required>                                    
                                </div>
                            </div>
                            <div class="control-group">
                                <label class="control-label">Contraseña</label>
                                <div class="controls">
                                    <input type="password" class="form-control input-sm"  name="password" id="password" title="Contraseña" value="" required>                                    
                                </div>
                            </div>
                            <legend></legend>                            
                            <div class="form-actions">
                                <button type="submit" class="btn btn-success">Ingresar</button>                                
                            </div>
                        </form>
                    </fieldset>
                </div>
            </div>
        </div>		
    </body>
</html>