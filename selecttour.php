<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<DOCTYPE HTML>
    <html>
        <head>
        <link rel="stylesheet" href="https://unpkg.com/flowbite@1.5.3/dist/flowbite.min.css" />
            <title>Selecting tour</title>
        </head>
        <body>

            <div>
        <?php include('includes/navbar.php');?>
      
            </div>
            
            <div class="w-full px-3 mb-6 md:mb-0">
              
      <label class="block uppercase tracking-wide text-gray-700 text-xs font-bold mb-2" for="grid-state">
        Hotel
      </label>
      <div class="relative">
        <select class="block appearance-none w-full bg-gray-200 border border-gray-200 text-gray-700 py-3 px-4 pr-8 rounded leading-tight focus:outline-none focus:bg-white focus:border-gray-500" id="grid-state">
          <option>Hotel 1</option>
          <option>Hotel 2</option>
          <option>Hotel 3</option>
        </select>
        <div class="pointer-events-none absolute inset-y-0 right-0 flex items-center px-2 text-gray-700">
          <svg class="fill-current h-4 w-4" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><path d="M9.293 12.95l.707.707L15.657 8l-1.414-1.414L10 10.828 5.757 6.586 4.343 8z"/></svg>
        </div>
        <div class="mb-6">
        <label for="age" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Age</label>
        <input type="number" id="age" name="age" placeholder="Enter Age" required min="1" max="100" class="bg-gray-50 border border-gray-300 w-48 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500"> 
        </div>
        <div class="mb-6 flex">
        <h3 class="mr-4 font-semibold text-gray-900 dark:text-white">Gender</h3>
    <div class="flex items-center mr-4">
        <input id="inline-radio" type="radio"  name="gender" value="M" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Male</label>
    </div>
    <div class="flex items-center mr-4">
        <input id="inline-2-radio" type="radio" value="F" name="gender" class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500 ">
        <label for="inline-2-radio" class="ml-2 text-sm font-medium text-gray-900 dark:text-gray-300">Female</label>
    </div>
</div>
<div class="mb-6">
    <label for="address" class="block mb-2 text-sm font-medium text-gray-900 dark:text-gray-300">Your Address</label>
    <input type="text" name="address" id="address" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" required>
  </div>
  <input type="submit" name="package_id" value="<?php echo htmlentities($package_id);?>" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded">
</form>
</div>
            

        </body>
    </html>