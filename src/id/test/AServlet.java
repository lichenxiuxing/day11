package id.test;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Copyright LiChen
 * 用户：biyang
 * 创建时间：2019/11/19
 * 19:37
 */
@WebServlet(name = "id.test.AServlet")
public class AServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String s1=request.getParameter("num1");
        String s2=request.getParameter("num2");
        int n1=Integer.parseInt(s1);
        int n2=Integer.parseInt(s2);
        int sum=n1+n2;
        request.setAttribute("sum",sum);
        request.getRequestDispatcher("add/result.jsp").include(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
