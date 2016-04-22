package com.ticket.util;

public class test {
	/**
	 * 模块说明： test.javaTODO
	 * 创建人： 信安111班  石涛 
	 * 时间：  2015-5-13
	 * 描述：
	 */
	public static void main(String[] args) {
		String  psw ="123";
		psw =Cryptoencode.Encode("SHA-256", psw);
		System.out.println(psw);
		System.out.println(psw.length());
	}
}
