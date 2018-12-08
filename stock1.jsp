<!DOCTYPE HTML PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
  <%@ page import="java.io.*" %>       
  <html>
      <body bgcolor="grey">
          <h2><center><font color="red">STOCK AVAILABILITY DETAILS</h4>
          <%
          String MedicineName=request.getParameter("mname");
          try
              {
              String connectionURL="jdbc:mysql://localhost:3306/ecare";
             String query="select mname,rate from stkdet where mname='"+MedicineName+"'and qty<>0";
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection con=DriverManager.getConnection(connectionURL,"root","root");       
           Statement stmt=con.createStatement();
           ResultSet rs =stmt.executeQuery(query);
           
           %>
      <center>
          <marquee hspace="35%"><h3><font color="blue">Stock available.!!You can buy medicine from the store!</h4></marquee>
              <h4><font color="white">Stock details are given below...</h5><table cellpadding="15" border="1" style="background-color: pink;">
               <tr>
                                     <th>Medicine Name</th>
                   <th>Rate</th>
                   
               </tr> 
            <%
           while(rs.next())
           {
           %>
           
           
           <tr>
               <td><%=rs.getString(1)%> </td>
                <td><%=rs.getString(2)%> </td>
                               
           </tr>
           <%
            
          }
          %>
          <%
              
out.print( "<a href='tele.html'>Buy now!</a>");
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

