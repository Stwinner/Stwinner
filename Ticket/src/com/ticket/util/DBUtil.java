package com.ticket.util;
//�������࣬����������ȡ���ӻ��߹ر�����
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	public static Connection getConnection() throws Exception{
		Connection conn=null;
		try {
			//��ȡ���Ӷ���
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/mysql" +
					"?useUnicode=true&characterEncoding=utf8",
					"root","");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("���ݿ������쳣~");
			throw e;
		}
		return conn;
	}
	//�ر�����
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
			System.out.println("���ӳɹ���"+conn);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
