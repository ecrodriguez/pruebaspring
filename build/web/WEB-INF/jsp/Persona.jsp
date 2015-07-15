<%-- 
    Document   : Persona
    Created on : Jul 13, 2015, 2:09:45 PM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>${message}</title>
        <link rel="stylesheet" type="text/css" href="/css/estilos.css" media="screen" />

    </head>
    <body>
           
<style type="text/css">
	.TFtable{
		width:50%; 
		border-collapse:collapse; 
	}
	.TFtable td{ 
		padding:7px; border:#4e95f4 1px solid;
	}
	/* provide some minimal visual accomodation for IE8 and below */
	.TFtable tr{
		background: #b8d1f3;
	}
	/*  Define the background color for all the ODD background rows  */
	.TFtable tr:nth-child(odd){ 
		background: #b8d1f3;
	}
	/*  Define the background color for all the EVEN background rows  */
	.TFtable tr:nth-child(even){
		background: #dae5f4;
	}
</style> <center><h1>${message}</h1><br> 
        <table class="TFtable">
            <tr>
                <th>ID</th>
                <th>User Name</th>
                <th>Password</th>
                <th>Email</th>
            </tr>
            <c:forEach items="${Personas}" var="Persona">
            <tr>
                <td><c:out value="${Persona.id}"/></td>
                <td><c:out value="${Persona.nombre}"/></td>
                <td><c:out value="${Persona.apaterno}"/></td>
                <td><c:out value="${Persona.amaterno}"/></td>
            </tr>
            </c:forEach>
        </table>
    <a href="index.htm">Regresar</a> 
</center>
         
    </body>
</html>
