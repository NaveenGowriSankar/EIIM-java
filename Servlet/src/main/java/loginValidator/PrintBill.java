package loginValidator;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * Servlet implementation class PrintBill
 */
public class PrintBill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PrintBill() {
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
        response.setContentType("text/html");
        
        // Generate HTML content for thank you message and UI
        pw.println("<!DOCTYPE html>");
        pw.println("<html lang=\"en\">");
        pw.println("<head>");
        pw.println("<meta charset=\"UTF-8\">");
        pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">");
        pw.println("<title>Thank You - Visit Again</title>");
        pw.println("<style>");
        pw.println("body { font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; }");
        pw.println("h1 { color: #333; margin-top: 50px; }");
        pw.println("img { max-width: 100%; height: auto; margin-top: 30px; }");
        pw.println("a { color: #007bff; text-decoration: none; }");
        pw.println("</style>");
        pw.println("</head>");
        pw.println("<body>");
        pw.println("<h1>Thank You! Visit Again.</h1>");
        pw.println("<img src=\"OIP.jpg\" alt=\"Thank You Image\">");
        pw.println("<p>You have been successfully logged out.</p>");
        pw.println("<a href=\"NewFile.html\">Click here to continue shopping</a>");
        pw.println("</body>");
        pw.println("</html>");
        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}