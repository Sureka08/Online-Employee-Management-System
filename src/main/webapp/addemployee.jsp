<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>ADD EMPLOYEE</title>
    <link rel= "stylesheet" type="text/css" href="addemployee.css">
    
</head>
<body>
<script src="addemployee.js"></script>

<div class="container">
<a href="admin.jsp" class="back-btn"> Back</a>



    <h1>Employee Registration Form</h1>
    
    
    <form method="post" action="addempc" >
        
        <div class="form-section">
            <div class="form-title">Personal Details</div>
            

            <label for="firstName">First Name *</label>
            <input type="text" id="firstName" name="firstName" required>

          
            <label for="lastName">Last Name *</label>
            <input type="text" id="lastName" name="lastName" required>

            <label for="gender">Gender</label>
            <select name="gender" id="gender">
                <option value="">Please Select</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select>

            <label for="dob">Date of Birth</label>
            <input type="date" id="dob" name="dob" placeholder="YYYY-MM-DD">
            <br>

            <label for="nationality">Nationality</label>
            <select name="nationality" id="nationality">
                <option value="">Please Select</option>
                <option value="Indian">Indian</option>
                <option value="American">American</option>
                <option value="Australian">Australian</option>
                <option value="German">German</option>
                <option value="Japanese">Japanese</option>
                <option value="Canadian">Canadian</option>
                <option value="French">French</option>
                <option value="SriLankan">SriLankan</option>
                <option value="Chinese">Chinese</option>
                <option value="Russian">Russian</option>
                <option value="Italian">Italian</option>
                <option value="Other">Other</option>
            </select>

            <label for="email">Email</label>
            <input type="email" id="email" name="email">

            
            <label for="mobile">Mobile</label>
            <input type="text" id="mobile" name="mobile">
            
             <label for="address">Address</label>
            <input type="text" id="address" name="address">
            
        </div>
        <br>

       
        <div class="button">
            <input type="submit" value="Register Employee">
        </div>


    </form>
</div>

</body>
</html>