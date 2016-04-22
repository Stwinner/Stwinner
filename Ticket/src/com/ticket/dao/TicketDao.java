package com.ticket.dao;


import java.util.List;
import com.ticket.annotation.MyBatisRepository;
import com.ticket.entity.Ticket;
import com.ticket.entity.Train;
import com.ticket.entity.page.TicketPage;


@MyBatisRepository
public  interface TicketDao {
	
	List<Ticket> findByPage(TicketPage page);
	
	int findRows(TicketPage page);
	
	List<Train> findTrain();
}
