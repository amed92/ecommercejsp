package ecommercejpa;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecommerce.dao.impl.AuthDaoJpa;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Login using get");
		request.setAttribute("connected", "0");
		request.setAttribute("errorMessage", "User form to connect");
		request.getRequestDispatcher("login.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userLogin = request.getParameter("login");
		String userPwd = request.getParameter("password");
		
		AuthDaoJpa authDao = new AuthDaoJpa(userLogin, userPwd);
		
		if (authDao.login()) {
			request.getSession().setAttribute("connected", "1");
			request.getSession().setAttribute("sessionLogin", userLogin);
			request.getRequestDispatcher("produit.jsp").include(request, response);
		} else {
			System.out.println("Wrong username and or password: " + userLogin + ", " + userPwd);
			request.setAttribute("connected", "0");
			request.setAttribute("errorMessage", "Wrong username and or password");
			request.getRequestDispatcher("login.jsp").include(request, response);
		}
	}

}
