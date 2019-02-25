package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;
import VO.MemberVO;

/*<servlet-name>MyInformation</servlet-name>
<url-pattern>/Myinfo</url-pattern>*/
public class MyInformation extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = null;
		String id = (String)session.getAttribute("sessionid");
		vo = dao.getInfo(id);
		String pw = vo.getPw();
		String name = vo.getName();
		String phone = vo.getPhone();
		String address = vo.getAdress();
		
		session.setAttribute("pw", pw);
		session.setAttribute("name", name);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		String path = "/jsp/Myinfo.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		HttpSession session = request.getSession();
		MemberDAO dao = new MemberDAO();
		MemberVO vo = null;
		String id = (String)session.getAttribute("sessionid");
		vo = dao.getInfo(id);
		String pw = vo.getPw();
		String name = vo.getName();
		String phone = vo.getPhone();
		String address = vo.getAdress();
		session.setAttribute("pw", pw);
		session.setAttribute("sessionname", name);
		session.setAttribute("name", name);
		session.setAttribute("phone", phone);
		session.setAttribute("address", address);
		System.out.println("MyinfoServlet = "+vo);
		String path = "/jsp/Myinfo.jsp?error=0";
		RequestDispatcher rd = request.getRequestDispatcher(path);
		rd.forward(request, response);
	}

}
