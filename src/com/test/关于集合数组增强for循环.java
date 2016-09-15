package com.test;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;

public class 关于集合数组增强for循环 {
	public static void main(String[] args) {
		
		List<Integer> list=new ArrayList<Integer>(6);//小括号里面填写长度
		list.add(4);
		list.add(5);
		list.add(6);
		list.add(7);
		list.add(8);
		List<String> list1=new ArrayList<String>();
		list1.add("张三");
		list1.add("李四");
		list1.add("王五");
		list1.add("赵六");
		list1.add("田七");
		list1.add("金八");
		for(int i=0;i<list1.size();i++){
			System.out.print(list1.get(i)+"\t");
			
		}
		System.out.println();
		for(String i:list1){
			System.out.print(i+"\t");
			//集合增强for循环所传的参数具备引用数据类型类对象的功能
		}
		System.out.println();
		for(int i=0;i<list.size();i++){
			System.out.print(list.get(i)+"\t");
		}
		
		System.out.println();
		int[] num= { 1, 2, 3, 4, 5, 6 };
	    for (int i : num) {
	    	System.out.print(i+"\t");
		}
	    System.out.println();
	    
	    for (int i=0;i<num.length;i++) {
		    System.out.print(num[i]+"\t");
		}
	}
}
