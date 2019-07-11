package DAO;

import java.sql.*;
import javax.naming.*;

public class DBContext {

	private static boolean loadFlag = false;

	public static Connection getConnection() throws Exception {

		InitialContext ic = new InitialContext();
		Context envCtx = (Context) ic.lookup("java:comp/env");

		String cs = (String) envCtx.lookup("cs");
		if (!loadFlag) {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			loadFlag = true;
		}
		Connection conn = DriverManager.getConnection(cs);
		return conn;
	}
}
