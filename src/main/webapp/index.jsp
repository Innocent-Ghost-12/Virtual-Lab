<%-- 
    Document   : index
    Created on : Nov 10, 2021, 8:17:53 PM
    Author     : kalam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  
<head>
    <title>
        Embedding an online compiler 
        into a website
    </title>
</head>
  
<body>
    <!-- It will create a division for 
        compiler and embed that into 
        web page-->
    <div data-pym-src=
"https://www.jdoodle.com/iembed/v0/jpD">
    </div>
  
    <!-- This script tag contains the 
        javascript code in the written URL -->
    <script src=
"https://www.jdoodle.com/assets/jdoodle-pym.min.js"
        type="text/javascript">
    </script>
</body>
  
</html>