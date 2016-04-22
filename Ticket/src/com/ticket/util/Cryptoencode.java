package com.ticket.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Cryptoencode {
	
	public static String Encode(String type,String content){
		MessageDigest md;
		String digest = null;
		try {
			md = MessageDigest.getInstance(type);
			digest = byteArrayToHexString(md.digest(content
					.getBytes()));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		return digest;
	}
	
	public static String byteArrayToHexString(byte[] b) {
	    StringBuffer sb = new StringBuffer(b.length * 2);
	    for (int i = 0; i < b.length; i++) {
	      int v = b[i] & 0xff;
	      if (v < 16) {
	        sb.append('0');
	      }
	      sb.append(Integer.toHexString(v));
	    }
	    return sb.toString().toUpperCase();
	  }

}
