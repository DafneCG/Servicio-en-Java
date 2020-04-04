<%-- 
    Document   : webservice
    Created on : 3/04/2020, 09:32:40 PM
    Author     : Dafne CG
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form method="POST" >
            <center>
        <label>buscar sugerencia de consola por calificacion: </label>
        
        <input type="text" name="txtcalificacion" id="txtcalificacion" required>
        
        <input type="submit" name="btn" values="buscar">
        
         <center/>
         
        </form>
   
   
  
    <%-- start web service invocation --%><hr/>
    <%
    try {
	org.tempuri.WebService1 service = new org.tempuri.WebService1();
	org.tempuri.WebService1Soap port = service.getWebService1Soap();
	 // TODO initialize WS operation arguments here
	int txtcalificacion = Integer.parseInt(request.getParameter("txtcalificacion"));
	// TODO process result here
	java.lang.String result = port.helloWorld(txtcalificacion);
	out.println("La consola sugerida es = "+result);
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    %>
    </body>
</html>
