package com.test;

public class 排序 {
	public static void main(String[] args) {
		int[] a={12,65,412,2,14,36,584,-56};
		for(int i=0;i<a.length;i++){
			for(int b=i+1;b<a.length;b++){
				if(a[i]>a[b]){
					int temp=0;
					temp=a[i];
					a[i]=a[b];
					a[b]=temp;
				}
			}
		}
		for(int i=0;i<a.length;i++){
			System.out.print(a[i]+"\t");
		}
	}
}
