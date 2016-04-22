package com.ticket.entity;
import java.sql.Timestamp;

public class User {
	public String name;
	public String pwd;
	public Timestamp brith;
	public String idcard;
	public String address;
	public double balance;
	public String phone;
	public String email;
	@Override
	public String toString() {
		return "User [name=" + name + ", pwd=" + pwd + ", brith=" + brith
				+ ", idcard=" + idcard + ", address=" + address + ", balance="
				+ balance + ", phone=" + phone + ", email=" + email + "]";
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public Timestamp getBrith() {
		return brith;
	}
	public void setBrith(Timestamp brith) {
		this.brith = brith;
	}
	public String getIdcard() {
		return idcard;
	}
	public void setIdcard(String idcard) {
		this.idcard = idcard;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
