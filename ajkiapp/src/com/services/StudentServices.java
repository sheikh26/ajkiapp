package com.services;

import java.sql.*;
import java.util.ArrayList;
import java.util.ResourceBundle;

import com.dto.StudentDTO;
import com.dto.UserDTO;

import com.dto.MarksheetDTO;
import com.resources.MessageHandler;

public class StudentServices {

	private static Connection conn = null;

	static {
		try {
			Class.forName(MessageHandler.getValue("database.driver"));

			conn = DriverManager.getConnection(MessageHandler
					.getValue("database.url"), MessageHandler
					.getValue("database.user"), MessageHandler
					.getValue("database.password"));

			conn.setAutoCommit(false);
		} catch (Exception e) {
			System.out.println("Error in loading driver or making connection");
			e.printStackTrace();
		}

	}

	public static void add(StudentDTO dto) throws Exception {

		PreparedStatement stmt = conn
				.prepareStatement("insert into student( rollNo,"
						+ "first_name, last_name, session) value (?,?,?,?)");

		stmt.setString(1, dto.getRollNo());
		stmt.setString(2, dto.getFirstName());
		stmt.setString(3, dto.getLastName());
		stmt.setString(4, dto.getSession());

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

	}

	public static void update(StudentDTO dto) throws Exception {

		PreparedStatement stmt = conn.prepareStatement("update student set "
				+ "first_name = ?, last_name =? , session =? where rollno =?");

		stmt.setString(1, dto.getFirstName());
		stmt.setString(2, dto.getLastName());
		stmt.setString(3, dto.getSession());
		stmt.setString(4, dto.getRollNo());

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();

	}

	public static void delete(String rollNo) throws Exception {

		PreparedStatement stmt = conn
				.prepareStatement("delete from student where rollno = ?");

		stmt.setString(1, rollNo);

		int i = stmt.executeUpdate();

		conn.commit();

		stmt.close();
	}

	public static StudentDTO get(String rollNo) throws Exception {

		String sql = "select rollNo, first_name, last_name, session from student where rollno = ?";

		PreparedStatement stmt = conn.prepareStatement(sql);

		stmt.setString(1, rollNo);

		ResultSet rs = stmt.executeQuery();

		StudentDTO dto = new StudentDTO();

		if (rs.next()) {

			dto.setRollNo(rollNo);
			dto.setFirstName(rs.getString(2));
			dto.setLastName(rs.getString(3));
			dto.setSession(rs.getString(4));
		}

		stmt.close();

		return dto;
	}

	protected void finalize() throws Exception {
		conn.close();
	}

	public static void main(String[] args) throws Exception {

		StudentDTO dto = StudentServices.get("123");
		System.out.println(dto.getFirstName());

		

	}

}
