package com.test;

import java.io.File;

public class 删除文件 {
	public static void main(String[] args) {
		File file=new File("F:/test");
		listfile(file);
		System.out.println();
	}
	
	
	public static void listfile(File file){
			//不是的话列出所有的文件继续判断
			File[] files=file.listFiles();
			for(File f:files){
				if(f.isDirectory()){
					File ff =new File(f.getPath());
					listfile(ff);
				}
				f.delete();
		}
	}
}
