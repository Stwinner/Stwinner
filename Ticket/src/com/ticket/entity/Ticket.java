package com.ticket.entity;
 /**
	 * 模块说明： 车票信息实体类.javaTODO
	 * 创建人： 信安111班  石涛 
	 * 时间：  2015-4-29
	 * 描述：
	 */

import java.io.Serializable;
import java.sql.Date;

public class Ticket implements Serializable {
	/**
	 * 车票信息统计
	 */
	private static final long serialVersionUID = 4415049347537696837L;
	private  Integer  id;
	private  String  startpoint;
	private  String  endpoint;
	private  String  jounery;
	private  Date  	startdate;
	private  String  starttime;
	private  String arrivetime;
	private  Double  price;
	private  Integer yz_num;
	private  Integer wz_num;
	private  String  runtimes;
	
	@Override
	public String toString() {
		return "ticket [id=" + id + ", startpoint=" + startpoint
				+ ", endpoint=" + endpoint + ", jounery=" + jounery
				+ ", startdate=" + startdate + ", starttime=" + starttime
				+ ", arrivetime=" + arrivetime + ", price=" + price
				+ ", yz_num=" + yz_num + ", wz_num=" + wz_num + "]";
	}
	public String getRuntimes() {
		return runtimes;
	}
	public void setRuntimes(String runtimes) {
		this.runtimes = runtimes;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
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
	public void setStartdate(Date startdate) {
		this.startdate = startdate;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getArrivetime() {
		return arrivetime;
	}
	public void setArrivetime(String arrivetime) {
		this.arrivetime = arrivetime;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Integer getyz_num() {
		return yz_num;
	}
	public void setyz_num(Integer yz_num) {
		this.yz_num = yz_num;
	}
	public Integer getwz_num() {
		return wz_num;
	}
	public void setwz_num(Integer wz_num) {
		this.wz_num = wz_num;
	}
	
}
