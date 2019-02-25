package DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import VO.MemberVO;

public class MemberDAO {

	public int idcheck(String id) {
		int result = -1;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			System.out.println("연결성공");
			String sql = "select id from members where id = ?";
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, id);
			ResultSet rs = pt.executeQuery(); // - select 문일 때
			if (!rs.next())
				result = 1;
			con.close();
			System.out.println("연결해제성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	public int accountCheck(String id, String pw) {
		int result = -1;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			System.out.println("연결성공");
			String sql = "select pw from members where id = ?";
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, id);
			ResultSet rs = pt.executeQuery(); // - select 문일 때
			if (rs.next()) {
				String dbpw = rs.getString("pw");
				System.out.println(dbpw + "," + pw);
				if (dbpw.equals(pw))
					result = 1;
				else
					result = 0;
			} else
				result = -1;
			con.close();
			System.out.println("연결해제성공");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;

	}

	public void insertMember(String id, String pw, String name, String date, int gender, String contactnum,
			String address) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			String sql = "insert into members values(?,?,?,?,?,?,?)";
			Date odate = Date.valueOf(date);
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, id);
			pt.setString(2, pw);
			pt.setString(3, name);
			pt.setDate(4, odate);
			pt.setInt(5, gender);
			pt.setString(6, contactnum);
			pt.setString(7, address);

			int result = pt.executeUpdate(); // - insert/ update 문일때
			System.out.println(result);
			con.close();
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String getName(String id) {
		String name = "";
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			String sql = "select name from members where id =?";
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, id);
			ResultSet rs = pt.executeQuery(); // - select 문일 때
			rs.next();
			name = rs.getString("name");
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return name;
	}

	public MemberVO getInfo(String id) {
		MemberVO vo = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			String sql = "select * from members where id =?";
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, id);
			ResultSet rs = pt.executeQuery(); //- select 문일 때
			rs.next();
			String pw =rs.getString("pw");
			String name =rs.getString("name");
			Date birthday =rs.getDate("birthday");
			int gender =rs.getInt("gender");
			String phone =rs.getString("phone");
			String address =rs.getString("adress");
			//(String id, String pw, String name, Date birthday, int gender, String phone, String adress) 
			//MemberVO(String id, String pw, String name, Date birthday, int gender, String phone, String adress)
			vo = new MemberVO(id, pw, name, birthday, gender, phone, address);
			System.out.println("getInfoMethod"+vo);
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(vo);
		return vo;
	}
	public int updateMember(String id, String pw, String name, String contactnum, String address) {
		int result = 0; 
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
			String sql = "update members set pw =?,name =	?, phone=?, adress =? where id =?";
			PreparedStatement pt = con.prepareStatement(sql);
			pt.setString(1, pw);
			pt.setString(2, name);
			pt.setString(3, contactnum);
			pt.setString(4, address);
			pt.setString(5, id);
			
			result = pt.executeUpdate(); // - insert/ update 문일때
			System.out.println("result  = "+result);
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}
}
