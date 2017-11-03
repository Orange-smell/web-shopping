package brand;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



/**
 * Servlet implementation class LoginOutAction
 */
@WebServlet("/LoginOutAction")
public class LoginOutAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginOutAction() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Get LoginOut");
	
		HttpSession session = request.getSession();
		// true(default)
		// session을 반환, 만약 세션이 존재하지 않을 경우 새로운 세션 생성
		
		//false
		//session을 반환, 만약 세션이 존재하지 않을 경우 null을 반환
		
		if(session != null){
			session.invalidate();
		}
		response.sendRedirect("IndexAction");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do Post LoginOut");
	
	}

}
