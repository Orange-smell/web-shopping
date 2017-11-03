package brand;

import java.io.IOException;

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
 * Servlet implementation class LoginAction
 */
@WebServlet("/LoginAction")
public class LoginAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    
        // TODO Auto-generated constructor stub
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Get Login Action");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String id = request.getParameter("lg_id").trim();
		String pw = request.getParameter("lg_pw").trim();
		String code = null;

		shopMemberDAO sDao = new shopMemberDAO();
		shopMemberDTO sDto = sDao.ckLogin(id, pw);
		
		if(sDto != null){   
			System.out.println("id = " + id);
			System.out.println("pw = " + pw);
			 // 세션초기화(혹시 모를 앞의 남아있는 값 제거)
			session.removeAttribute("name");
			session.removeAttribute("id");
			session.setAttribute("loginUser", sDto); // 세션이름
			code = "IndexAction";
		   
			} else {
				code = "login.jsp";
				request.setAttribute("code", "2");
				RequestDispatcher dis = request.getRequestDispatcher(code);
				dis.forward(request, response);
			}	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String code = null;
		System.out.println("doPOST LoginAction");
	      
	      request.setCharacterEncoding("UTF-8");
	      
	      HttpSession session = request.getSession();
	      
	      String id = request.getParameter("lg_id").trim();
	      String pw = request.getParameter("lg_pw").trim();
	 
	      
	      shopMemberDAO sDao = new shopMemberDAO();
	      shopMemberDTO sDto = sDao.ckLogin(id, pw);
	      if(sDto != null){   
				System.out.println("id = " + id);
				System.out.println("pw = " + pw);
				 // 세션초기화(혹시 모를 앞의 남아있는 값 제거)
				session.removeAttribute("name");
				session.removeAttribute("id");
				session.setAttribute("loginUser", sDto); // 세션이름
				code = "IndexAction";
			   
				} else {
					code = "login.jsp";
					request.setAttribute("code", "2");
					
				}	
	      RequestDispatcher dis = request.getRequestDispatcher(code);
			dis.forward(request, response);

	   
	   }    
	}