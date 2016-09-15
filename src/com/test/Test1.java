package com.test;

import java.util.ArrayList;
import java.util.List;

public class Test1 {
	public static void main(String[] args) {
		List s=new ArrayList();
		s.add(3);
		s.add("3");
		s.add('3');
		s.add(3.546);
		for(int i=0;i<s.size();i++){
			System.out.println(s.get(i));
		}
	}
}
