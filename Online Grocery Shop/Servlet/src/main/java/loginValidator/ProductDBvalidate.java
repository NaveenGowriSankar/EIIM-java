package loginValidator;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class DBValidate
 */
public class ProductDBvalidate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductDBvalidate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		try
		{
			PrintWriter pw = response.getWriter();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop","root","Aspire@123");
			String un = request.getParameter("t1");
			PreparedStatement pst=con.prepareStatement("SELECT * FROM users WHERE username=?");
			pst.setString(1, un);
			ResultSet rs=pst.executeQuery();
			 if (rs.next())
			 {
				 RequestDispatcher reqdis = request.getRequestDispatcher("/Signup.html");
				 reqdis.forward(request, response);
			 }
			 else{
				 String firstName = request.getParameter("firstname");
			     String lastName = request.getParameter("lastname");
			     String DOB = request.getParameter("birthdaytime");
			     String phoneNumber = request.getParameter("ContactNumber");
			     String username = request.getParameter("t1");
			     String password = request.getParameter("t2");
//				 pw.println(password);
			        // JDBC connection parameters
			        // Insert user details into the database
				String sql = "INSERT INTO users (first_name, last_name, DOB, phone_number, username, passwd) VALUES (?, ?, ?, ?, ?, ?);";
			     try (PreparedStatement statement = con.prepareStatement(sql)) {
			        statement.setString(1, firstName);
			        statement.setString(2, lastName);
			        statement.setString(3, DOB);
			        statement.setString(4, phoneNumber);
			        statement.setString(5, username);
			        statement.setString(6, password);
//					 pw.println(password);
//					 pw.println("2");
			        statement.executeUpdate();
			        
			      }
			     catch(Exception e) {
						pw.println(e);
					}
			     RequestDispatcher reqdis = request.getRequestDispatcher("/PrintBill");
				 reqdis.include(request, response);
//				 pw.println("3");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
