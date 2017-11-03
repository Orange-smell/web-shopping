package brand;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProductDAO;
import dto.ProductDTO;

/**
 * Servlet implementation class IndexAction
 */
@WebServlet("/IndexAction")
public class IndexAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IndexAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Get IndexAction");
		request.setCharacterEncoding("UTF-8");
		ProductDAO bpDao = new ProductDAO();
		
		List<ProductDTO>newProductList = bpDao.listNewProduct();
		List<ProductDTO>bestProductList = bpDao.listBestProduct();
		
		request.setAttribute("newlist", newProductList);
		request.setAttribute("bestlist", bestProductList);
		
		RequestDispatcher dis =request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
		
			
	
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Post IndexAction");
		request.setCharacterEncoding("UTF-8");
		ProductDAO bpDao = new ProductDAO();
		
		List<ProductDTO>newProductList = bpDao.listNewProduct();
		List<ProductDTO>bestProductList = bpDao.listBestProduct();
		
		request.setAttribute("newlist", newProductList);
		request.setAttribute("bestlist", bestProductList);
		
		RequestDispatcher dis =request.getRequestDispatcher("index.jsp");
		dis.forward(request, response);
	}

}
