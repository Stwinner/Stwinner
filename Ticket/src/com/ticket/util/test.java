package com.ticket.util;

public class test {
	/**
	 * ģ��˵���� test.javaTODO
	 * �����ˣ� �Ű�111��  ʯ�� 
	 * ʱ�䣺  2015-5-13
	 * ������
	 */
	public static void main(String[] args) {
		String  psw ="123";
		psw =Cryptoencode.Encode("SHA-256", psw);
		System.out.println(psw);
		System.out.println(psw.length());
	}
}
