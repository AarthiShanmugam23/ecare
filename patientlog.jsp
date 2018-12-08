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
    String s1=request.getParameter("Name");
    String s2=request.getParameter("pass");
            String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String sql1="select * from ptlogin where Patientname='"+s1+"' and Password='"+s2+"'";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           if((s1.equals("Name") && s2.equals("pass"))){
                session.setAttribute("Name",s1 );
        session.setAttribute("pass",s2 );
        %>

        <jsp:forward page="adddoc.html"/>
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
    

