<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="author" content="" />
  <link rel="icon" href="images/Favicon.png">
  <title>AAS | Contact</title>
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" href="css/css-circular-prog-bar.css">
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
  <link href="css/style.css" rel="stylesheet" />
  <link href="css/responsive.css" rel="stylesheet" />
  <link rel="stylesheet" href="css/css-circular-prog-bar.css">
  <style>
    @import url("//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css");

.footer-social-links{
    font-size: 14px;
  text-align: center;
  margin-top: 20%;
}
.footer-social-links a{
    width: 25px;
    height: 25px;
    line-height: 25px !important;
    position: relative;
    margin: 0 5px;
    text-align: center;
    display: inline-block;
    color: #111;
    
    -webkit-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);  
    -moz-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000); 
    -o-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);
    -ms-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000); 
    transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);
}
.footer-social-links a i,
.footer-social-links a span{
    position: relative;
    top: 2px;
    left: 1px; 
}
.footer-social-links a:before{
    content: "";
    display: inline-block;
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    border: 1px solid #111;
    
    -webkit-border-radius: 2px;
    -moz-border-radius: 2px;
    border-radius: 2px;
    
    -webkit-transform: rotate(45deg);
    -moz-transform: rotate(45deg);
    -o-transform: rotate(45deg);
    -ms-transform: rotate(45deg);
    transform: rotate(45deg);
    
    -webkit-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);  
    -moz-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000); 
    -o-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);
    -ms-transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000); 
    transition: all 0.27s cubic-bezier(0.300, 0.100, 0.580, 1.000);
    
}
.footer-social-links a:hover{
    color: #fff;
}
.footer-social-links a:hover:before{
    background: #111;
}
  </style>
</head>

<body>
  <div class="top_container sub_pages ">
    <!-- header section strats -->
    <header class="header_section">
      <div class="container">
        <nav class="navbar navbar-expand-lg custom_nav-container ">
          <a class="navbar-brand" href="index.php">
            <img src="images/att_logo.png" alt="">
            <span>
              AAS
            </span>
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="d-flex ml-auto flex-column flex-lg-row align-items-center">
              <ul class="navbar-nav  ">
                <li class="nav-item">
                  <a class="nav-link" href="index.php"> Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item ">
                  <a class="nav-link" href="about.php"> About </a>
                </li>

                <li class="nav-item active">
                  <a class="nav-link" href="contact.php">Contact Us</a>
                </li>

                <li class="nav-item">
                  <a class="nav-link" href="http://localhost/Attendance_Analysis_System/login.php">Login</a>
                </li>

              </ul>
            </div>
        </nav>
      </div>
    </header>
  </div>
  <!-- end header section -->

  <!-- contact section -->

  <section class="contact_section layout_padding">
    <div class="container">

      <h2 class="main-heading">
        Contact Now

      </h2>
      <p class="text-center">
        Be well, do good work, and keep in touch.

      </p>
      <div class="">
        <div class="contact_section-container">
          <div class="row">
            <div class="col-md-6 mx-auto">
              <div class="contact-form">
			  
			  <?php
			  
			  if ($_SERVER["REQUEST_METHOD"] == "POST") {
				$name = $_POST['sendermail'];
				$sendername	= $_POST['sendername'];
				$mob = $_POST['mob'];
				$msg = $_POST['input_message'];
				$to_email = "ravanrathod125@gmail.com";
				$body = " Email : $name  \n Mobile Number : $mob \n Message : $msg";
				$headers = "From: $name";

					if (mail($to_email, $sendername, $body, $headers)) {
						echo "<b>Thank you for your email. We will look into this and get back to you soon...</b>";
					} else {
						echo "Email sending failed...";
					}
				}	
			?>

			  
			  
                <form method="post" action="<?php echo $_SERVER['PHP_SELF'];?>">
                  <div>
                    <input type="text" placeholder="Name" name="sendername" autocomplete="OFF">
                  </div>
                  <div>
                    <input type="number" placeholder="Phone Number" name="mob" autocomplete="OFF">
                  </div>
                  <div>
                    <input type="email" placeholder="Email" name="sendermail" autocomplete="OFF">
                  </div>
                  <div>
                    <input type="text" placeholder="Message" class="input_message" name="input_message" autocomplete="OFF">
                  </div>
                  <div class="d-flex justify-content-center">
                    <button type="submit" class="btn_on-hover">
                      Send
                    </button>
                  </div>
                </form>

                <div class="footer-social-links">
                  <a href="https://www.facebook.com/brijesh.rathod.3367" title="Facebook" target="_blank"><i class="fa fa-facebook"></i></a>
                  <a href="https://twitter.com/rbrijesh306" title="Twitter" target="_blank"><i class="fa fa-twitter"></i></a>
                  <a href="https://instagram.com/rbrijesh11" title="Instagram" target="_blank"><i class="fa fa-instagram"></i></a>
                  <a href="https://github.com/rbrijesh11" title="Github" target="_blank"><i class="fa fa-github"></i></a>
                  <a href="http://www.kdpp.cteguj.in/" title="Dribbble" target="_blank"><i class="fa fa-dribbble"></i></a>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>

    </div>
  </section>


  <!-- end contact section -->

  <!-- footer section -->
  <section class="container-fluid footer_section">
    <p>
    Copyright © 2022 Attendance Analysis System All Rights Reserved.
    </p>
  </section>
  <!-- footer section -->

  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <script type="text/javascript" src="js/bootstrap.js"></script>
  <!-- progreesbar script -->

  </script>
  <script>
    // This example adds a marker to indicate the position of Bondi Beach in Sydney,
    // Australia.
    function initMap() {
      var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 11,
        center: {
          lat: 40.645037,
          lng: -73.880224
        },
      });

      var image = 'images/maps-and-flags.png';
      var beachMarker = new google.maps.Marker({
        position: {
          lat: 40.645037,
          lng: -73.880224
        },
        map: map,
        icon: image
      });
    }
  </script>
  <!-- google map js -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA8eaHt9Dh5H57Zh0xVTqxVdBFCvFMqFjQ&callback=initMap">
  </script>
  <!-- end google map js -->
</body>

</html>