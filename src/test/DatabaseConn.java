package test;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDataServlet
 */
public class DatabaseConn extends HttpServlet {

 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 System.out.println("DatabaseConn : doPost(-,-)");
  // TODO Auto-generated method stub
  PrintWriter out = response.getWriter();
  response.setContentType("text/html");
  String username = request.getParameter("username");    
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

  // validate given input
 /* if (username.isEmpty() || fname.isEmpty() || lname.isEmpty() || emailid.isEmpty() || gender.isEmpty() || dob.isEmpty() || status.isEmpty() || state.isEmpty() || city.isEmpty() || password.isEmpty()) {
   RequestDispatcher rd = request.getRequestDispatcher("register.jsp");
   out.println("<font color=red>Please fill all the fields</font>");
   rd.include(request, response);
  } else {
 */  // inserting data into mysql database 
   // create a test database and student table before running this to create table
   //create table student(name varchar(100), userName varchar(100), pass varchar(100), addr varchar(100), age int, qual varchar(100), percent varchar(100), year varchar(100));
   try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    // loads mysql driver

    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","system","root"); 

    String query = "insert into register values(?,?,?,?,?,?,?,?,?,?,?,?)";

    PreparedStatement ps = con.prepareStatement(query);

	ps.setString(1, username);
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

	int k = ps.executeUpdate(); // execute it on test database
    if(k>=1)
    {
    	ServletContext sc = getServletContext();
    	RequestDispatcher rd = sc.getRequestDispatcher("welcome.jsp");
    	rd.forward(request, response);
    }
    else
    {
    	out.println("<center><font size = '50' color = 'red'>Invalid Username OR password <br>Please Try Again");
    	ServletContext sc = getServletContext();
    	RequestDispatcher rd = sc.getRequestDispatcher("/successurl");
    	rd.include(request, response);
    }
    ps.close();
    con.close();
   } catch (ClassNotFoundException | SQLException e) {
    // TODO Auto-generated catch block
    e.printStackTrace();
   }
  }
 }
