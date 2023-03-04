<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Learning Spring MVC</title>
    
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@500&display=swap');
    
    
    body {
    font-family: 'Poppins', sans-serif;
    }
    </style>
  </head>
  
  <body>
  
  <!--
  
  1. When this form is loaded,
  Spring MVC will call student.getFirstName() and student.getLastName()
  
  2. When this form is submitted,
  Spring MVC will call student.setFirstName() and student.setLastName()
  
  -->
  
  <!-- The 'modelAttribute' value must match the one in the StudentController class -->
  <form:form action="processForm" modelAttribute="student">
  
  
  <!-- the 'path' values are the actual property names in the Student class -->
  First name: <form:input path="firstName" />
  <br><br>
  Last name: <form:input path="lastName" />
  <br><br>
  
  <input type="submit" value="Submit"/>
  </form:form>
  
  </body>
</html>