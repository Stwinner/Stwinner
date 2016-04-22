package com.ticket.util;
//管理工具类，可以用来获取连接或者关闭连接
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection getConnection() throws Exception{
		Connection conn=null;
		try {
			//获取连接对象
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mysql" +
					"?useUnicode=true&characterEncoding=utf8",
					"root","");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("数据库连接异常~");
			throw e;
		}
		return conn;
	}
	//关闭连接
	public static void close(Connection conn) throws SQLException{
		if(conn!=null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				throw e;
			}
		}	
	}
	public static void main(String[] args) {
		try {
			Connection conn=getConnection();
			System.out.println("连接成功！"+conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
