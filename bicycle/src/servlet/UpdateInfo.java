package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.MemberDAO;

/**
 * url: /Update
 */
public class UpdateInfo extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("sessionid");
		PrintWriter out = response.getWriter();
		
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		
		System.out.println("Before UpdateServlet ="+id+pw+name+phone+address);
		
		String path = "/jsp/Myinfo.jsp";
		if (pw == null || pw.equals(""))
			pw = (String)session.getAttribute("pw");
		
		if (name==null || name.equals(""))
			name = (String) session.getAttribute("name");
		
		if (phone==null || phone.equals(""))
			phone = (String) session.getAttribute("phone");
		
		if (address==null || address.equals(""))
			address = (String)session.getAttribute("address");
		System.out.println("After UpdateServlet ="+id+pw+name+phone+address);

		MemberDAO dao = new MemberDAO();
		int result = dao.updateMember(id, pw, name, phone, address);
		if (result != 1)
			path += "?error=10";
		else {
			path ="/Myinfo";
			session.setAttribute("sessionid", id);
		}
		 
		 RequestDispatcher rd = request.getRequestDispatcher(path);
		 rd.forward(request, response);
		 
	}

}
