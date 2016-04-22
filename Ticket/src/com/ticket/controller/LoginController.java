package com.ticket.controller;

import java.awt.image.BufferedImage;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ticket.dao.AdminDao;
import com.ticket.dao.UserDao;
import com.ticket.entity.User;
import com.ticket.util.ImageUtil;
import com.ticket.util.valCode;

@Controller
@RequestMapping("/ticket")
public class LoginController extends BaseController {
	
	@Resource
	private AdminDao adminDao;
	
	@RequestMapping("/toIndex.do")
	public String toIndex() {
		return "main/index";
	}
	@RequestMapping("/toNews.do")
	public String toNews() {
		return "main/news";
	}
	@RequestMapping("/toStations.do")
	public String toStations() {
		return "main/stations";
	}
	
	@RequestMapping("/toPicture.do")
	public String toPicture() {
		return "main/picture";
	}
	
	@RequestMapping("/login.do")
	@ResponseBody
	public Map<String, Object> login(
			String username,
			String password,
			String valcode,
			HttpSession session) throws Exception {
		Map<String, Object> result = new HashMap<String, Object>();
		String code = session.getAttribute("reslut").toString();
		UserDao u=new UserDao();
		if(!valcode.equals(code)){
			result.put("info", "验证码不正确");
			return result;
		}else{
			if(u.findName(username)){
				if(password.equals(u.findPwdByUserName(username))){
				session.setAttribute("username", username);
				System.out.println("登陆成功！");
				}
			}else{
				result.put("info", "用户名或密码错误！");
				return result;
				}
			}
		return result;
	}
	@RequestMapping("/createImage.do")
	public void createImage(
			HttpServletResponse response, HttpSession session)
			throws Exception {
		Map<String, BufferedImage> imageMap = ImageUtil.createImage();
		String code = imageMap.keySet().iterator().next();
		session.setAttribute("imageCode", code);
		BufferedImage image = imageMap.get(code);
		response.setContentType("image/jpeg");
		OutputStream ops = response.getOutputStream();
		ImageIO.write(image, "jpeg", ops);
		ops.close();
	}
	
	
}
