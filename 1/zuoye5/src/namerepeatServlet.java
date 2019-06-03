import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.User;

import DB.DB;


public class namerepeatServlet extends HttpServlet {

		public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			request.setCharacterEncoding("UTF-8");//设置请求编码
			response.setContentType("UTF-8");//设置响应编码
			String username=request.getParameter("username");//获得jsp填入的用户名
			String password=request.getParameter("password");//获得jsp填入的密码
			DB db=new DB();///建立完成判断对象
			User user=new User();
		    user.setUsername(username);
		    user.setPassword(password);
		    try{
		    	if(db.confirmrigister(username))
		    		response.sendRedirect("Rigster.jsp?error=yes");
		    	else{
		    	    HttpSession session=request.getSession();//创建保存信息对象
                    session.setAttribute("user", user);
                    response.sendRedirect("registerconfirm.jsp");
		    	}
		    }catch(SQLException e){
		    	e.printStackTrace();
		    }
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

}
