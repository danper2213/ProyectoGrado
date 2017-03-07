<%-- 
    Document   : formpropuesta
    Created on : 28/02/2017, 07:04:13 PM
    Author     : STIVEN TORRES
--%>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registro propuesta de grado</title>
    <link rel="stylesheet" href="estilo.css">
    <link rel="shortcut icon" href="imagenes/favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.7/flatly/bootstrap.min.css" rel="stylesheet" integrity="sha384-+ENW/yibaokMnme+vBLnHMphUYxHs34h9lpdbSLuAwGkOKFRl4C34WkjazBtb7eT" crossorigin="anonymous">        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>


<body>
    
    <div class="jumbotron jumbo-custom" id="jumbo-custom">
        <h2 class="text-center">Propuesta de grado</h2>
    </div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    
    <div class="container" >

        <form class="well" action="RegistrarPropuesta" method="GET">
            <h4 class ="text-left">Por favor llenar todos los campos del formulario de propuesta de grado:</h4>
            <p>&nbsp;</p>
            <div class="form-group">
                <label for="exampleInputEmail1">Nombre completo:</label>
                <input  name="txtNombre" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre completo">
                
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Codigo:</label>
                <input name ="txtCodigo" type="text" class="form-control" placeholder="Codigo">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Semestre:</label>
                <input name ="txtSemestre" type="text" class="form-control" placeholder="Semestre">
            </div>
            
            <div class="form-group">
                <label for="">Programa:</label>
                <select name ="cboPrograma" class="form-control" id="">
                    <option value="21">Ingeniería mecanica</option>
                    <option value="22">Ingeniería de sistemas</option>
                    <option value="23">Ingeniería industrial</option>
                    <option value="24">Ingeniería electrónica</option>
                    <option value="25">Ingeniería civil</option>
                    
                </select>
            </div>
            <div class="form-group">
                <label for="comment">Tematica:</label>
                <textarea  name="txtTematica" class="form-control" rows="2" id="comment"></textarea>
            </div>

            
            <div class="form-group">
                <label for="">Modalidad:</label>
                <select name="cboModalidad" class="form-control" id="">
                    <option value="01">Monografía</option>
                    <option value="02">Asistencia de investigación</option>
                    <option value="03">Trabajo de investigación</option>
                    <option value="04">Opción emprendimiento</option>
                </select>
            </div>
            
            <div class="form-group">
                <label for="exampleInputFile">Descargar formato solicitud</label>
                <input type="file" class="form-control-file" id="" aria-describedby="fileHelp">
                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
            </div>
            <div class="form-group">
                <label for="exampleInputFile">Subir documento propuesta de grado</label>
                <input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp">
                <small id="fileHelp" class="form-text text-muted">This is some placeholder block-level help text for the above input. It's a bit lighter and easily wraps to a new line.</small>
            </div>
            <button type="submit" value="Agregar Alumno"class="btn btn-primary">Guardar</button>
            
        <%
            Integer r = (Integer) request.getAttribute("r");
            if (r != null) // Ya regresa del servlet
            {
                if (r.intValue() == 1) {
                    out.println("Propuesta agregada correctamente");
                    request.removeAttribute("r");
                } else {
                    out.println("Error en la inserción: ");
                }
            }
        %>
        </form>



            
            
        </div>
     </body>

