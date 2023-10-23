package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LocaDAO {

	
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	// 데이터베이스 연동 메서드
	public void getConnection() {
		
		// 드라이버 동적로딩
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");


		// DB 로그인 정보 받아오기
		String db_url = "jdbc:oracle:thin:@project-db-stu3.smhrd.com:1524:xe";
		String db_id = "Insa4_Spring_hacksim_6";
		String db_pw = "aishcool6";
			
		// 연결 권한 요청
		conn = DriverManager.getConnection(db_url, db_id, db_pw);
		
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			System.err.println("ojdbc6.jar 또는 경로를 체크하세요!");
		} catch (SQLException e) {
			e.printStackTrace();
			System.err.println("DB 연결에 필요한 정보가 맞는지 체크하세요!");
		} 
	}
	
	
	// 데이터베이스 연결 종료 메서드
	public void close() {
		// 연결종료
		try {
			if(rs!=null) {
				rs.close();
			}
			if(psmt!=null){
				psmt.close();
			}
			if(conn!=null){
				conn.close();
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	// 저장 일정 장소명 불러오는 메서드
	   public ArrayList<String> locaName(String id) {
	            
	      getConnection();
	      ArrayList<String>list = new ArrayList<>();
	      
	      
	      try { 
	         
	    	  String sql ="SELECT PLACE_NAME FROM PLACE WHERE PLACE_LATITUDE = (SELECT PLACE_LATITUDE FROM PLACE WHERE PLACE_NUM = (SELECT MARKER_PLACE_ID FROM SCHE_DETAIL WHERE SCHEDULE_ID=? and detail_id=1 AND MARKER_NUM =?)) AND PLACE_LONGITUDE = (SELECT PLACE_LONGITUDE FROM PLACE WHERE PLACE_NUM = (SELECT MARKER_PLACE_ID FROM SCHE_DETAIL WHERE SCHEDULE_ID=? and detail_id=1 AND MARKER_NUM =?));";
	    	  psmt = conn.prepareStatement(sql);
	    	  
    		  psmt.setString(1,id);
    		  psmt.setInt(2,1);
    		  psmt.setString(3,id);
    		  psmt.setInt(4,1);
    		  rs = psmt.executeQuery();
    		  
    		  while(rs.next()) {
    			  String place_name = rs.getString("place_name");
    			  
    			  list.add(place_name);
    			  
    		  }
	    	  
//	    	  // for(int i = 1; i<=4; i++) {
//	    		  psmt.setString(1,id);
//	    		  psmt.setInt(2,i);
//	    		  psmt.setString(3,id);
//	    		  psmt.setInt(4,i);
//	    		  rs = psmt.executeQuery();
//	    		  
//	    	  while(rs.next()) {
//	        			 String place_name = rs.getString("place_name");
//	        			 LocaDTO dto = new LocaDTO(place_name);
//	        			 list.add(dto);
//	        			 
//	        		 }
//	        		 
//	        	 }
	        	      
	         
	      } catch (SQLException e) {
	         // TODO Auto-generated catch block
	         e.printStackTrace();
	      }finally {
	         close();
	      }
	      
	      return list;
	   
	   }
	
	
}
