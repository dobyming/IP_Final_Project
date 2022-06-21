package com.ipfinal.dao;

import java.sql.Connection;
import java.sql.SQLException;

import com.ipfinal.model.User;
import com.ipfinal.util.DbUtil;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class UserDao {
	private  Connection connection;
	
	public UserDao() {
		connection = DbUtil.getConnection();
	}
	public void addUser(User user) {
		try {
			java.sql.PreparedStatement preparedStatement = connection
					.prepareStatement("insert into userinfo(userid,name,password) values(?,?,?)");
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getPwd());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void deleteUser(String userId) {
		try {
			java.sql.PreparedStatement preparedStatement =  connection
					.prepareStatement("delete from userinfo where userid=?");
			preparedStatement.setString(1, userId);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateUser(User user) {
		try {
			java.sql.PreparedStatement preparedStatement = connection
					.prepareStatement("update userinfo set userid=?, name=?, password=?"+"where userid=?");
			preparedStatement.setString(1, user.getId());
			preparedStatement.setString(2, user.getName());
			preparedStatement.setString(3, user.getPwd());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int loginCheck(String userId,String pw) {
		User user = new User();
		String dbPW=""; //db에서 꺼낸 비번을 담을 변수 
		int x=-1;
		
		try {
			PreparedStatement preparedStatement = (PreparedStatement) connection
					.prepareStatement("select password from userinfo where userid=?");
			preparedStatement.setString(1, userId);
			java.sql.ResultSet rs =  preparedStatement.executeQuery();
			
			if(rs.next()) {
				dbPW = rs.getString("password");
				
				if(dbPW.equals(pw)) {
					x=1; //같으면 인증 성공
				}
				else {
					x=0; //인증 실패 
				}
			} else {
				x=-1; //회원정보가 존재하지 않음 
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return x;
	}
}
