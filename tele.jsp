
<%@page import="java.sql.*"%>

<%
String MedicineName=request.getParameter("mname");
String ReqQuantity=request.getParameter("reqqty");

    



try
               {
    Class.forName("com.mysql.jdbc.Driver");
    java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ecare","root","root");
    PreparedStatement ps=con.prepareStatement("update tel set qty=(qty-"+ReqQuantity+") where mname='"+MedicineName+"'");
    


out.print("Order received successfully..!!Your order will be delivered within 2 days.."+"<a href='paticon.html'>Go to menu</a>");
int rs=ps.executeUpdate();
}
catch(Exception e)             {
    out.println(e);
}
%>



