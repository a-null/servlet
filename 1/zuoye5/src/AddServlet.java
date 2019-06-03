import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DB.DB;


import model.User;


public class AddServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");//设置请求编码
		response.setContentType("UTF-8");//设置响应编码
		String username=request.getParameter("username");//获得jsp填入的用户名
		String password=request.getParameter("password");//获得jsp填入的密码
		//User user=(User) request.getSession().getAttribute("user");//从session中取出当前用户对象
		HttpSession session = request.getSession();//获得session对象，用来保存信息
		//////////////封装数据
		User us=new User();
		us.setUsername(username);
		us.setPassword(password);
		try {
			if(new DB().addUser(us)){
				response.sendRedirect("registersuccess.jsp");
			}
			else
				response.sendRedirect("Regster.jsp");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		session.setAttribute("user", us);///把对象us保存到session中
	}

		public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doGet(request,response);
		
	}

	

}
