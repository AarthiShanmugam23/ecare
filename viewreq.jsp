<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body>
          <h4><center>VIEW REQUEST</h4>
          <%
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select Pid,Pname,msg from reqdoc ";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           %>
      <center>   <table cellpadding="15" border="1" style="background-color: #ffffcc;">
               <tr>
                   <th>Request Id</th>
                   <th>Patient Name</th>
                   <th>Query</th>
                   
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
               <td><form action="viewreq1.jsp" method="get"></td>
          </tr>
          
           </form>
           </table>
      </body>
  </html>
