<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body>
          <h4><center>PATIENT DETAILS</h4>
          <%
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select * from feedback ";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           %>
           <table cellpadding="15" border="1" style="background-color: #ffffcc;">
               <tr>
                   <th>Patient Name</th>
                   <th>Email Id</th>
                   <th>Comments</th>
               </tr> <%
           while(rs.next())
           {
           %>
           <tr>
               <td><%=rs.getString(1)%> </td>
                <td><%=rs.getString(2)%> </td>
                 <td><%=rs.getString(3)%> </td>
               
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
           <table>
               <td><form action="viewfeed.jsp" method="get"></td>
          </tr>
          
           </form>
           </table>
      </body>
  </html>

