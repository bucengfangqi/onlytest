package com.test;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class 时间类 {
	public static void main(String[] args) {
		Calendar cal = Calendar.getInstance();//获取一个Claender实例
	    SimpleDateFormat sf = new SimpleDateFormat("yyyy年MM月dd日a,HH:mm:ss");//格式化日期的形式
	    //cal.set(2013,10,30);//设置日期，此时的日期是2013年11月30号
	    String date = sf.format(cal.getTime());//此时的date值为20131130
	    
	    //cal.add(Calendar.DAY_OF_YEAR, -1);//减去一天
	    //date = sf.format(cal.getTime());//此时date的日期为20131129
	    	System.out.println(date);
	}
}
