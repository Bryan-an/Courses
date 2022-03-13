package connection.pildoras.es;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConectCRUD
 */
@WebServlet("/ConectCRUD")
public class ConectCRUD extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ConectCRUD() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());\

		response.setContentType("text/html");

		String jdbcUrl =
				"jdbc:mysql://localhost:3306/orders_management_crud?useSSL=false";
		String user = "root";
		String password = "";

		String driver = "com.mysql.cj.jdbc.Driver";

		try {
			PrintWriter out = response.getWriter();

			out.print("DB name: " + jdbcUrl + "</br>");

			Class.forName(driver);

			Connection myConnection =
					DriverManager.getConnection(jdbcUrl, user, password);

			out.print("CONNECTED!!!");

			myConnection.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
