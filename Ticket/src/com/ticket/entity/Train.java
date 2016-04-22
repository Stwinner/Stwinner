package com.ticket.entity;

import java.io.Serializable;

public class Train implements Serializable{
	/**
	 * 模块说明： train.javaTODO
	 * 创建人： 信安111班  石涛 
	 * 时间：  2015-4-29
	 * 描述：车次信息实体类
	 */
	private static final long serialVersionUID = 1L;

	private String T_id;
	private String T_name;
	private String T_btime;
	private String T_atime;
	private String T_stime;
	private String T_run;
	@Override
	public String toString() {
		return "train [T_id=" + T_id + ", T_name=" + T_name + ", T_btime="
				+ T_btime + ", T_atime=" + T_atime + ", T_stime=" + T_stime
				+ ", T_run=" + T_run + "]";
	}
	public String getT_Id() {
		return T_id;
	}
	public void setId(String t_id) {
		this.T_id =t_id;
	}
	public String getT_name() {
		return T_name;
	}
	public void setT_name(String t_name) {
		T_name = t_name;
	}
	public String getT_btime() {
		return T_btime;
	}
	public void setT_btime(String t_btime) {
		T_btime = t_btime;
	}
	public String getT_atime() {
		return T_atime;
	}
	public void setT_atime(String t_atime) {
		T_atime = t_atime;
	}
	public String getT_stime() {
		return T_stime;
	}
	public void setT_stime(String t_stime) {
		T_stime = t_stime;
	}
	public String getT_run() {
		return T_run;
	}
	public void setT_run(String t_run) {
		T_run = t_run;
	}
}
