<%@page import="java.sql.*;"%>

<%
String DoctorId=request.getParameter("Did");
String Type=request.getParameter("Type");
String Name=request.getParameter("Name");
String Password=request.getParameter("pass");
String Qualification=request.getParameter("qual");
String Mobileno=request.getParameter("mobno");
String emailid=request.getParameter("eid");
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into login(Did,Type,Name,pass,qual,mobno,eid)values(?,?,?,?,?,?,?)");
       ps.setString(1,DoctorId); 
ps.setString(2,Type);
ps.setString(3,Name);
ps.setString(4,Password);
ps.setString(5,Qualification);
ps.setString(6,Mobileno);
ps.setString(7,emailid);
out.println( "<a href='index.html'>Go to Login</a>");
int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>






