<HTML><HEAD><TITLE> feedback Form </TITLE>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Welcome to Virtual Labs</title>
    <link rel="shortcut icon" href="../images/small-logo.png">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
    <script src="../js/jquery-3.4.1.slim.min.js"></script>
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans&amp;family=Raleway&amp;display=swap" rel="stylesheet">
    </HEAD>
<BODY>
    <section class="text-gray-600 body-font relative">
  <div class="container px-5 py-24 mx-auto flex sm:flex-nowrap flex-wrap">
    <div class="lg:w-2/3 md:w-1/2 bg-gray-300 rounded-lg overflow-hidden sm:mr-10 p-10 flex items-end justify-start relative">
      <iframe width="100%" height="100%" class="absolute inset-0" frameborder="0" title="map" marginheight="0" marginwidth="0" scrolling="no" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15085.90265873353!2d73.023078!3d19.042813!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xef26c52d7d73816e!2sSIES%20Graduate%20School%20of%20Technology!5e0!3m2!1sen!2sin!4v1639053344248!5m2!1sen!2sin" style="filter: grayscale(1) contrast(1.2) opacity(0.4);"></iframe>
      <div class="bg-white relative flex flex-wrap py-6 rounded shadow-md">
        <div class="lg:w-1/2 px-6">
          <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs">ADDRESS</h2>
          <p class="mt-1">Sri Chandrasekarendra Saraswati Vidyapuram Sector-V, Nerul, Navi Mumbai, Maharashtra 400706</p>
        </div>
        <div class="lg:w-1/2 px-6 mt-4 lg:mt-0">
          <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs">EMAIL</h2>
          <a class="text-indigo-500 leading-relaxed">siesgst@sies.edu.in</a>
          <h2 class="title-font font-semibold text-gray-900 tracking-widest text-xs mt-4">PHONE</h2>
          <p class="leading-relaxed">022-6108-2400</p>
        </div>
      </div>
    </div>
    <form method="post" action="Response.jsp" class="lg:w-1/3 md:w-1/2 bg-white flex flex-col md:ml-auto w-full md:py-8 mt-8 md:mt-0" novalidate>
      <h2 class="text-gray-900 text-lg mb-1 font-medium title-font">Feedback</h2>
      <p class="leading-relaxed mb-5 text-gray-600">Your Feedback is valueable to us!! Keep it within 150 characters.</p>
      <div class="relative mb-4">
        <label for="name" class="leading-7 text-sm text-gray-600">Name</label>
        <input type="text" id="name" name="name" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out required">
        <h2 id="resultName"></h2>
      </div>
      <div class="relative mb-4">
        <label for="email" class="leading-7 text-sm text-gray-600">Email</label>
        <input type="email" id="email" name="email" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" required>
        <h2 id="result"></h2>
      </div>
      <div class="relative mb-4">
        <label for="message" class="leading-7 text-sm text-gray-600">Message</label>
        <textarea id="message" name="message" class="w-full bg-white rounded border border-gray-300 focus:border-indigo-500 focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" maxlength="150" required></textarea>
<!--        <h2 id="resultMessage"></h2>-->
      </div>
      <button class="text-white bg-indigo-500 border-0 py-2 px-6 focus:outline-none hover:bg-indigo-600 rounded text-lg">Submit</button>
      <!--<p class="text-xs text-gray-500 mt-3">Chicharrones blog helvetica normcore iceland tousled brook viral artisan.</p>-->
    </div>
  </form>
</section>
    <script>
  
  const validateEmail = (email) =>{
  return email.match(
    /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
  );
};

const validate = () => {
  const $result = $('#result');
  const email = $('#email').val();
  $result.text('');

  if (validateEmail(email)) {
    $result.text(email + ' is valid :)');
    $result.css('color', 'green');
  } else {
    $result.text(email + ' is not valid :(');
    $result.css('color', 'red');
  }
  return false;
};

const validateName = (name) =>{
  return name.match(
    /^[a-zA-Z ]{2,30}$/
  );
};

const validateNam = () => {
  const $resultName = $('#resultName');
  const name = $('#name').val();
  $resultName.text('');

  if (validateName(name)) {
    $resultName.text(name + ' is valid :)');
    $resultName.css('color', 'green');
  } else {
    $resultName.text(name + ' is not valid :(');
    $resultName.css('color', 'red');
  }
  return false;
};

//const validateMessage = (message) =>{
//  return message.match(
//    /^\S/
//  );
//};
//
//  
//const validateMessag = () => {
//  const message = $('#message').val();
//  const $resultMessage = $('#resultMessage');
//  $resultMessage.text('');
//
//  if (validateName(message)) {
////    $resultMessage.text(message + ' is valid :)');
//    const message = $('#message').val();
//    $resultMessage.css('color', 'green');
//    var count = message.length;
//    $resultMessage.text(150 - count + ' characters remainng');
//  } else {
//    $resultMessage.text(message + ' is not valid :(');
//    $resultMessage.css('color', 'red');
//  }
//  return false;
//};

$('#name').on('input', validateNam);
$('#email').on('input', validate);
//$('#message').on('input', validateMessag);

   
    </script>
</BODY>
</html>