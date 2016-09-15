package com.test;

public class 异常 {
	public static void main(String[] args) {
		try{
			int a=2;
		}catch(Exception d){
			d.printStackTrace();
		}finally{
			System.out.println("~~~~");
		}
	}
}
