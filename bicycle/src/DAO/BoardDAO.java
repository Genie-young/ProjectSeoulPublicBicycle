package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import VO.BoardVO;

public class BoardDAO {
	public int getTotalBoard() {
		int result = 0;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			System.out.println("연결해제성공");
			String sql = "select count(*) as cnt from boards";
			PreparedStatement pt = con.prepareStatement(sql);
			ResultSet rs = pt.executeQuery(); // - select 문일 때
			if (rs.next())
				result = rs.getInt("cnt");
			con.close();
			System.out.println("연결해제성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public ArrayList<BoardVO> getBoardTopList(){
ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","hr","hr");
			System.out.println("연결성공");
			String sql = "select * from boards order by viewcount desc";
			PreparedStatement pt = con.prepareStatement(sql);
			ResultSet rs = pt.executeQuery();  // - select 문일 때
			
			for(int i =0;i<3;i++)
			{
				rs.next();
				int boardseq =rs.getInt("seq"); 
				String boardtitle =rs.getString("title");  
				String boardcontents = rs.getString("contents");
				String boardwriter =rs.getString("writer");  	
				String boardtime =rs.getString("time");  
				String boardimage = rs.getString("picture");
				int boardviewcount = rs.getInt("viewcount");
				//int seq, String title, String contents, String time, String writer, String picture
				list.add(new BoardVO(boardseq, boardtitle,boardcontents,boardtime, boardwriter,boardimage,boardviewcount));
				
			}
			con.close(); 
			System.out.println("연결해제성공");

		} catch (Exception e) {
			e.printStackTrace();}

		
		return list; 
		
	}

	public ArrayList<BoardVO> getBoardList(int page) {
		ArrayList<BoardVO> list = new ArrayList<BoardVO>();
		// select r, boardseq, boardtime from (select rownum r, boardseq, boardtime
		// from(select boardseq,boardtime from board order by boardseq desc)) where r
		// >=1 and r <=3
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			System.out.println("연결성공");
			String sql = "select seq,title,contents,writer,time, picture,viewcount from (select rownum r,seq,title,contents,writer,time, picture,viewcount  from(select * from boards order by seq desc)) where r >= ? and r <= ?";
			PreparedStatement pt = con.prepareStatement(sql);

			int start = (page - 1) * 3 + 1;
			int end = (page) * 3;
			pt.setInt(1, start);
			pt.setInt(2, end);
			ResultSet rs = pt.executeQuery();

			while (rs.next()) {
				int boardseq = rs.getInt("seq");
				String boardtitle = rs.getString("title");
				String boardcontents = rs.getString("contents");
				String boardwriter = rs.getString("writer");
				String boardtime = rs.getString("time");
				String boardimage = rs.getString("picture");
				int boardviewcount = rs.getInt("viewcount");
				
				// int seq, String title, String contents, String time, String writer, String
				// picture
				list.add(new BoardVO(boardseq, boardtitle, boardcontents, boardtime, boardwriter, boardimage,boardviewcount));
			}
			con.close();
			System.out.println("연결해제성공");

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

}
