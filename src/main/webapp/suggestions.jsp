<%-- 
    Document   : index
    Created on : Nov 10, 2021, 8:17:53 PM
    Author     : kalam
--%>

<%@page import="java.sql.*"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" href="./images/small-logo.png">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body style="background-color: grey">
      <div class="container">
          <div style="margin: 40px" ></div>
  <table class="table text-center table-dark">
  <thead>
    <tr>
      <th scope="col">Sr.No</th>
      <th scope="col">Name</th>
      <th scope="col">Email</th>
      <th scope="col">Feedback  </th>
    </tr>
  </thead>
  <tbody>
<%
String sql = "SELECT id, name, email, message " +
                     "FROM feedback";
try{ 
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","Faiz@MySQL#2021");
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(sql);
int current_id;
String current_name;
String current_email;
String current_message;

while (rs.next()) {
                current_id = rs.getInt("id");
                current_name = rs.getString("name");
                current_email = rs.getString("email");
                current_message = rs.getString("message");
                
                %> <tr>
      <td scope="col"><%= current_id %></th>
      <td scope="col"><%= current_name%></th>
      <td scope="col"><%=current_email%></th>
      <td scope="col"><%=current_message%></th>
    </tr> <%
        }
}
catch(Exception e){
out.println(e);
}
%>

  </tbody>
</table></div>
  </body>
</html>