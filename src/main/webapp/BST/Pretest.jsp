<%-- 
    Document   : Pretest
    Created on : Nov 25, 2021, 12:21:48 AM
    Author     : kalam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Binary Search tree Post test</title>
    <link rel="stylesheet" href="../css/posttest.css">
</head>
<body>
    <div class="main-div">
        <div class="inner-div">
            <h2 class="question">Questions comes here</h2>
            <ul>
                <li>
             <input type="radio" name="answer" id="ans1" class="answer"> 
            <label for="ans1" id="option1">Answer option</label>        
               </li>
               <li>
                <input type="radio" name="answer" id="ans2" class="answer"> 
               <label for="ans2" id="option2">Answer option</label>        
                  </li>
                  <li>
                    <input type="radio" name="answer" id="ans3" class="answer"> 
                   <label for="ans3" id="option3">Answer option</label>        
                      </li>
                      <li>
                        <input type="radio" name="answer" id="ans4" class="answer"> 
                       <label for="ans4" id="option4">Answer option</label>        
                          </li>
            </ul>
            <button id="submit">submit</button>
            <div id="showScore" class="scoreArea"></div>
            <script src="../js/bstpre.js"></script>
        </div>
    </div>
</body>
</html>