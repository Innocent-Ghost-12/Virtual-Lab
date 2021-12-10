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
  <a href="../sortvisualiser.jar" download="sortvisualiser.jar" class="p-2">	
    Visualizer	
  </a>
  <a href="Posttest.jsp" class="p-2">	
    Post-Test	
  </a>
</div>
	<div class="vlabs-page-content px-4 pb-4 flex-grow-1">
	  <H2> ALGORITHM : </H2>
    <P>
        <!--<h1 class="h3"> Quick Sort </h1>-->
    <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Quick Sort</h4>
  <p>function partitionFunc(left, right, pivot)<br>
      &nbsp;&nbsp;leftPointer = left<br>
      &nbsp;&nbsp;rightPointer = right - 1<br>
      <br>
      &nbsp;&nbsp;while True do<br>
        &nbsp;&nbsp;&nbsp;&nbsp;while A[++leftPointer] < pivot do<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//do-nothing<br>
        &nbsp;&nbsp;&nbsp;&nbsp;end while<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;while rightPointer > 0 && A[--rightPointer] > pivot do<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//do-nothing<br>
        &nbsp;&nbsp;&nbsp;&nbsp;end while<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;if leftPointer >= rightPointer<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break<br>
        &nbsp;&nbsp;&nbsp;&nbsp;else<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swap leftPointer,rightPointer<br>
        &nbsp;&nbsp;&nbsp;&nbsp;end if<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;end while<br>
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;swap leftPointer,right<br>
        &nbsp;&nbsp;&nbsp;&nbsp;return leftPointer<br>
        <br>
      end function<br>
      <br>
      <br>
  procedure quickSort(left, right)<br>
<br>
   &nbsp;&nbsp;if right-left <= 0<br>
      &nbsp;&nbsp;&nbsp;&nbsp;return<br>
   &nbsp;&nbsp;else <br>
      &nbsp;&nbsp;&nbsp;&nbsp;pivot = A[right]<br>
      &nbsp;&nbsp;&nbsp;&nbsp;partition = partitionFunc(left, right, pivot)<br>
      &nbsp;&nbsp;&nbsp;&nbsp;quickSort(left,partition-1)<br>
      &nbsp;&nbsp;&nbsp;&nbsp;quickSort(partition+1,right)<br>
   &nbsp;&nbsp;endif<br>
   <br>
end procedure</p>
  </div>
    <br>
    <br>
    <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Merge Sort</h4>
  <p>procedure mergesort( var a as array )<br>
      &nbsp;&nbsp;if ( n == 1 ) return a<br>
      <br>
      &nbsp;&nbsp;var l1 as array = a[0] ... a[n/2]<br>
      &nbsp;&nbsp;var l2 as array = a[n/2+1] ... a[n]<br>
      <br>
      &nbsp;&nbsp;l1 = mergesort( l1 )<br>
      &nbsp;&nbsp;l2 = mergesort( l2 )<br>
      <br>
      &nbsp;&nbsp;return merge( l1, l2 )<br>
      <br>
     end procedure<br>
        <br>
     procedure merge( var a as array, var b as array )<br>
     <br>
     &nbsp;&nbsp;var c as array<br>
     &nbsp;&nbsp;while ( a and b have elements )<br>
     &nbsp;&nbsp;&nbsp;&nbsp;if ( a[0] > b[0] )<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add b[0] to the end of c<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;remove b[0] from b<br>
     &nbsp;&nbsp;&nbsp;&nbsp;else<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;add a[0] to the end of c<br>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;remove a[0] from a<br>
     &nbsp;&nbsp;&nbsp;&nbsp;end if<br>
     &nbsp;&nbsp;end while<br>
     <br>
     &nbsp;&nbsp;while ( a has elements )<br>
      &nbsp;&nbsp;&nbsp;&nbsp;add a[0] to the end of c<br>
      &nbsp;&nbsp;&nbsp;&nbsp;remove a[0] from a<br>
   &nbsp;&nbsp;end while<br>
   <br>
   &nbsp;&nbsp;while ( b has elements )<br>
      &nbsp;&nbsp;&nbsp;&nbsp;add b[0] to the end of c<br>
      &nbsp;&nbsp;&nbsp;&nbsp;remove b[0] from b<br>
   &nbsp;&nbsp;end while<br>
   <br>
   return c<br>
end procedure</p>
  </div>
    <br>
    <br>
    <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Bubble Sort</h4>
  <p>procedure bubbleSort( list : array of items )<br>
      <br>
      &nbsp;&nbsp;loop = list.count;<br>
      <br>
      &nbsp;&nbsp;for i = 0 to loop-1 do:<br>
      &nbsp;&nbsp;&nbsp;&nbsp;swapped = false<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;for j = 0 to loop-1 do:<br>
      <br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* compare the adjacent elements */<br>  
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if list[j] > list[j+1] then<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* swap them */<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swap( list[j], list[j+1] )<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swapped = true<br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end if<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;end for<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;/*if no number was swapped that means array is sorted now, break the loop.*/<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;if(not swapped) then<br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;break<br>
      &nbsp;&nbsp;&nbsp;&nbsp;end if<br>
      <br>
   &nbsp;&nbsp;end for<br>
   <br>
