<%-- 
    Document   : Aim
    Created on : Nov 25, 2021, 12:10:48 AM
    Author     : kalam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html><html lang="en"><head>
    
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Welcome to Virtual Labs SIES GST</title>
    <link rel="shortcut icon" href="../images/small-logo.png">
    <link href="../css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/vlabs-style.css" rel="stylesheet">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&amp;family=Raleway&amp;display=swap" rel="stylesheet">
    <script src="../js/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

  </head>
  <body class="p-0 container-fluid vlabs-page d-flex flex-column justify-content-between">
    
    <header class="vlabs-header sticky-top bg-white">
      <!-- navbar -->
            <nav class="p-0 navbar navbar-light d-flex align-items-stretch">	      
        <div class="d-flex justify-content-center">        
          <a href="../LandingPage/Introduction.jsp" class="navbar-brand">
          <img src="../images/logo.PNG" alt="vlabs logo">
          </a>
        </div>
        
        <div id="headerNavbar" class="border-top flex-grow-1 d-flex align-items-center">
          <a href="#" class="navbar-brand"></a><h1 class="text-center">Virtual Lab</h1> </a>
          <ul class="navbar-nav ml-auto text-center d-flex flex-md-row">
            <li class="nav-item px-2 m-1">
              <a href="../LandingPage/Introduction.jsp">HOME</a>
            </li>
            <li class="nav-item px-2 m-1">
              <a href="https://www.siesgst.edu.in/">SIES GST</a>
            </li>
            <li class="nav-item px-2 m-1">
              <a href="../contact.jsp">CONTACT</a>
            </li>
          </ul>
        </div>
      </nav>
    </header>
    <div class="container-fluid flex-fill d-flex flex-column vlabs-page-main">
      <div class="row py-4 px-4 breadcrumbs"><a href="../LandingPage/Introduction.jsp" class="sidebar-a">
	Computer Science and Engineering
</a></div>
      <div class="row flex-grow-1 px-4 d-flex flex-nowrap">
	<div class="nav flex-column sidebar nav-menu flex-shrink-0" id="menu">  
<a href="Aim.jsp" class="p-2">	
    Aim	
  </a>
  <a href="Theory.jsp" class="p-2">	
    Theory	
  </a>
  <a href="Pretest.jsp" class="p-2">	
    Pre-Test
  </a>
  <a href="Algorithm.jsp" class="p-2">	
    Algorithm	
  </a>
  <a href="../Stack.jar"download="Stack.jar" class="p-2">	
    Visualizer	
  </a>
  <a href="Posttest.jsp" class="p-2">	
    Post-Test	
  </a>
</div>
	<div class="vlabs-page-content px-4 pb-4 flex-grow-1">
	 <H2> THEORY : </H2>
    <P>
      A stack is an ordered list in which all insertions and deletions are made at one end, called the top. Just like a plate stack in canteens where plates are added to the top and later removed from the top.
      <br>
      <br>
      The restrictions on a stack imply that if the elements A,B,C,D,E are added to the stack, n that order, then the first element to be removed/deleted must be E. Equivalently we say that the last element to be inserted into the stack will be the first to be removed. For this reason stacks are sometimes referred to as Last In First Out (LIFO) lists.
      <br>
      <br>
      The main function that has to be included in stack are:
      <br>
      <ol>
        <li><b>isfull()</b>: This is to check weather the stack is full or not. Returns true if stack is full. </li>
        <li><b>isempty()</b>: This is to check weather the stack is empty or not. Returns true if stack is empty. </li>
        <li><b>push()</b>: It is used to enter element at the top of the stack.</li>
        <li><b>pop()</b>: It is used to remove first element from the top of stack.</li>
        <li><b>stacktop()</b>: This function is used to return the value at the stack top.</li>
        

    </ol>

    </P>
	</div>
      </div>
    </div>
    <footer class="text-light pt-2 vlabs-footer d-flex flex-column">
      <div class="row px-5">
	<div class="col d-flex flex-column">
	  <span class="font-weight-bold vlabs-footer-sect-name pb-2 mb-3">Reachout Links</span>
	  <a href="https://www.siesgst.edu.in/" class="text-light">SIES GST</a>
	  <a href="https://www.mum.digitaluniversity.ac/" class="text-light">MU Digital</a>
	  <a href="https://siesedu.in/home.htm" class="text-light">Juno Portal SIES GST</a>
	</div>
	<div class="col d-flex flex-column">
	  <span class="font-weight-bold vlabs-footer-sect-name pb-2 mb-3">Contact Us</span>
	  <span> Phone: SIES-GST Enquiry: 022-6108-2400 </span>
	  <span> Email: siesgst@sies.edu.in </span>
	</div>
	<div class="col d-flex flex-column">
	  <span class="font-weight-bold vlabs-footer-sect-name pb-2 mb-3">Follow Us</span>
	  <div class="social-links">
	    <a class="p-2 mt-1 mr-2 d-inline-flex justify-content-center align-items-center" style="background: #2867B2;" href="https://www.linkedin.com/school/sies-graduate-school-of-technology">
	      <i class="fa fa-linkedin"></i>
	    </a>
	    <a class="p-2 mt-1 mr-2 d-inline-flex justify-content-center align-items-center" style="background: #e52d27;" href="https://www.youtube.com/c/SIESGSTWeb">
	      <i class="fa fa-youtube"></i>
	    </a>
            <a class="p-2 mt-1 mr-2 d-inline-flex justify-content-center align-items-center" style="background: #3b5998;" href="https://www.facebook.com/285062888233506/">
              <i class="fa fa-facebook"></i>
            </a>
	    <a class="p-2 mt-1 mr-2 d-inline-flex justify-content-center align-items-center" style="background: #55acee;" href="https://twitter.com/SIESGSTNerul?t=l3PTyFW0ErDg-RFppAwpzA&s=09">
	      <i class="fa fa-twitter"></i>
	    </a>
	  </div>
	</div>
      </div>
      <div class="footer-empty">
        
      </div>
    </footer>

    <script>
      
      window.addEventListener('DOMContentLoaded', (event) => {
	  const menu = document.getElementById("menu");
	  Array
	      .from(menu.children)
	      .filter(mi => mi.href === window.location.href)
	      .map(mi => mi.classList.add("current-item"));
	  
      });
      
    </script>
    <script src="../js/toggleSidebar.js">    
  </body>
</html>
</script></body></html>