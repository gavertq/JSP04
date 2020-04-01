package members;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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
	
	public ArrayList<MemberDTO> memberView() {
		String sql = "select * from Members";
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
	
	public ArrayList<MemberDTO> memberDetailView(String uName) {
		String sql = "select * from Members where id=?";
		ArrayList<MemberDTO> members = new ArrayList<MemberDTO>();
		
		try {
			con = DriverManager.getConnection(url, id, pwd);
			ps = con.prepareStatement(sql);
			ps.setString(1, uName);
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
}
