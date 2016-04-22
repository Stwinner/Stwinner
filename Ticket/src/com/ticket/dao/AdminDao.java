package com.ticket.dao;

import java.util.List;
import com.ticket.annotation.MyBatisRepository;
import com.ticket.entity.User;

@MyBatisRepository
public interface  AdminDao {

	User findAdminInfo(User user);
	
	User findName(String input);
	
	User  findPwdByUserName(String input);

	void  UpdatePwd(String newPwd);
//	
//	void updateStatus(User user);
//	
//	void saveAdmin(User user);
	
	void InsertAdmin(User user);//ע���û�
}