end procedure return list
   <br>
  </p>
  </div>
    <br>
    <br>
  <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Selection Sort</h4>
  <p>procedure selection sort <br>
   &nbsp;&nbsp;list  : array of items<br>
   &nbsp;&nbsp;n     : size of list<br>
<br>
   &nbsp;&nbsp;for i = 1 to n - 1<br>
   &nbsp;&nbsp;/* set current element as minimum*/<br>
      &nbsp;&nbsp;&nbsp;&nbsp;min = i    <br>
  <br>
      &nbsp;&nbsp;&nbsp;&nbsp;/* check the element to be minimum */<br>
<br>
      &nbsp;&nbsp;&nbsp;&nbsp;for j = i+1 to n <br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if list[j] < list[min] then<br>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;min = j;<br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;end if<br>
      &nbsp;&nbsp;&nbsp;&nbsp;end for<br>
<br>
      &nbsp;&nbsp;&nbsp;&nbsp;/* swap the minimum element with the current element*/<br>
      &nbsp;&nbsp;&nbsp;&nbsp;if indexMin != i  then<br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;swap list[min] and list[i]<br>
      &nbsp;&nbsp;&nbsp;&nbsp;end if<br>
   &nbsp;&nbsp;end for<br>
<br>	
end procedure
   <br>
  </p>
  </div>
    <br>
    <br>
    <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Insertion Sort</h4>
  <p>procedure insertionSort( A : array of items )<br>
   &nbsp;&nbsp;int holePosition<br>
   &nbsp;&nbsp;int valueToInsert<br>
	<br>
   &nbsp;&nbsp;for i = 1 to length(A) inclusive do:<br>
	<br>
      &nbsp;&nbsp;&nbsp;&nbsp;/* select value to be inserted */<br>
      &nbsp;&nbsp;&nbsp;&nbsp;valueToInsert = A[i]<br>
      &nbsp;&nbsp;&nbsp;&nbsp;holePosition = i<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;/*locate hole position for the element to be inserted */<br>
      <br>
      &nbsp;&nbsp;&nbsp;&nbsp;while holePosition > 0 and A[holePosition-1] > valueToInsert do:<br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; A[holePosition] = A[holePosition-1]<br>
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;holePosition = holePosition -1<br>
      &nbsp;&nbsp;&nbsp;&nbsp;end while<br>
	<br>	
      &nbsp;&nbsp;&nbsp;&nbsp;/* insert the number at hole position */<br>
      &nbsp;&nbsp;&nbsp;&nbsp;A[holePosition] = valueToInsert<br>
      <br>
   &nbsp;&nbsp;end for<br>
	<br>
end procedure<br>
  </p>
  </div>
    <br>
    <br>
    <div class="alert alert-secondary" role="alert">
  <h4 class="alert-heading">Counting Sort</h4>
  <p>procedure countingSort( A : array of items )<br>
      <br>
   &nbsp;&nbsp;max = get maximum element from array.<br>
   &nbsp;&nbsp;define count array of size [max+1]<br>
<br>
   &nbsp;&nbsp;for i := 0 to max do<br>
      &nbsp;&nbsp;&nbsp;&nbsp;count[i] = 0 //set all elements in the count array to 0<br>
   &nbsp;&nbsp;done<br>
<br>
   &nbsp;&nbsp;for i := 1 to size do<br>
      &nbsp;&nbsp;&nbsp;&nbsp;increase count of each number which have found in the array<br>
   &nbsp;&nbsp;done<br>
<br>
   &nbsp;&nbsp;for i := 1 to max do<br>
      &nbsp;&nbsp;&nbsp;&nbsp;count[i] = count[i] + count[i+1] //find cumulative frequency<br>
   &nbsp;&nbsp;done<br>
<br>
   &nbsp;&nbsp;for i := size to 1 decrease by 1 do<br>
      &nbsp;&nbsp;&nbsp;&nbsp;store the number in the output array<br>
      &nbsp;&nbsp;&nbsp;&nbsp;decrease count[i]<br>
   &nbsp;&nbsp;done<br>
<br>
   &nbsp;&nbsp;return the output array<br>
   <br>
end procedure<br>
  </p>
  </div>
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
<!--<HTML>
  <BODY>
    <H2> AIM : </H2>
    <H4> To learn Digital Differential Analyser (DDA) Line Drawing Algorithm </H4>
  </BODY>
</HTML>-->
