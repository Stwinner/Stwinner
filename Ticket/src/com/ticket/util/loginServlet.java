package com.ticket.util;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import com.ticket.util.Cryptoencode;
import com.ticket.dao.UserDao;

public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public void service(HttpServletRequest request,HttpServletResponse response){
		/*
		 * 设定字符集为UTF-8
		 */
		try {
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		String userName=request.getParameter("username").trim();
		String passWord=request.getParameter("password").trim();
		passWord=Cryptoencode.Encode("SHA-256",passWord);
		String valCode=request.getParameter("valcode").trim();
		String code=request.getSession().getAttribute("reslut").toString();
		UserDao u=new UserDao();
		if(valCode==" "||valCode==null){
			request.setAttribute("info", "验证码不能为空");
		}else if(!valCode.equals(code)){
			request.setAttribute("info", "验证码不正确");
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}else{
			if(u.findName(userName)){
				if(passWord.equals(u.findPwdByUserName(userName))){
				request.getSession().setAttribute("userName", userName);
	//request.getRequestDispatcher("ticket/toIndex.do").forward(request,response);
				response.sendRedirect("ticket/toIndex.do");
	//				System.out.println(request.getContextPath());
				System.out.println("登陆成功！");
				}
			}else{
				request.setAttribute("info", "用户名或密码错误！");
				request.getRequestDispatcher("login.jsp").forward(request,response);
				}
			}
		}catch (Exception e) {
	}	
  }
}