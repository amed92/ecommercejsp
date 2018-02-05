package ecommercejpa;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecommerce.Application;
import ecommerce.dao.LoginDao;
import ecommerce.model.Login;
import ecommerce.model.Role;

/**
 * Servlet implementation class InscriptionServlet
 */
@WebServlet("/InscriptionServlet")
public class InscriptionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InscriptionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Inscription using get");
		request.getSession().setAttribute("inscription", "0");
		request.getSession().setAttribute("errorMessage", "User form to sign up");
		request.getRequestDispatcher("inscription.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userLogin = request.getParameter("login");
		String userPwd = request.getParameter("password");
		String role = request.getParameter("role");
		
		Login login = new Login(userLogin, userPwd, ("user".equals(role) ? Role.USER : Role.ADMIN));
		LoginDao loginDao = Application.getInstance().getLoginDao();
		
		if (loginDao.findLoginByLogin(login.getLogin()) == null) {
			loginDao.create(login);
			response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("inscription", "0");
			request.setAttribute("errorMessage", "Login already exists");
			request.getRequestDispatcher("inscription.jsp").include(request, response);
		}
	}

}
