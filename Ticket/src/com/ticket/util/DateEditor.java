package com.ticket.util;

import java.beans.PropertyEditorSupport;
import java.sql.Date;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

/**
 *	自定义的日期类型转换器，可以将表单中的
 *	日期字符串转换成java.sql.Date
 */
public class DateEditor 
	extends PropertyEditorSupport {
	
	//默认支持的转换的日期格式
	private String pattern = "yyyy-MM-dd";
	
	public DateEditor() {
		
	}
	
	public DateEditor(String pattern) {
		this.pattern = pattern;
	}

	/* 
	 * 将表单中的字符串转换成对象中的属性。
	 * text参数就是表单中的日期字符串，我们需要
	 * 将其转型成java.sql.Date再传回给Spring.
	 */
	@Override
	public void setAsText(String text) 
			throws IllegalArgumentException {
		if(text == null || text.length() == 0) {
			//如果参数为空，直接将null传回给Spring
			setValue(null);
		} else {
			//如果参数不为空，则将其转换成java.sql.Date，
			//再传回Spring
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
	        java.util.Date timeDate = dateFormat.parse(dateString);// util类型  
	        java.sql.Timestamp dateTime = new java.sql.Timestamp(timeDate.getTime());// Timestamp类型,timeDate.getTime()返回一个long型  
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
	  //将YYYY-MM-DD格式的时间转换为date
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
