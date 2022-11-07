<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="validate.js"></script>
</head>
<body>
<form method="post" action="DatabaseConn.java" name="StudentRegistration">

<table cellpadding="3" width="30%" bgcolor="99FFFF" align="center" cellspacing="3">

<tr>
<td colspan=2>
<center><font size=4><b>Student Registration Form</b></font></center>
</td>
</tr>

<tr>
<td>User Name</td>
<td><input type="text" placeholder ="user_name" name="username" size="30"></td>
</tr>

<tr>
<td>First Name</td>
<td><input type="text" placeholder ="first_name" name="fname" size="30"></td>
</tr>

<tr>
<td>Last Name</td>
<td><input type="text" placeholder ="last_name" name="lname" size="30"></td>
</tr>

<tr>
<td>EmailId</td>
<td><input type="text" placeholder ="@gmail.com" name="emailid" id="emailid" size="30"></td>
</tr>

<tr>
<td>Phone no :</td>
<td>
<select >
<option value="91">+91</option>
<option value="+92">+92</option>
<option value="+93">+93</option>
<option value="+94">+94</option>
<option value="404">404</option>
</select>
<input type="Phone" placeholder="phone_no" name="phno"size="20">
</td>
</tr>

<tr>
<td>Gender</td>
<td><input type="radio" name="Gender" value="male" size="10">Male
<input type="radio" name="Gender" value="Female" size="10">Female</td>
</tr>

<tr>
<td>DOB</td>
<td><input type="text" placeholder="DD/MM/YYYY" name="dob" id="dob" size="30"></td>
</tr>

<tr>
<td>Status</td>
<td><select name="status" >
<option value="-1" selected >select..</option>
<option value="Single">Single</option>
<option value="Married">Married</option>
</select></td>
</tr>

<tr>
<td>State</td>
<td><select name="state">
<option value="-1" selected>select..</option>
<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="New Delhi">New Delhi</option>
<option value="Mumbai">Mumbai</option>
<option value="Goa">Goa</option>
<option value="Patna">Patna</option>
<option value="Telangana">Telangana</option>
<option value="Tamil Nadu">Tamil Nadu</option>
</select></td>
</tr>

<tr>
<td>City :</td>
<td><input type="City" placeholder ="city" name="city" size="30"></td>
</tr>

<tr>
<td>PinCode</td>
<td><input type="text" placeholder ="zip_code" name="pincode" id="pincode" size="30"></td>
</tr>

<tr>
<td>Password :</td>
<td><input type="password" placeholder ="password" name="password" size="30"></td>
</tr>

<tr>
<td><input type="reset"></td>
<td colspan="2"><input type="submit" value="Submit" /></td>
</tr>
</table>
</form>
</body>
</html>