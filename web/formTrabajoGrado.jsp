<%-- 
    Document   : formTrabajoGrado
    Created on : 06-mar-2017, 17:42:51
    Author     : Daniel Perez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro Trabajo de grado</title>
    <link rel="stylesheet" href="estilo.css">
    <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css" rel="stylesheet" integrity="sha384-+ENW/yibaokMnme+vBLnHMphUYxHs34h9lpdbSLuAwGkOKFRl4C34WkjazBtb7eT" crossorigin="anonymous">        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>


<body>
     <div class="jumbotron jumbo-custom" id="jumbo-custom">
        <h2 class="text-center">Trabajo de Grado</h2>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="container" >

        <form class="well" action="RegistrarTrabajo" method="GET">
            <h4 class ="text-left">Por favor llenar todos los campos del formulario de trabajo grado:</h4>
            <p>&nbsp;</p>
            <div class="form-group">
                <label for="exampleInputEmail1">Titulo:</label>
                <input  name="txtTitulo" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Titulo del trabajo grado">                
            </div>
            
            <div class="form-group">
                <label for="comment">Planteamiento:</label>
                <textarea  name="txtPlan" class="form-control" rows="2" placeholder="Planteamiento del trabajo de grado" id="comment"></textarea>
            </div>            
            
            <div class="form-group">
                <label for="">Director:</label>
                <select name ="cboDirector" class="form-control" id="">
                    <option value="01">Director de trabajo #1</option>
                    <option value="02">Director de trabajo #2</option>
                    <option value="03">Director de trabajo #3</option>
                    <option value="04">Director de trabajo #4</option>
                    
                    
                </select>
            </div>          
            
            <div class="form-group">
                <label for="">Jurado:</label>
                <select name="cboJurado" class="form-control" id="">
                    <option value="01">Jurado #1</option>
                    <option value="02">Jurado #2</option>
                    <option value="03">Jurado #3</option>
                    <option value="04">Jurado #4</option>
                </select>
            </div>            
            
            <div class="form-group">
                <label for="exampleInputFile">Subir documento trabajo de grado</label>
                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
            </div>
            <button type="submit" value="Agregar Alumno"class="btn btn-primary">Guardar</button>
            
        <%
            Integer r = (Integer) request.getAttribute("r");
            if (r != null) // Ya regresa del servlet
            {
                if (r.intValue() == 1) {
                    out.println("Trabajo de grado agregado correctamente");
                    request.removeAttribute("r");
                } else {
                    out.println("Error en la inserción: ");
                }
            }
        %>
        </form>



            
            
        </div>
     </body>


</html>
