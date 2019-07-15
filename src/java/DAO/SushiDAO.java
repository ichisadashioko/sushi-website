package DAO;

import java.sql.*;
import java.util.*;
import Models.*;

public class SushiDAO {

	public static int countBanners() throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "select count(*) as c from banners";
		PreparedStatement ps = conn.prepareCall(sql);

		int count = 0;
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			count = rs.getInt("c");
		}
		return count;
	}

	public static List<Banner> selectBanners(int start, int end) throws Exception {
		ArrayList<Banner> bList = new ArrayList<Banner>();
		Connection conn = DBContext.getConnection();
		String sql = "select * from (select ROW_NUMBER() over(order by dc desc) as rownum, title, img, descr, dc from banners) as s where s.rownum > ? and s.rownum <= ?";
		PreparedStatement ps = conn.prepareCall(sql);
		ps.setInt(1, start);
		ps.setInt(2, end);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String tt = rs.getString("title");
			String im = rs.getString("img");
			String desc = rs.getString("descr");

			Banner ba = new Banner();
			ba.setTitle(tt);
			ba.setImg(im);
			ba.setDesc(desc);

			bList.add(ba);
		}

		return bList;
	}

	public static int insertMenu(Menu m) throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "insert into menu(menu_name, menu_desc) values(?,?)";
		PreparedStatement ps = conn.prepareCall(sql);

		ps.setString(1, m.getName());
		ps.setString(2, m.getDesc());

		return ps.executeUpdate();
	}

	public static int insertFood(Food f) throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "insert into food(food_name, menu_name, price) values(?,?,?)";
		PreparedStatement ps = conn.prepareCall(sql);

		ps.setString(1, f.getName());
		ps.setString(2, f.getMenuName());
		ps.setFloat(3, f.getPrice());

		return ps.executeUpdate();
	}

	public static int insertBanner(Banner b) throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "insert into banners(title, img, descr) values(?,?,?)";
		PreparedStatement ps = conn.prepareCall(sql);

		ps.setString(1, b.getTitle());
		ps.setString(2, b.getImg());
		ps.setString(3, b.getDesc());

		return ps.executeUpdate();
	}

	public static ArrayList<Food> selectFood(String menuName) throws Exception {
		ArrayList<Food> foodList = new ArrayList<>();
		Connection conn = DBContext.getConnection();
		String sql = "select food_name, menu_name, price, dc from food where menu_name=? order by dc";
		PreparedStatement ps = conn.prepareCall(sql);
		ps.setString(1, menuName);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String name = rs.getString("food_name");
			float price = rs.getFloat("price");

			Food f = new Food();

			f.setName(name);
			f.setPrice(price);

			foodList.add(f);
		}
		return foodList;
	}

	public static ArrayList<Menu> selectMenus(int start, int end) throws Exception {
		ArrayList<Menu> mList = new ArrayList<>();
		Connection conn = DBContext.getConnection();
		String sql = "select * from (select ROW_NUMBER() over(order by dc desc) as rownum, menu_name, menu_desc, dc from menu) as s where s.rownum > ? and s.rownum <= ?";
		PreparedStatement ps = conn.prepareCall(sql);
		ps.setInt(1, start);
		ps.setInt(2, end);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			String name = rs.getString("menu_name");
			String desc = rs.getString("menu_desc");
			ArrayList<Food> foodList = selectFood(name);
			
			Menu m = new Menu();
			m.setName(name);
			m.setDesc(desc);
			m.setFoodList(foodList);
			
			mList.add(m);
		}
		return mList;
	}

	public static int countMenus() throws Exception {
		Connection conn = DBContext.getConnection();
		String sql = "select count(*) as c from menu";
		PreparedStatement ps = conn.prepareCall(sql);

		int count = 0;
		ResultSet rs = ps.executeQuery();
		if (rs.next()) {
			count = rs.getInt("c");
		}
		return count;
	}
}
