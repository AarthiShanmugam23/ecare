<%@page import="java.sql.*;"%>

<%
String RequestId=request.getParameter("Pid");
String PatientName=request.getParameter("Pname");
String Type=request.getParameter("Type");
String DoctorName=request.getParameter("Name");
String Problem=request.getParameter("msg");

try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into reqdoc(Pid,Pname,Type,Name,msg)values(?,?,?,?,?)");
       ps.setString(1,RequestId);
        ps.setString(2,PatientName);
ps.setString(3,Type);
ps.setString(4,DoctorName);
ps.setString(5,Problem);

out.print( "<a href='paticon.html'>Go to menu</a>");
int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>




