package DAO;

import java.util.*;
import java.sql.*;
import Utils.*;

public class StatDAO {

	public static int visitorCount() throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "select count(*) as c from visit_history";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		int retval = 0;
		if (rs.next()) {
			retval = rs.getInt("c");
		}
		return retval;
	}

	public static void newVisitor(String ip, String requestUrl, java.util.Date time) throws Exception {
		Connection conn = DBContext.getConnection();

		String sql = "insert into visit_history(ip, time_visit, request_url) values (?, ? , ?)";
		PreparedStatement ps = conn.prepareStatement(sql);
		ps.setString(1, ip);
		ps.setString(3, requestUrl);
		ps.setString(2, SushiUtils.formatSQLDate(time));

		ps.executeUpdate();
	}
}
