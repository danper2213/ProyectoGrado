<%-- 
    Document   : lista_propuestas
    Created on : 07-mar-2017, 16:57:07
    Author     : Daniel Perez
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Propuestas</title>
    </head>
    <body>
        <h1>Listado de todas las propuestas registradas</h1>
        
        <%
          ResultSet listado = (ResultSet) request.getAttribute("listaPropuestas");
          if(listado != null){
              
              while(listado.next()){
                  
                  out.println( listado.getString(1) + " - " +
                              listado.getInt(2) + "<br/>" );
              }
          }
            
         %>
         
         
         <h2>Listado con filtros</h2>
         
         <form class="well" action="ListarPropuestas" method="GET">
             <div class="form-group">
                <label for="">Seleccione el tipo de estado que desee listar:</label>
                <select name ="cboEstado" class="form-control" id="">
                    <option value="1">Por Definir</option>
                    <option value="2">Rechazada</option>
                    <option value="3">Devuelta para correcion</option>
                    <option value="4">Aprobada</option>                  
                    
                </select>
                
                <button type="submit" class="btn btn-primary">Listar</button>
            </div>
           <%
          ResultSet listadoFiltrado = (ResultSet) request.getAttribute("listaPropuestaEstado");
          if(listadoFiltrado != null){
              
              while(listadoFiltrado.next()){
                  
                  out.println( listadoFiltrado.getString(1) + " - " +
                              listadoFiltrado.getInt(2) + "<br/>" );
              }
          }
            
         %>   
             
             
         </form>
    </body>
</html>
