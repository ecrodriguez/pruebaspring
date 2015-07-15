<%-- 
    Document   : Nueva_Persona
    Created on : Jul 14, 2015, 10:09:08 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style type="text/css">
        #inputArea input[type="text"], #inputArea textarea
        {
            font-family: Arial, Sans-Serif;
            font-size: 13px;
            margin-bottom: 5px;
            display: block;
            padding: 4px;
            border: solid 1px #85b1de;
            width: 300px;
        }
        #inputArea input[type="int"], #inputArea textarea
        {
            font-family: Arial, Sans-Serif;
            font-size: 13px;
            margin-bottom: 5px;
            display: block;
            padding: 4px;
            border: solid 1px #85b1de;
            width: 300px;
        }
    </style>
    <body>
    <center>
        <h3>Datos Personales</h3>
         <div id="inputArea">
             
        <spring:nestedPath path="name">
           
            <form:form method="POST" commandName="persona">
                Id:
                <spring:bind path ="id">
                    <input type ="int" name="${status.expression}" value="${status.value}">
                </spring:bind><p>                      
                    Nombre:
                    <spring:bind path ="nombre">
                        <input type ="text" name="${status.expression}" value="${status.value}">
                </spring:bind><p>
                    Apellido Paterno:
                    <spring:bind path ="apaterno">
                        <input type ="text" name="${status.expression}" value="${status.value}">
                </spring:bind><p>
                    Apellido materno:
                    <spring:bind path ="amaterno">
                        <input type ="text" name="${status.expression}" value="${status.value}">
                </spring:bind><p>
                    Telefono:
                    <spring:bind path ="telefono">
                        <input type ="text" name="${status.expression}" value="${status.value}">
                </spring:bind><p>
                    <input type="submit" value="Registrar">
                </form:form>
               </div>
            </center>
            </spring:nestedPath>
    </body>
</html>
