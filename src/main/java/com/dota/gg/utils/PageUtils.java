package com.dota.gg.utils;

import java.util.Date;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.time.DateFormatUtils;

public class PageUtils {
	private final static String DEFUALT_DATE_FORMAT = "yyyy-MM-dd";  //默认日期格式
	
	public static String formatDate(Date date, String pattern){
		if(date == null)
			return "";
		if(StringUtils.isBlank(pattern))
			pattern = DEFUALT_DATE_FORMAT;
		return DateFormatUtils.format(date, pattern);
	}
}
