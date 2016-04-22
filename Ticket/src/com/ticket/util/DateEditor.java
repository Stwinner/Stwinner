package com.ticket.util;

import java.beans.PropertyEditorSupport;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *	�Զ������������ת���������Խ����е�
 *	�����ַ���ת����java.sql.Date
 */
public class DateEditor 
	extends PropertyEditorSupport {
	
	//Ĭ��֧�ֵ�ת�������ڸ�ʽ
	private String pattern = "yyyy-MM-dd";
	
	public DateEditor() {
		
	}
	
	public DateEditor(String pattern) {
		this.pattern = pattern;
	}

	/* 
	 * �����е��ַ���ת���ɶ����е����ԡ�
	 * text�������Ǳ��е������ַ�����������Ҫ
	 * ����ת�ͳ�java.sql.Date�ٴ��ظ�Spring.
	 */
	@Override
	public void setAsText(String text) 
			throws IllegalArgumentException {
		if(text == null || text.length() == 0) {
			//�������Ϊ�գ�ֱ�ӽ�null���ظ�Spring
			setValue(null);
		} else {
			//���������Ϊ�գ�����ת����java.sql.Date��
			//�ٴ���Spring
			SimpleDateFormat sf = 
				new SimpleDateFormat(this.pattern);
			String dateStr = 
				sf.format(Date.valueOf(text));
			setValue(Date.valueOf(dateStr));
		}
	}
	 public final static java.sql.Timestamp string2Time(String dateString)  
	            throws java.text.ParseException {  
	        DateFormat dateFormat;  
	        dateFormat = new SimpleDateFormat("yyyy-MM-dd");  
	        dateFormat.setLenient(false);  
	        java.util.Date timeDate = dateFormat.parse(dateString);// util����  
	        java.sql.Timestamp dateTime = new java.sql.Timestamp(timeDate.getTime());// Timestamp����,timeDate.getTime()����һ��long��  
	        return dateTime;  
	    } 
	  public static Date toDate(String dateStr) {  
	        Date date = null;  
	        SimpleDateFormat formater = new SimpleDateFormat();  
	        formater.applyPattern("yyyy-MM-dd");  
	        try {  
	            date = (Date) formater.parse(dateStr);  
	        } catch (ParseException e) {  
	            e.printStackTrace();  
	        }  
	        return date;  
	    }
  public static Date tosqlDate(String dateStr) throws ParseException{ 
	  DateFormat df = DateFormat.getDateInstance();   
	  java.util.Date dd = df.parse(dateStr);
	  //��YYYY-MM-DD��ʽ��ʱ��ת��Ϊdate
	  long t = dd.getTime();
	  java.sql.Date date = new java.sql.Date(t);
	  return date;
	  }
  public static void main(String[] args) {
	String date="2015-10-11";
	try {
		System.out.println(toDate(date));
		System.out.println(toDate(date).getClass());
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
}
  
}
