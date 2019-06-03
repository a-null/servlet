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


public class MainServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");//设置请求编码
		response.setContentType("UTF-8");//设置响应编码
		String username=request.getParameter("username");//获得jsp填入的用户名
		String password=request.getParameter("password");//获得jsp填入的密码
		DB db=new DB();///建立完成判断对象
	    HttpSession session=request.getSession();//创建保存信息对象
		User user=(User) session.getAttribute("user");
        if(user==null){//第一次进入
        	try {
				user=db.checkUser(username, password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}///如果账户密码正确，把返回的对象抛给user，不正确对象则为空
        }
        session.setAttribute("user", user);///保存对象
        if(user!=null){///有对象，用户名密码正确
        	response.sendRedirect("loginsuccess.jsp");//////////////////////
        }else{//对象为空
        	/*request.setAttribute("msg", "登录失败");//把错误信息存放到预对象中  
        	request.getRequestDispatcher("login.jsp").forward(request, response); why??*/
        	response.sendRedirect("login.jsp?error=yes");///传递参数error，其值为yes
        }
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
            doGet(request,response);
			}

}
