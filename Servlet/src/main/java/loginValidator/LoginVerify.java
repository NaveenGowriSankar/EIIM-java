package loginValidator;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.websocket.Session;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class LoginVerify
 */
public class LoginVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginVerify() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter pw = response.getWriter();
		try {
			
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/groceryshop", "root", "Aspire@123");
            String name = request.getParameter("t1");
            String password = request.getParameter("t2");
 
            PreparedStatement statement = connection.prepareStatement("SELECT username FROM users WHERE username = ? AND passwd=?");
            
            statement.setString(1, name);
            statement.setString(2, password);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
            	String username = rs.getString("username");
//            	HttpSession session = request.getSession();
//    			session.setAttribute("username",un);
            	// Set the username as an attribute in the request object
                request.setAttribute("username", username);

                // Forward the request to the HTML file for further processing
                request.getRequestDispatcher("product.jsp").forward(request, response);
//            	RequestDispatcher dispatcher = request.getRequestDispatcher("/product.jsp");
//                dispatcher.forward(request, response);
            }
            else {
            	pw.println("error");
                RequestDispatcher dispatcher = request.getRequestDispatcher("LoginPage.html");
                dispatcher.forward(request, response);
                response.sendRedirect("");
            }
            connection.close();
        }
        catch (Exception e) {
        	pw.println(e);
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
