<%@page import="java.sql.*;"%>

<%
String PharmacistId=request.getParameter("Phid");
String Name=request.getParameter("Name");
String Password=request.getParameter("pass");
String Qualification=request.getParameter("qual");
String Mobileno=request.getParameter("mobno");
String emailid=request.getParameter("eid");
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into phlogin(Phid,Name,pass,qual,mobno,eid)values(?,?,?,?,?,?)");
       ps.setString(1,PharmacistId); 

ps.setString(2,Name);
ps.setString(3,Password);
ps.setString(4,Qualification);
ps.setString(5,Mobileno);
ps.setString(6,emailid);
out.print( "<a href='pharmlogin.html'>Go to Login</a>");
int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>





