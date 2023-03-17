package data.dao;

import static java.lang.Math.*;

import java.util.ArrayList;

import java.util.Arrays;

import java.util.List;

public class test {
	public static void main(String[] args) {
		ArrayList<Integer> list = new ArrayList<Integer>();
		list.add(0);
		list.add(1);
		list.add(2);
		list.add(3);
		list.add(4);
		list.add(5);
		list.add(6);
		
		List subList = new ArrayList<>(list.subList(0, 1));  
		System.out.println(subList);  
		/*
		 * list.remove(0); System.out.println(subList);
		 */
		
		System.out.println(list);
	}
}
