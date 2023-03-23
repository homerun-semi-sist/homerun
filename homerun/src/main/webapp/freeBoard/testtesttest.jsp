<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en" class="light-style layout-menu-fixed" dir="ltr" data-theme="theme-default" data-assets-path="../assets/"
    data-template="vertical-menu-template-free">

<head>
    <meta charset="utf-8" />
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0" />

    <title>Tabs and pills - UI elements | Sneat - Bootstrap 5 HTML Admin Template - Pro</title>

    <meta name="description" content="" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="../assets/board/vendor/css/core_copy2.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="../assets/board/vendor/css/theme-default_copy2.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="../assets/board/css/demo.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
 <style type="text/css">
	#naavs-top-home, #naavs-top-profile, #naavs-top-messages {
		 opacity: 1;
		} 
</style> 
</head>

<body>
    <div class="content-wrapper">
            <!-- Content -->

            
             
              <div class="row">
                <div class="col-xl-6">
                  <h6 class="text-muted">Basic</h6>
                  <div class="naav-align-top mb-4">
                    <ul class="naav naav-tabs" role="tablist">
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link active"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-home"
                          aria-controls="naavs-top-home"
                          aria-selected="true"
                        >
                          Home
                        </button>
                      </li>
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-profile"
                          aria-controls="naavs-top-profile"
                          aria-selected="false"
                        >
                          Profile
                        </button>
                      </li>
                      <li class="naav-item">
                        <button
                          type="button"
                          class="naav-link"
                          role="tab"
                          data-bs-toggle="tab"
                          data-bs-target="#naavs-top-messages"
                          aria-controls="naavs-top-messages"
                          aria-selected="false"
                        >
                          Messages
                        </button>
                      </li>
                    </ul>
                    <div class="tab-content">
                      <div class="tab-pane fade show active" id="naavs-top-home" role="tabpanel">
                        <p>
                          Icing pastry pudding oat cake. Lemon drops cotton candy caramels cake caramels sesame snaps
                          powder. Bear claw candy topping.
                        </p>
                        <p class="mb-0">
                          Tootsie roll fruitcake cookie. Dessert topping pie. Jujubes wafer carrot cake jelly. Bonbon
                          jelly-o jelly-o ice cream jelly beans candy canes cake bonbon. Cookie jelly beans marshmallow
                          jujubes sweet.
                        </p>
                      </div>
                      <div class="tab-pane fade" id="naavs-top-profile" role="tabpanel">
                        <p>
                          Donut dragée jelly pie halvah. Danish gingerbread bonbon cookie wafer candy oat cake ice
                          cream. Gummies halvah tootsie roll muffin biscuit icing dessert gingerbread. Pastry ice cream
                          cheesecake fruitcake.
                        </p>
                        <p class="mb-0">
                          Jelly-o jelly beans icing pastry cake cake lemon drops. Muffin muffin pie tiramisu halvah
                          cotton candy liquorice caramels.
                        </p>
                      </div>
                      <div class="tab-pane fade" id="naavs-top-messages" role="tabpanel">
                        <p>
                          Oat cake chupa chups dragée donut toffee. Sweet cotton candy jelly beans macaroon gummies
                          cupcake gummi bears cake chocolate.
                        </p>
                        <p class="mb-0">
                          Cake chocolate bar cotton candy apple pie tootsie roll ice cream apple pie brownie cake. Sweet
                          roll icing sesame snaps caramels danish toffee. Brownie biscuit dessert dessert. Pudding jelly
                          jelly-o tart brownie jelly.
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
             </div>
          </div>
      
                


    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="../assets/board/vendor/libs/jquery/jquery.js"></script>
    <script src="../assets/board/vendor/libs/popper/popper.js"></script>
    <script src="../assets/board/vendor/js/bootstrap.js"></script>
    <script src="../assets/board/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="../assets/board/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="../assets/board/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
</body>

</html>