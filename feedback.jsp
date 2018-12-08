<%@page import="java.sql.*;"%>

<%
String YourName=request.getParameter("Name");
String EmailId=request.getParameter("email");
String YourComments=request.getParameter("comment");


try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("insert into feedback(Name,email,comment)values(?,?,?)");
       ps.setString(1,YourName); 
ps.setString(2,EmailId);
ps.setString(3,YourComments);

out.println("Thank you for your feedback!"+"<a href='paticon.html'>Go to menu</a>");
int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>





