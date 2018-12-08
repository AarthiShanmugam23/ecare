<%@page import="java.sql.*;"%>

<%
String PatientName=request.getParameter("Name");
String Patientid=request.getParameter("Pid");
String Age=request.getParameter("age");
String Password=request.getParameter("pass");
String Gender=request.getParameter("gender");
String BloodGroup=request.getParameter("Bgrp");
String Problem=request.getParameter("problem");
String Address=request.getParameter("address");
String MobileNo=request.getParameter("mobno");
String Emailid =request.getParameter("eid");
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into ptlogin(Name,Pid,age,pass,gender,Bgrp,problem,address,mobno,eid)values(?,?,?,?,?,?,?,?,?,?)");
       ps.setString(1,PatientName); 
ps.setString(2,Patientid);
ps.setString(3,Age);
ps.setString(4,Password);
ps.setString(5,Gender);
ps.setString(6,BloodGroup);
ps.setString(7,Problem);
ps.setString(8,Address);
ps.setString(9,MobileNo);
ps.setString(10,Emailid);
out.print( "<a href='patientlogin.html'>Go to Login</a>");

int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
    
  
 
}
%>




