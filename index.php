<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
    <html>
        <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>The Holiday Destination</title>
        </head>
        <body style="background-image: -webkit-repeating-radial-gradient(lightseagreen, powderblue, hotpink)">
            <div>
            <div>
        <?php include('includes/navbar.php');?>
            <div>
                <?php include('includes/carousel.php');?>
            </div>

        <div>
            <h1 class="heading">Our Available Packages</h1>
            <style>
                .heading{
                    text-align: center;
                    font-size: xx-large;
                    padding-top: 30px;
                    padding-bottom: 45px;
                    fill: burlywood;
                }
            </style>
        </div>
                <div>
                    <?php include('includes/home_tour_packages.php');?>
                </div>
                <div style="text-align: center; padding-bottom: 30px; padding-top: 30px">
                    <button onclick="location.href='tourpackages.php'" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                        More packages
                        <svg aria-hidden="true" class="ml-2 -mr-1 w-5 h-5" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg"><path fill-rule="evenodd" d="M10.293 3.293a1 1 0 011.414 0l6 6a1 1 0 010 1.414l-6 6a1 1 0 01-1.414-1.414L14.586 11H3a1 1 0 110-2h11.586l-4.293-4.293a1 1 0 010-1.414z" clip-rule="evenodd"></path></svg>
                    </button>
                </div>
                <div>
                    <?php include('includes/footer.php');?>
                </div>
                <script src="https://unpkg.com/flowbite@1.5.3/dist/flowbite.js"></script>
        </body>
    </html>