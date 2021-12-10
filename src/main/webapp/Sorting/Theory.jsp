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
  <a href="../sortvisualiser.jar" download="sortvisualiser.jar" class="p-2">	
    Visualizer	
  </a>
  <a href="Posttest.jsp" class="p-2">	
    Post-Test	
  </a>
</div>
	<div class="vlabs-page-content px-4 pb-4 flex-grow-1">
	 <H2> THEORY : </H2>
    <P>
        <h4 class="alert-heading">Quick Sort</h4>
        <br>
        QuickSort is a Divide and Conquer algorithm. It picks an element as pivot and partitions the given array around the picked pivot.<br>
        <br>
        The key process in quickSort is partition(). Target of partitions is, given an array and an element x of array as pivot, put x at its correct position in sorted array and put all smaller elements (smaller than x) before x, and put all greater elements (greater than x) after x. All this should be done in linear time.<br>
        <br>
        Analysis of QuickSort <br>
Time taken by QuickSort, in general, can be written as following. <br>
<br>
<span class="alert alert-secondary" role="alert">
    T(n) = T(k) + T(n-k-1) + θ(n)</span><br>
    <br>
The first two terms are for two recursive calls, the last term is for the partition process. k is the number of elements which are smaller than pivot.<br>
The time taken by QuickSort depends upon the input array and partition strategy. Following are three cases.<br>



Worst Case: The worst case occurs when the partition process always picks greatest or smallest element as pivot. If we consider above partition strategy where last element is always picked as pivot, the worst case would occur when the array is already sorted in increasing or decreasing order. Following is recurrence for worst case. <br>
<br>
<div style="display: inline-block" class="alert alert-secondary" role="alert">
    T(n) = T(0) + T(n-1) + θ(n)<br>
which is equivalent to  <br>
T(n) = T(n-1) + θ(n)</div><br>
    <br>


The solution of above recurrence is  θ        (n²).<br>
<br>
Best Case:<br> The best case occurs when the partition process always picks the middle element as pivot. Following is recurrence for best case. <br>
<br>
<span class="alert alert-secondary" role="alert">
    T(n) = 2T(n/2) + θ(n)</span><br>
    <br>

The solution of above recurrence is θ        (nLogn).<br>
<br>
Average Case: <br>
To do average case analysis, we need to consider all possible permutation of array and calculate time taken by every permutation which doesn’t look easy. <br>
We can get an idea of average case by considering the case when partition puts O(n/9) elements in one set and O(9n/10) elements in other set. Following is recurrence for this case. <br>
<br>
<span class="alert alert-secondary" role="alert">
    T(n) = T(n/9) + T(9n/10) + θ(n)</span><br>
    <br>
Solution of above recurrence is also O(nLogn)
Although the worst case time complexity of QuickSort is O(n2) which is more than many other sorting algorithms like Merge Sort and Heap Sort, QuickSort is faster in practice, because its inner loop can be efficiently implemented on most architectures, and in most real-world data. QuickSort can be implemented in different ways by changing the choice of pivot, so that the worst case rarely occurs for a given type of data. However, merge sort is generally considered better when data is huge and stored in external storage. <br>
<br>
Is QuickSort stable? <br>
The default implementation is not stable. However any sorting algorithm can be made stable by considering indexes as comparison parameter. <br>
<br>
Is QuickSort In-place? <br>
As per the broad definition of in-place algorithm it qualifies as an in-place sorting algorithm as it uses extra space only for storing recursive function calls but not for manipulating the input. <br>
<br>
<br>
<h4 class="alert-heading">Merge Sort</h4>
<br>
Merge Sort is a Divide and Conquer algorithm. It divides the input array into two halves, calls itself for the two halves, and then merges the two sorted halves. The merge() function is used for merging two halves. The merge(arr, l, m, r) is a key process that assumes that arr[l..m] and arr[m+1..r] are sorted and merges the two sorted sub-arrays into one.<br>
Time Complexity: Sorting arrays on different machines. Merge Sort is a recursive algorithm and time complexity can be expressed as following recurrence relation. <br>
T(n) = 2T(n/2) + θ(n)<br>
<br>
The above recurrence can be solved either using the Recurrence Tree method or the Master method. It falls in case II of Master Method and the solution of the recurrence is θ(nLogn). Time complexity of Merge Sort is  θ(nLogn) in all 3 cases (worst, average and best) as merge sort always divides the array into two halves and takes linear time to merge two halves.<br>
<br>
Auxiliary Space: O(n)<br>
<br>
Algorithmic Paradigm: Divide and Conquer<br>
<br>
Sorting In Place: No in a typical implementation<br>
<br>
Stable: Yes<br>
<br>
<br>
<h4 class="alert-heading">Bubble Sort</h4>
<br>
Bubble Sort is the simplest sorting algorithm that works by repeatedly swapping the adjacent elements if they are in wrong order.<br>
<br>
Worst and Average Case Time Complexity: O(n*n). Worst case occurs when array is reverse sorted.<br>
<br>
Best Case Time Complexity: O(n). Best case occurs when array is already sorted.<br>
<br>
Auxiliary Space: O(1)<br>
<br>
Boundary Cases: Bubble sort takes minimum time (Order of n) when elements are already sorted.<br>
<br>
Sorting In Place: Yes<br>
<br>
Stable: Yes<br>
<br><br>
<h4 class="alert-heading">Selection Sort</h4>
<br>
The selection sort algorithm sorts an array by repeatedly finding the minimum element (considering ascending order) from unsorted part and putting it at the beginning. The algorithm maintains two subarrays in a given array.<br>
1) The subarray which is already sorted. <br>
2) Remaining subarray which is unsorted.<br>
In every iteration of selection sort, the minimum element (considering ascending order) from the unsorted subarray is picked and moved to the sorted subarray. <br>
<br>
Time Complexity: O(n2) as there are two nested loops.<br>
<br>
Auxiliary Space: O(1) <br>
<br>
The good thing about selection sort is it never makes more than O(n) swaps and can be useful when memory write is a costly operation. <br>
<br>
Stability : The default implementation is not stable. However it can be made stable. Please see stable selection sort for details.<br>
<br>
In Place : Yes, it does not require extra space.<br>
<br><br>
<h4 class="alert-heading">Insertion Sort</h4><br>
Insertion sort is a simple sorting algorithm that works similar to the way you sort playing cards in your hands. The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part.<br>
<br>
Time Complexity: O(n^2) <br>
<br>
Auxiliary Space: O(1)<br>
<br>
Boundary Cases: Insertion sort takes maximum time to sort if elements are sorted in reverse order. And it takes minimum time (Order of n) when elements are already sorted.<br>
<br>
Sorting In Place: Yes<br>
<br>
Stable: Yes<br>
<br>
<br>
<br>
<h4 class="alert-heading">Counting Sort</h4><br>
Counting sort is a sorting technique based on keys between a specific range. It works by counting the number of objects having distinct key values (kind of hashing). Then doing some arithmetic to calculate the position of each object in the output sequence.<br>
<br>
Time Complexity: O(n+k) where n is the number of elements in input array and k is the range of input. <br>
<br>
Auxiliary Space: O(n+k)<br>
<br>
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