import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

/**
 * @Copyright LiChen
 * 用户：biyang
 * 创建时间：2019/11/20
 * 10:57
 */
@WebServlet(name = "BServlet")
public class BServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String name=request.getParameter("name");
        String psd=request.getParameter("psd");

        if (name.equalsIgnoreCase("lichen")){
            request.setAttribute("msg","登录失败");
            request.getRequestDispatcher("session2/login.jsp").forward(request,response);
        }else {
            Cookie cookie=new Cookie("uname",name);
            cookie.setMaxAge(60*60*24);
            response.addCookie(cookie);
            HttpSession session=request.getSession();
            session.setAttribute("name",name);
            response.sendRedirect("session2/success1.jsp");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
