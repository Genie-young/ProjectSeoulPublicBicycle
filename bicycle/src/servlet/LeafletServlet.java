package servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Rserve.RLeaflet;
import Rserve.Wordcloud;


/**
 * Servlet implementation class LeafletServlet
 */
public class LeafletServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RLeaflet rc = new RLeaflet();		
		String real_path = request.getSession().getServletContext().getRealPath("/");
		System.out.println(real_path);
	    real_path = real_path.replace("\\", "/");
		File f = new File(real_path+"/leafletchart3");
		if(!f.exists()) f.mkdir();
		String result = rc.returnLeaflet3(real_path+"/leafletchart3");
		request.setAttribute("leafletChartName", "http://70.12.111.98:8081/bicycle/leafletchart3/"+result);
	
		 Wordcloud wc = new Wordcloud(); 
		 request.setAttribute("wc2", wc.returnWC2());
		request.getRequestDispatcher("/jsp/Analysis.jsp").forward(request, response);
		
	}

}
