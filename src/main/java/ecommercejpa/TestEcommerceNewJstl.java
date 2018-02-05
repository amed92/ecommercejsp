package ecommercejpa;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ecommerce.Application;
import ecommerce.dao.ClientDao;
import ecommerce.dao.ProduitDao;
import ecommerce.model.Client;
import ecommerce.model.ClientId;
import ecommerce.model.Produit;

/**
 * Servlet implementation class TestEcommerceNewJstl
 */
@WebServlet("/TestEcommerceNewJstl")
public class TestEcommerceNewJstl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public TestEcommerceNewJstl() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProduitDao produitDao = Application.getInstance().getProduitDao();
		
		List<Produit> produit = produitDao.findAll();
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
