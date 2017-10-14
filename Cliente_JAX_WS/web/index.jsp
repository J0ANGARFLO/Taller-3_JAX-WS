<%-- 
    Document   : index
    Created on : 14/10/2017, 05:44:39 PM
    Author     : Estudiantes
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%-- start web service invocation --%><hr/>
        <%
        try {
            org.me.jaxws.JAXWS_Service service = new org.me.jaxws.JAXWS_Service();
            org.me.jaxws.JAXWS port = service.getJAXWSPort();
             // TODO initialize WS operation arguments here
            int i = 6;
            int j = 3;
            // TODO process result here
            int result = port.add(i, j);
            out.println("Result = "+result);
        } catch (Exception ex) {
            // TODO handle custom exceptions here
        }
        %>
        <%-- end web service invocation --%><hr/>

    </body>
</html>
