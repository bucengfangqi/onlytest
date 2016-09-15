package com.test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

public class Map集合 {
	public static void main(String[] args) {
		Map a=new HashMap();
		a.put("姓名","张三");
		a.put("年龄","18");
		a.put("性别", "男");
		Iterator b=a.entrySet().iterator();
		while(b.hasNext()){
			System.out.println(b.next());
		}
		System.out.println("-----------------------------");
		Map b1=new HashMap();
		b1.put("姓名","张三");
		b1.put("年龄","18");
		b1.put("性别", "男");
		Iterator<Map.Entry> b2=b1.entrySet().iterator();
		while(b2.hasNext()){
			Map.Entry b3=b2.next();
			System.out.println(b3.getKey()+"  "+b3.getValue());
		}
		System.out.println("-----------------------------");
		HashMap a1=new HashMap();
		a1.put("name","张三");
		a1.put("age","18");
		a1.put("sex", "男");
		Iterator a2=a1.keySet().iterator();
		while(a2.hasNext()){
			Object a3=a2.next();
			System.out.println(a3+"  "+ a1.get(a3));
		}
		System.out.println("-----------------------------");
		LinkedHashMap s1=new LinkedHashMap();
		s1.put("name","张三");
		s1.put("age","18");
		s1.put("sex", "男");
		Iterator<Map.Entry> s2=s1.entrySet().iterator();
		while(s2.hasNext()){
			Map.Entry s3=s2.next();
			System.out.println(s3.getKey()+"  "+s3.getValue());
		}
	}
}
