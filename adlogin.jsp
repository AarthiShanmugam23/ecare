<%@page import="java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    
<head>
    <meta http-equiv="Content-Type"content="text/html"; charset=UTF-8">
</head>

<body>
<%
try
               {
    String g1=request.getParameter("Login");
    String s1=request.getParameter("Name");
    String s2=request.getParameter("pass");
            
            
if((s1.equals("Gowtham") && s2.equals("papu"))){
               
    session.setAttribute("Name",s1 );
        session.setAttribute("pass",s2 );
        %>

        <jsp:forward page="adicon.html"/>
        <%
           }
           else{
        %>
        <jsp:forward page="error.html"/>
        <%
                     
          
           }
   }
         
catch(Exception e){
out.println(e);
        
  }%>
</body>
</html>



