package com.ipfinal.dao;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Vector;

import com.ipfinal.model.Board;
import com.ipfinal.util.DbUtil;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.Statement;

public class BoardDao {
	private  Connection connection;
	
	Statement stmt=null;
	ResultSet rs = null;
	String sql="";
	public BoardDao() {
		connection = DbUtil.getConnection();
	}
	
	//글쓰기
	public void insertBoard(Board board) {
		try {
			java.sql.PreparedStatement preparedStatement = connection
					.prepareStatement("insert into faq(id,title,writer) values(?,?,?)");
			preparedStatement.setInt(1, board.getNumid());
			preparedStatement.setString(2, board.getTitle());
			preparedStatement.setString(3, board.getWriter());
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	//리스트
	public Vector getBoardList(Board board) {
		Vector Bvec = new Vector();
		try {
			PreparedStatement preparedStatement = (PreparedStatement) connection
					.prepareStatement("select * from faq");
			java.sql.ResultSet rs =  preparedStatement.executeQuery();
			while(rs.next()) {
				
				board.setNumid(rs.getInt("id"));
				board.setTitle(rs.getString("title"));
				board.setWriter(rs.getString("writer"));
				
				Bvec.add(board);
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return Bvec; 
	}
}
