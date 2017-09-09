package com.huolong.cache;

public class CacheTest {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Cache.add("1", 1);
		Cache.add("1",2);
		Cache.add("1",3);
		System.out.println(Cache.get("1"));
	}

}
