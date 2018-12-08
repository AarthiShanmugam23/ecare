<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body>
          <h4><center>CUSTOMER DETAILS</h4>
          <%
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select * from ptlogin ";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           %>
           <table cellpadding="15" border="1" style="background-color: #ffffcc;">
               
               <tr>
               <th>Patient Name</th>
               <th>Patient Id</th>
               <th>Age</th>
               <th>Password</th>
               <th>Gender</th>
               <th>Bloodgroup</th>
               <th>Problem</th>
               <th>Address</th>
               <th>Mobile No</th>
               <th>Email Id</th>
           </tr>
           <%
           while(rs.next())
           {
           %>
           
           <tr>
               <td><%=rs.getString(1)%> </td>
                <td><%=rs.getString(2)%> </td>
                 <td><%=rs.getString(3)%> </td>
                  <td><%=rs.getString(4)%> </td>
                   <td><%=rs.getString(5)%> </td>
                    <td><%=rs.getString(6)%> </td>
                     <td><%=rs.getString(7)%> </td>
                      <td><%=rs.getString(8)%> </td>
                       <td><%=rs.getString(9)%> </td>
                        <td><%=rs.getString(10)%> </td>
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
               <td><form action="cusdet.jsp" method="get"></td>
          </tr>
          
           </form>
           </table>
      </body>
  </html>


