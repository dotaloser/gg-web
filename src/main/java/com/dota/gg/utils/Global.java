package com.dota.gg.utils;


public class Global {
	private static Global global;
	private static PropertiesLoader loader = new PropertiesLoader("application.properties");
	private Global(){
		
	}
	
	public static Global getInstance(){
		if(global == null){
			synchronized (global) {
				if(global == null)
					global = new Global();
			}
		}
		return global;
	}
	
	public static String getAdminPath(){
		return loader.getProperty("adminPath");
	}

}
