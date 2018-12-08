<%@page import="java.sql.*;"%>

<%
String DoctorName=request.getParameter("dname");
String Type=request.getParameter("type");
String PatientName=request.getParameter("pname");
String Age=request.getParameter("age");
String Sex=request.getParameter("sex");

String Prescription=request.getParameter("presc");
String Dosage=request.getParameter("dose");
String DoctorFee=request.getParameter("fee");
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into prescrip(dname,type,pname,age,sex,presc,dose,fee)values(?,?,?,?,?,?,?,?)");
       ps.setString(1,DoctorName); 
ps.setString(2,Type);
ps.setString(3,PatientName);
ps.setString(4,Age);
ps.setString(5,Sex);

ps.setString(6,Prescription);
ps.setString(7,Dosage);
ps.setString(8,DoctorFee);
out.print( "<a href='docicon.html'>Click here to go back to your icon..</a>");


int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>


