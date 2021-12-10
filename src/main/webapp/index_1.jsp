<%-- 
    Document   : index
    Created on : Nov 10, 2021, 8:17:53 PM
    Author     : kalam
--%>

<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>

<!--<!DOCTYPE html>
<html>
  
<head>
    <title>
        Embedding an online compiler 
        into a website
    </title>
</head>
  
<body>
     It will create a division for 
        compiler and embed that into 
        web page
    <div data-pym-src=
"https://www.jdoodle.com/iembed/v0/jpD">
    </div>
  
     This script tag contains the 
        javascript code in the written URL 
    <script src=
"https://www.jdoodle.com/assets/jdoodle-pym.min.js"
        type="text/javascript">
    </script>
<%--<jsp:plugin type="applet" codebase="." code="main" archive="BSTVisualization.jar" width="1800" height="1780"></jsp:plugin>--%>

</body>
  
</html>-->

<%--<%@page import="java.util.*"%>--%>
<!--<html>
<form method="post" action="pretest.jsp">
<div class="col-md-6">
                    <label for="username" class="form-label">Email</label>
                    <input type="email" name="username" required class="form-control" id="inputEmail4">
    </div>
<div class="col-12">
                    <label for="feedback" class="form-label">Address</label>
                    <input type="text" name="feedback" required class="form-control" id="inputAddress" style="height: 300px" placeholder="1234 Main St">
    </div>

<div class="col-12 text-center">
                    <button type="submit" name="feedback" class="btn btn-primary">Sign in</button>
    </div>
</form>-->
<!--</html>-->
<!doctype html>
<%@page import="java.sql.*"%>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body style="background-color: grey">
      <div class="container">
          <div style="margin: 40px" ></div>
  <table class="table text-center table-dark table-hover">
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
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    -->
  </body>
</html>