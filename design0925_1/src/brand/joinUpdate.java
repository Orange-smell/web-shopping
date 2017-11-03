package brand;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dao.shopMemberDAO;
import dto.shopMemberDTO;

/**
 * Servlet implementation class joinUpdate
 */
@WebServlet("/joinUpdate")
public class joinUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public joinUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet Update");

	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost Update");
		
		HttpSession session = request.getSession(true);
		
		request.setCharacterEncoding("UTF-8");
			
		String id = request.getParameter("id").trim();
		  String pw = request.getParameter("pw").trim();
		  String name = request.getParameter("name").trim();
		  String zipcode = request.getParameter("zipcode").trim();
		  String addr1 = request.getParameter("addr1").trim();
		  String addr2 = request.getParameter("addr2").trim();
		  String phone = request.getParameter("phone").trim();
		  String email = request.getParameter("email").trim();
		  
		  shopMemberDAO sDao = new shopMemberDAO();
		  shopMemberDTO sDto = sDao.joinUpdate(id, pw, name, zipcode, addr1, addr2, phone, email);
		  
		  String code;
		  
		  if(sDto != null){
			  session.removeAttribute("id");
		  session.setAttribute("loginUser", sDto);
		  code = "IndexAction";
		  }else{
			  code = "joinupdate.jsp";
		  request.setAttribute("code", 1);
		  }
		  	RequestDispatcher dis = request.getRequestDispatcher(code);
		  	dis.forward(request, response);
	}

}
