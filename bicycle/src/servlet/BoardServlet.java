package servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import VO.BoardVO;

/**
 * Servlet implementation class BoardServlet
 */
public class BoardServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BoardDAO dao = new BoardDAO();
		String spage =request.getParameter("page");
		int page; 
		if(spage == null) // 현재 페이지
			page =1;
		else 
			page = Integer.parseInt(spage);
		int total = dao.getTotalBoard(); // 전체 게시물 
		int page_cnt = total/3; // 전체 페이지 번호 
		if((page_cnt%2) !=0){
			page_cnt+=page_cnt; 
		}
		ArrayList<BoardVO> list = dao.getBoardTopList(); //top 조회수 
		
		ArrayList<BoardVO> page_list = dao.getBoardList(page);
		session.setAttribute("list", list);
		session.setAttribute("page", page);
		session.setAttribute("page_list", page_list);
		session.setAttribute("page_cnt", page_cnt);
		RequestDispatcher rd =  request.getRequestDispatcher("/jsp/Board.jsp");
		rd.forward(request, response);
		
	}

}
