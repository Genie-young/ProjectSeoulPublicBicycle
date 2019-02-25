package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Rserve.Wordcloud;

public class WordcloudServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String module = request.getParameter("module");	
		System.out.println(module);
		if(module.equals("1")) {
			Wordcloud wc = new Wordcloud();		
			request.setAttribute("content", wc.returnWC1());
		} else if(module.equals("2")) {
			Wordcloud wc = new Wordcloud();		
			request.setAttribute("wc2", wc.returnWC2());
		}
		
		request.getRequestDispatcher("/jsp/result5.jsp").forward(request, response);
	}

}
