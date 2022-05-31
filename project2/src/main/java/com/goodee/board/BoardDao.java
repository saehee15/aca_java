package com.goodee.board;

import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.goodee.common.CommonUtil; //공통부분,

// Dao- Data Access Object - 데이터 베이스에 가서 데이터 읽고 쓰기 담당 클래스
public class BoardDao {
	// 공통으로 빼기
	// String driver_class = "org.mariadb.jdbc.Driver";
	// String db_url = "jdbc:mariadb://127.0.0.1:3306/mydb";
	// String username = "root";
	// String password = "1234";
	
	
	// getList 메서드
	List<BoardDto> getList(){
		// 디비로부터 데이터를 읽어와서 디비데이터를 BoardDto라는 객체에 담아서
		// List객체에 담아서 jsp로 보내준다
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		List<BoardDto> dataList = new ArrayList<BoardDto>();
		try {
			Class.forName(CommonUtil.driver_class);
			conn = DriverManager.getConnection(CommonUtil.db_url, CommonUtil.username, CommonUtil.password);
			stmt = conn.createStatement();
			String sql = "select id, title, writer, " 
			             + "date_format(wdate, '%Y-%m-%d') wdate,"
			             + "contents,"
			             + "hit from tb_board1";
			rs = stmt.executeQuery(sql); // 매개변수 sql이 위에 String sql임
			while(rs.next()) // 데이터가 없을때까지
			{
				BoardDto dto = new BoardDto(); // 객체만들기 - 반드시 new로 만든다.
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContents(rs.getString("contents"));
				dto.setWdate(rs.getString("wdate"));
				dto.setHit(rs.getString("hit"));
				
				dataList.add(dto);
			}
			
		}catch(ClassNotFoundException e){
			e.printStackTrace(); // 에러에 대한 도움말 확인
			
		}catch(SQLException e) {
			e.printStackTrace(); // 에러에 대한 도움말 확인
		}finally {
				try {
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(conn!=null) conn.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		}
		return dataList;
	}
	
	
	
	
	
	//getView 메서드, 배열 아니고 데이터 하나 넘어가도록, getList는 배열
	BoardDto getView(String id) {
		
		Connection conn=null;
		Statement stmt=null;
		ResultSet rs=null;
		BoardDto dto = new BoardDto();
		
		try {
			Class.forName(CommonUtil.driver_class);
			conn = DriverManager.getConnection(CommonUtil.db_url, CommonUtil.username, CommonUtil.password);
			stmt = conn.createStatement();
			String sql = "select id, title, writer, " 
			             + "date_format(wdate, '%Y-%m-%d') wdate,"
			             + " hit, contents from tb_board1 "
			             + " where id =" + id; // 앞에 뛰어줘야함, 안 그러면 쿼리 에러 생김 
						// You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near '=1' at line 1
						// 이런 에러
			rs = stmt.executeQuery(sql); // 매개변수 sql이 위에 String sql임
			if(rs.next()) // 데이터가 없을때까지
			{
				dto.setId(rs.getString("id"));
				dto.setTitle(rs.getString("title"));
				dto.setWriter(rs.getString("writer"));
				dto.setContents(rs.getString("contents"));
				dto.setWdate(rs.getString("wdate"));
				dto.setHit(rs.getString("hit"));
				
			}
			
		}catch(ClassNotFoundException e){
			e.printStackTrace(); // 에러에 대한 도움말 확인
			
		}catch(SQLException e) {
			e.printStackTrace(); // 에러에 대한 도움말 확인
		}finally {
				try {
					if(rs!=null) rs.close();
					if(stmt!=null) stmt.close();
					if(conn!=null) conn.close();
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		}
		return dto;
	}
	
}
