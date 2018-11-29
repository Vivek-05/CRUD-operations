package com.ait.vivek;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class UserImpl implements UserDAO {

	static Connection cn;
	static PreparedStatement ps;

	@Override
	public int insertUser(User u) {
		int status = 0;
		try {

			// cn = Connnection.getcon();

			Class.forName("com.mysql.jdbc.Driver");

			cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testing", "vivek", "vivek");

			Statement ps = cn.createStatement();

			/*
			 * ps.setString(1, u.getUsername()); ps.setString(2, u.getEmailid());
			 * ps.setString(3, u.getMob()); ps.setString(4, u.getDob()); ps.setString(5,
			 * u.getGender());
			 */
			// ps.setString(6, u.getPassword());

			String query = "insert into registration values('" + u.getUsername() + "','" + u.getEmailid() + "','"
					+ u.getMob() + "','" + u.getDob() + "','" + u.getGender() + "','" + u.getPassword() + "')";

			ps.executeUpdate(query);

			cn.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return status;
	}

	@Override
	public User getUser(String username, String password) {

		User u = new User();

		try {

			cn = Connnection.getcon();
			
			ps = cn.prepareStatement("select * from registration where username=? , password=? ");
			ps.setString(1, username);
			ps.setString(2, password);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {

				u.setUsername(rs.getString(1));
				u.setPassword(rs.getString(6));
			}

			cn.close();

		} catch (Exception e) {

			e.printStackTrace();
		}
		return u;
	}
}
