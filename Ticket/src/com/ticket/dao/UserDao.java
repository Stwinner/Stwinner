package com.ticket.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.ticket.util.DBUtil;


public class UserDao {
	 Connection conn=null;
	 PreparedStatement prep=null;
	 ResultSet rs=null;
	public String findPwdByUserName(String input) throws Exception{
		conn = DBUtil.getConnection();
		System.out.println("数据库连接成功~");
		prep = conn.prepareStatement("select pwd from t_user where name=?");
		prep.setString(1,input);
		rs = prep.executeQuery();
		String password=null;
		if(rs.next()){
			password=rs.getString(1);
		}
		return password;
	}
	
	public boolean findName(String input) throws Exception{
		conn = DBUtil.getConnection();
		prep = conn.prepareStatement("select * from t_user where name=? or email=? or phone=?");
		prep.setString(1,input);
		prep.setString(2,input);
		prep.setString(3,input);
		rs = prep.executeQuery();
		if(rs.next()){
		return true;
		}else{
		return false;
		}
	}
}
