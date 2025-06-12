package UserPackage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String gmail = request.getParameter("gmail");
		String password = request.getParameter("password");
		
		try {
			List<UserModel> userlogin = UserController.loginValidate(gmail, password);
			if(userlogin != null && !userlogin.isEmpty()) {
				String alertMessage = "Loging Successful";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='Home.jsp'</script>");
				
			}else {
				String alertMessage = "Loging Unsuccessful, plase try again......";
				response.getWriter().println("<script>alert('"+alertMessage+"');window.location.href='login.jsp'</script>");
			}
		}
		catch (Exception e) {
	        e.printStackTrace();
		
	}
		
		
	}
}
