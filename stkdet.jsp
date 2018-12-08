<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body>
          <h4><center>STOCK DETAILS</h4>
          <%
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select * from stkdet";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           %>
      <center> <table cellpadding="15" border="1" style="background-color: #ffffcc;">
               <tr>
                   <th>Medicine Id</th>
               <th>Medicine Name</th>
               <th>Quantity</th>
               <th>Rate</th>
                         </tr> <%
           while(rs.next())
           {
           %>
           <tr>
               <td><%=rs.getString(1)%> </td>
                <td><%=rs.getString(2)%> </td>
                 <td><%=rs.getString(3)%> </td>
                  <td><%=rs.getString(4)%> </td>
           </tr>
           <%
            
          }
          %>
          <%
          rs.close();
          stmt.close();
          con.close();
          }
          
          catch(Exception ex)
          {
          %>
          <%
          out.println("Unable to connect to database");
                   }
                   %>
           </table>
           
      </body>
  </html>

