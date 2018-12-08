<%@page import="java.sql.*;"%>

<%
String MedicineId=request.getParameter("mid");
String MedicineName=request.getParameter("mname");
String Quantity=request.getParameter("qty");
String Rate=request.getParameter("rate");
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into stkdet(mid,mname,qty,rate)values(?,?,?,?)");
       ps.setString(1,MedicineId); 
ps.setString(2,MedicineName);
ps.setString(3,Quantity);
ps.setString(4,Rate);
out.print( "<a href='pharmicon.html'>Go to menu");

int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>



