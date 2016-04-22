package com.ticket.controller;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.ticket.dao.TicketDao;
import com.ticket.entity.Ticket;
import com.ticket.entity.Train;
import com.ticket.entity.page.TicketPage;


@Controller
@RequestMapping("/ticket")
@SessionAttributes("ticketPage")
public class TicketController extends BaseController {
	@Resource
	public TicketDao  dao;
	@RequestMapping("/findTicket.do")	
	public 	String find(TicketPage page,Model model){
		page.setRows(dao.findRows(page));
	//	page.setStartpoint(page.getStartpoint().trim());
		model.addAttribute("ticketPage",page);
		List<Ticket> list = dao.findByPage(page);
	//	System.out.print(page.getStartpoint());
		model.addAttribute("tickets", list);
		return "ticket/ticket_list";	
		}
@RequestMapping("/ticket_info.do")
public String toTicket_info(Model model){
	List<Train> train=dao.findTrain();
	for(Train t:train){
		System.out.println(t.toString());
	}
	model.addAttribute("trains",train);
	return "ticket/ticket_info";
	}
}
