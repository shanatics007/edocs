package com.edocs.Utilities;


import io.micrometer.core.instrument.util.StringUtils;

import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Instant;
import java.util.Date;

public class MethodsUtility {

	

	public static long getCurrentTimestamp()
	 {
		 Instant instant = Instant.now();
		 long timeStampMillis = instant.toEpochMilli();
		 return timeStampMillis;
	 }

	public static String getFormatedShippedDate(String date) throws ParseException {

		if (StringUtils.isBlank(date)){
			return "";
		}
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
		Date date1 = dateFormat.parse(date);
        DateFormat dateFormat1 = new SimpleDateFormat("dd-MM-yyy");
		String strDate = dateFormat1.format(date1);
		return strDate;
	}
	
	public static String convertTsToDate(String dateinepoch) throws ParseException {

		if (StringUtils.isBlank(dateinepoch)){
			return "";
		}
		Date date = new Date(new Long(dateinepoch));
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		//String date1 = dateFormat.parse(date);
       // DateFormat dateFormat1 = new SimpleDateFormat("dd-MM-yyy");
		String strDate = dateFormat.format(date);
		return strDate;
	}
}
