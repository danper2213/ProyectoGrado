<%-- 
    Document   : index
    Created on : 15/02/2017, 09:10:19 AM
    Author     : Andres Mauricio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Proyecto de grado</title>
        <link rel="stylesheet" href="estilo.css">
        <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css" rel="stylesheet" integrity="sha384-+ENW/yibaokMnme+vBLnHMphUYxHs34h9lpdbSLuAwGkOKFRl4C34WkjazBtb7eT" crossorigin="anonymous">        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        
        <header>
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 id="homeHeading">¡ Bienvenido !</h1>
                    <hr>
                    <p>Aqui podras registrar tu propuesta de grado y posteriormente tu trabajo grado</p>
                    
                </div>
            </div>
        </header>

        <form>
            <div class="container"> 
            <div class="row">
                <div class="col-md-6">

                    <a href="formpropuesta.jsp" <button type="button" class="btn btn-default btn-lg btn btn-info col-md-offset-5" >
                        <span></span>Propuesta de trabajo </button> </a>

                </div>
                <div class="col-md-6">
                    <a href="formTrabajoGrado.jsp" <button type="button" class="btn btn-default btn-lg btn btn-info col-md-offset-2">
                        <span></span> Trabajo de grado</button> </a>

                </div>
            </div>
            </div>
            
            <a href="ListarPropuestas">Generar Listado de propuestas</a>

        </form>

      

        
    </body>
</html>
