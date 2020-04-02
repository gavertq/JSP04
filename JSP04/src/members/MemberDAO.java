package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.sun.org.apache.regexp.internal.recompile;

public class MemberDAO {
	private String url = "jdbc:oracle:thin:@192.168.0.49:1521:xe";
	private String id = "java";
	private String pwd="1234";
	
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public MemberDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean memberIn() {
		String sql = "INSERT INTO MEMBERS VALUES(?, ?, ?, ?, ?)";
		//ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		try {
			MemberDTO m = new MemberDTO();	
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);		
					
			ps.setString(1, m.getId());
			ps.setString(2, m.getPwd());
			ps.setString(3, m.getName());
			ps.setString(4, m.getAddr());
			ps.setString(5, m.getTel());						
			ps.executeUpdate();

			return true;
		} catch (SQLException e) {
			e.printStackTrace(); return false;
		}
	}
	
	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from Members order by id asc";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
				members.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	return members;
	}

	public boolean memberLogin(String uid) {
		String sql = "select pwd from Members where id=?";
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, uid);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setPwd(rs.getString("pwd"));
				return true;
			}else {return false;}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		
	}
	
	public ArrayList<MemberDTO> memberDetailView(String uId) {
		String sql = "select * from Members where id=?";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, uId);
			rs = ps.executeQuery();
			if(rs.next()) {
				MemberDTO m = new MemberDTO();
				m.setId(rs.getString("id"));
				m.setPwd(rs.getString("pwd"));
				m.setName(rs.getString("name"));
				m.setAddr(rs.getString("addr"));
				m.setTel(rs.getString("tel"));
				members.add(m);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	return members;
	}
	
	public boolean memberModi(String modiId, String modiName, String modiAddr, String modiTel) {
		String sql = "update Members set name=?, addr=?, tel=? where id=?";
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, modiName);
			ps.setString(2, modiAddr);
			ps.setString(3, modiTel);
			ps.setString(4, modiId);
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace(); return false;
		}	
	}
	
	public boolean memberDel(String delId) {
		String sql = "delete Members where id=?";
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, delId);
			ps.executeUpdate();
			
			return true;
		} catch (SQLException e) {
			e.printStackTrace(); return false;
		}	
	}
}
