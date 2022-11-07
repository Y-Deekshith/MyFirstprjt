<%@ page import ="java.sql.*" %>
<%@page import="oracle.jdbc.driver.*" %>
<%@page import="oracle.sql.*" %>
<%@page import="oracle.jdbc.driver.OracleDriver;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%

	response.setContentType("text/html");
    String user = request.getParameter("username");    
    String fname = request.getParameter("fname");
    String lname = request.getParameter("lname");
    String emailid = request.getParameter("emailid");
    int phno = Integer.parseInt(request.getParameter("phno"));
    String gender = request.getParameter("gender");
    String dob = request.getParameter("dob");
    String status = request.getParameter("status");
    String state = request.getParameter("state");
    String city = request.getParameter("city");
    int pincode = Integer.parseInt(request.getParameter("pincode"));
    String password = request.getParameter("password");
	try
	{
    Connection con = null;
	Class.forName("oracle.jdbc.driver.OracleDriver");
    con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","root");
    PreparedStatement ps = null;
    ps = con.prepareStatement("insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1, user);
	ps.setString(2, fname);
	ps.setString(3, lname);
	ps.setString(4, emailid);
	ps.setInt(5, phno);
	ps.setString(6, gender);
	ps.setString(7, dob);
	ps.setString(8, status);
	ps.setString(9, state);
	ps.setString(10, city);
	ps.setInt(11, pincode);
	ps.setString(12, password);
    int i = ps.executeUpdate();
    if (i > 0) {
      // session.setAttribute("username", user);
        response.sendRedirect("welcome.jsp");
       //out.print("Registration Successfull!"+"<a href='login.jsp'>Go to Login</a>");
    } else 
    {
        response.sendRedirect("login.jsp");
    }
    con.close();
    }catch(ClassNotFoundException | SQLException ob)
	{
	
	}
%>