package com.ticket.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ticket.dao.AdminDao;
import com.ticket.entity.User;
import com.ticket.util.Cryptoencode;
import com.ticket.util.DateEditor;
	/**
	 * ģ��˵���� AdminController.javaTODO
	 * �����ˣ� �Ű�111��  ʯ�� 
	 * ʱ�䣺  2015-5-4
	 * ������
	 */
@Controller
@RequestMapping("/ticket")
public class AdminController extends BaseController {
	@Resource
	private AdminDao adminDao;
	@RequestMapping("/findAdmin.do")
	public String find(HttpServletRequest request,
					HttpServletResponse response,Model model) {
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e1) {
			e1.printStackTrace();
		}
		String name = (String)request.getSession().getAttribute("userName");
		if(name==null){
		try {
				response.sendRedirect("/Ticket/login.jsp");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}else{
		User user=new User();
		user.setName(name);
		User user_info=adminDao.findAdminInfo(user);
		model.addAttribute("user_info", user_info);
		return "user/user_info";
		}
		return null;
	}
	@RequestMapping("/addAdmin.do")
	public void addAdmin(HttpServletRequest request,HttpServletResponse response,
			Model model) throws Exception{
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String name=request.getParameter("userName").trim();
		String pwd=request.getParameter("password").trim();
		String email=request.getParameter("email").trim();
		String phone=request.getParameter("Phone").trim();
		String address1=request.getParameter("states").trim();
		String address2=request.getParameter("Comments").trim();
		String idcard=request.getParameter("cardId").trim();
		String brithday=request.getParameter("Date").trim();
		//�ж��û����Ƿ����
		if(adminDao.findName(name)!=null){
			model.addAttribute("info","���û���ע�ᣡ");
		}else{
			User user=new User();
			user.setName(name);
			user.setPwd(Cryptoencode.Encode("SHA-256",pwd));
			user.setEmail(email);
			user.setIdcard(idcard);
			try {
				user.setBrith(DateEditor.string2Time(brithday));
			} catch (Exception e) {
				throw  new Exception("����ת��ʧ�ܣ�");	
			}
			user.setPhone(phone);
			user.setAddress(address1+address2);
			user.setBalance(0);
			adminDao.InsertAdmin(user);
			model.addAttribute("info","ע��ɹ���");
		}
	}
	@RequestMapping("/resetPassword.do")
	@ResponseBody
	public void resetPassword(HttpServletRequest request,
								HttpServletResponse response,Model model) {
		String  oldPwd=Cryptoencode.Encode("SHA-256",
							 request.getParameter("oldpwd").toString().trim());
		String  newPwd=Cryptoencode.Encode("SHA-256",
							request.getParameter("newpwd").toString().trim());
		String  newPwd2=Cryptoencode.Encode("SHA-256",
							request.getParameter("newPwd2").toString().trim());
		String name = request.getSession().getAttribute("userName").toString();
		System.out.println(oldPwd+"  "+newPwd+"  "+name);
		User u=adminDao.findName(name);
		String  password=u.getPwd();
		if(password.equals(oldPwd)){
			adminDao.UpdatePwd(newPwd);
			request.setAttribute("info", "�޸�����ɹ���");
		}else{
			request.setAttribute("info","���벻��ȷ");
		}
	}
	@RequestMapping("/create_user.do")
	public String toCreateUser() {
		return "user/create_user";
	}
	
	@RequestMapping("/toUser.do")
	public String toUser(){
		return "user/user";
	}
}