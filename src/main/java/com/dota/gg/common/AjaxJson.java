package com.dota.gg.common;


public class AjaxJson implements java.io.Serializable{
	
	private static final long serialVersionUID = 1L;
	private boolean sucFlag = false;
	private String msg = "";
	private Object obj = null;
	
	public boolean isSucFlag() {
		return sucFlag;
	}
	public void setSucFlag(boolean sucFlag) {
		this.sucFlag = sucFlag;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	public Object getObj() {
		return obj;
	}
	public void setObj(Object obj) {
		this.obj = obj;
	}

}
