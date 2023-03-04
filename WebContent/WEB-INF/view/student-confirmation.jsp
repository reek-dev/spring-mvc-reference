<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>student-confirmation</title>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
    
    
    body {
    font-family: 'Poppins', sans-serif;
    }
    </style>
  </head>
  
  <body>
  <!--
  the expressions ${student.firstName} and ${student.lastName} will call
  student.getFirstName() and student.getLastName() behind-the-scenes respectively.
   -->
  The student received: ${student.firstName} ${student.lastName}
  </body>
</html>