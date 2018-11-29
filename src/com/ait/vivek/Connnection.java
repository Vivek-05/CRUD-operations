package com.ait.vivek;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connnection {

	static Connection cn = null;

	public static Connection getcon() {

		try {

			Class.forName("com.mysql.jdbc.Driver");

			cn = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/testing", "vivek", "vivek");

		} catch (Exception e) {

			e.printStackTrace();
		}
		return null;

	}

}
