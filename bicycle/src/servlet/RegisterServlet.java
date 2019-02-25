package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.MemberDAO;

/*<servlet-name>RegisterServlet</servlet-name>
<url-pattern>/register</url-pattern>*/

public class RegisterServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();
		response.setContentType("text/html;charset=utf-8");
		String id = request.getParameter("emailid");
		String pw = request.getParameter("password");
		String name = request.getParameter("mem_name");
		String year = request.getParameter("yyyy");
		String month = request.getParameter("mm");
		String day = request.getParameter("dd");
		String gender = request.getParameter("gender");
		String contactnum = request.getParameter("contactnum");
		String address = request.getParameter("address");
		
		String path = "jsp/Register.jsp";
		if (id==null||id.contentEquals("")) 
			path += "?error=1";
		else if (pw==null||pw.equals(""))
			path += "?error=2";
		else if (name==null||name.equals(""))
			path += "?error=3";
		else if (year ==null|| year.equals("0"))
			path += "?error=4";
		else if (month==null||month.equals(""))
			path += "?error=5";
		else if (day==null||day.equals(""))
			path += "?error=6";
		else if (gender==null||gender.equals(""))
			path += "?error=7";
		else if (contactnum==null||contactnum.equals(""))
			path += "?error=8";
		else if (address==null||address.equals(""))
			path += "?error=9";
		else {
			
			MemberDAO dao = new MemberDAO();
			int result = dao.idcheck(id); 
			if(result != 1)
				path += "?error=10";
			else {
				String date = year + "-" + month + "-" +day;
				System.out.println(date);
				int ngender;
				if (gender.equalsIgnoreCase("male"))
					ngender = 1;
				else
					ngender = 2;
				dao.insertMember(id, pw, name, date, ngender, contactnum, address);
				path = "jsp/Login.jsp?register=1";
			}
		}
		response.sendRedirect(path);

	}

}
