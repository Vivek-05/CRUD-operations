package com.ait.vivek;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public interface UserDAO {

	public int insertUser(User u);

	public User getUser(String username, String password);

	public static List<User> DisplayAll() {

		List<User> list = new ArrayList<User>();

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testing", "vivek", "vivek");

			String query = "select * from registration";

			Statement ps = cn.createStatement();

			ResultSet rs = ps.executeQuery(query);

			while (rs.next()) {

				User u = new User();

				u.setUsername(rs.getString(1));
				u.setEmailid(rs.getString(2));
				u.setMob(rs.getString(3));
				u.setDob(rs.getString(4));
				u.setGender(rs.getString(5));
				u.setPassword(rs.getString(6));
				list.add(u);
			
			}

			cn.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return list;
		

	}

	public static int deleteByName(String username) {
		int status = 0;

		try {
			Class.forName("com.mysql.jdbc.Driver");

			Connection cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testing", "vivek", "vivek");
			
		    PreparedStatement ps = cn.prepareStatement( " delete from registration where username=? ");

			ps.setString(1, username);

			status = ps.executeUpdate();

			cn.close();
			
		} catch (Exception e) {

			e.printStackTrace();

		}
		return status;
	}
}