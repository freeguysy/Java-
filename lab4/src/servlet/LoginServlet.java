package servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import util.DaoFactory;

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
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String stuno = request.getParameter("stuno");
		String password = request.getParameter("password");
		String stuname = DaoFactory.getUserDaoImpl().getUser(stuno, password);
		if(stuname != null) {
			request.setAttribute("stuname", stuname);
			request.getSession().setAttribute("msg", "");
			//转发
			request.getRequestDispatcher("result.jsp").forward(request, response);
		}else {
			//重定向
			request.getSession().setAttribute("msg", "你的学号或密码有误，请重新输入");
			response.sendRedirect("index.jsp");
		}
	}

}
