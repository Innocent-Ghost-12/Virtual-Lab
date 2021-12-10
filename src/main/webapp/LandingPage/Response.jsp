<%@page import="java.sql.*"%>
<%
String input_name;
input_name=request.getParameter("name");
System.out.println(input_name);
String input_email;
input_email=request.getParameter("email");
System.out.println(input_email);
String input_message;
input_message=request.getParameter("message");
System.out.println(input_message);

try{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","Faiz@MySQL#2021");
Statement st=conn.createStatement();
st.executeUpdate("insert into feedback(name,email,message) values('"+input_name+"','"+input_email+"','"+input_message+"')");

//window.location.replace("/Introduction.jsp");
//out.println("Inserted Successfully");

    String redirectURL = "Introduction.jsp";
    response.sendRedirect(redirectURL);

}
catch(Exception e){
out.println(e);
}
%>
