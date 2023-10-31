package dao.impl;

import java.sql.*;

import dao.UserDao;
import util.DatabaseBean;

public class UserDaoImpl implements UserDao {

	@Override
	public String getUser(String stuno, String password) {
		// TODO Auto-generated method stub
		Connection conn = null;
		PreparedStatement psmt = null;
		ResultSet rs = null;
		String stuname=null;
		String sql = "select stuname from user where stuno=? and password = ?";
		try {
			conn = DatabaseBean.getConnection();
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, stuno);
			psmt.setString(2, password);
			rs = psmt.executeQuery();
			if(rs.next()) {
				stuname = rs.getString("stuname");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			DatabaseBean.close(rs, psmt, conn);
		}
		return stuname;
	}

}
