package com.ticket.entity.page;

import java.io.Serializable;
import java.sql.Date;

public class TicketPage extends Page implements Serializable {
	private static final long serialVersionUID = -6997117067010281151L;
	private String  startpoint;
	private String  endpoint;
	private String  jounery;
	private Date  startdate;
	public String getStartpoint() {
		return startpoint;
	}
	public void setStartpoint(String startpoint) {
		this.startpoint = startpoint;
	}
	public String getEndpoint() {
		return endpoint;
	}
	public void setEndpoint(String endpoint) {
		this.endpoint = endpoint;
	}
	public String getJounery() {
		return jounery;
	}
	public void setJounery(String jounery) {
		this.jounery = jounery;
	}
	public Date getStartdate() {
		return startdate;
	}
	public void setStartdate(Date timestamp) {
		this.startdate = timestamp;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String toString() {
		return "[startpoint=" + startpoint + ", endpoint=" + endpoint
				+ ", jounery=" + jounery + ", startdate=" + startdate + "]";
	}
	
}
