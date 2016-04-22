package com.ticket.test;

import java.util.List;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.ticket.dao.AdminDao;
import com.ticket.dao.TicketDao;
import com.ticket.entity.Ticket;
import com.ticket.entity.User;
import com.ticket.entity.page.TicketPage;

public class TestTicketDao {
	private String conf = "ApplicationContext.xml";
	 @Test
	 public void testFindByPage(){
			ApplicationContext ctx = new ClassPathXmlApplicationContext(conf);
			System.out.println("ctx��:"+ctx);
			TicketDao dao=ctx.getBean(TicketDao.class);
			System.out.println(dao);
//			TicketPage page =new TicketPage();
//			page.setCurrentPage(1);
//			List<Ticket> list=dao.findByPage(page);
//			for(Ticket t:list){
//				System.out.println(t.getStartpoint()+" "+t.getEndpoint()+" "+t.getJounery()+" "+t.getStartdate()+" "+t.getStarttime()+" "+t.getArrivetime()+" "+t.getPrice()+" "+t.getYz_num()+" "+t.getWz_num());			
//				}
			TicketPage page=new TicketPage();

			List<Ticket> list=dao.findByPage(page);
			System.out.println(list.size());
			for(Ticket t:list){
				System.out.println(t.getStartpoint()+" "+t.getEndpoint()+" "+t.getJounery()+" "+t.getStartdate()+" "+t.getStarttime()+" "+t.getArrivetime()+" "+t.getPrice()+" "+t.getyz_num()+" "+t.getwz_num());
			}
			System.out.println("OK");
		}
	//@Test
	public void testFindRows() {
		ApplicationContext ctx = 
			new ClassPathXmlApplicationContext(conf);
		System.out.println("ctx��:"+ctx);
		TicketDao dao =ctx.getBean(TicketDao.class);
		System.out.println("����dao�ɹ�~");
		TicketPage  page=new TicketPage();
		page.setCurrentPage(1);
		page.setEndpoint("����");
		int rows = dao.findRows(page);
		System.out.println(rows);
	}
	@Test
	public void testfindAdminInfo(){
		ApplicationContext ctx = 
			new ClassPathXmlApplicationContext(conf);
		System.out.println("ctx��:"+ctx);
		AdminDao u=ctx.getBean(AdminDao.class);
		User use=new User();
		use.setName("刘翔");
		User user=u.findAdminInfo(use);
		System.out.println("-------______________"+use.getName());
			System.out.println(user.getAddress()+""+user.getIdcard());
	}
	
}
