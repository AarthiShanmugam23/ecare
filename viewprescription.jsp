<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body>
          <h4><center>PRESCRIPTION DETAILS</h4>
          
<%
String YourName=request.getParameter("pname");
String Age=request.getParameter("age");

          
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select * from prescrip where pname='" +YourName+"'";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           %>
      <center>  <table cellpadding="15" border="1" >
               <tr>
                    <th>Doctor Name</th>
                   <th>Type</th>
                   <th>Patient Name</th>
                   <th>Age</th>
                   <th>Sex</th>
                   <th>Prescription</th>
                   <th>Dosage</th>
                   <th>Doctor fee</th>
                   
               </tr> <%
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
          out.println("No precription available for you..better consult your doctor!");
                   }
                   %>
                  
           </table>
          
      </body>
  </html>


