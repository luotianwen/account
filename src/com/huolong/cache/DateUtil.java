package com.huolong.cache;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@SuppressWarnings("all")    public class DateUtil {
	public static Date getFirstDayOfMonth(Date date) {
		
		Calendar calendar = Calendar.getInstance();calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.setTime(date);
		calendar.set(Calendar.DAY_OF_MONTH, calendar
				.getActualMinimum(Calendar.DAY_OF_MONTH));
		return calendar.getTime();
	}

	public static List getMonth(String date, String date1) {
		List<String> qj = new ArrayList();
		if (date.equals(date1)) {
			qj.add(date1);
		} else {
			String[] data = date.split("-");
			String[] datas = date1.split("-");
			int m = (Integer.parseInt(datas[0]) - Integer.parseInt(data[0]))
					* 12 + Integer.parseInt(datas[1])
					- Integer.parseInt(data[1]);
			qj.add(date);
			int y = Integer.parseInt(data[0]), yf = Integer.parseInt(data[1]);
			String sj = null;
			for (int i = 0; i < m; i++) {
				yf++;
				if (yf >= 13) {
					yf = 1;
					y++;
				}
				int tem = (y + yf)
						- (Integer.parseInt(datas[0]) + Integer
								.parseInt(datas[1]));
				if (tem != 0) {
					if ((yf + "").length() > 1) {
						if (yf == 13)
							sj = y + "-01";
						else {
							sj = y + "-" + yf;
						}
					} else {
						sj = y + "-0" + yf;
					}
					qj.add(sj);
				}
			}
			qj.add(date1);
		}
		return qj;
	}

	public static Date getLastDayOfMonth(Date date) {
		Calendar calendar = Calendar.getInstance();calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.setTime(date);
		int last = calendar.getActualMaximum(Calendar.DAY_OF_MONTH);
		calendar.set(Calendar.DAY_OF_MONTH, last);
		return calendar.getTime();
	}

	public static String getBeforeKjqj(String kjqj) {
		String[] datas = kjqj.split("-");
		Calendar calendar = Calendar.getInstance();calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.set(Calendar.YEAR, Integer.parseInt(datas[0]));
		calendar.set(Calendar.MONTH, Integer.parseInt(datas[1]) - 1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		return sdf.format(getDayBeforeOfMonth(calendar.getTime()));
	}

	public static Date getAfterKjqj(String kjqj) {
		String[] datas = kjqj.split("-");
		Calendar calendar = Calendar.getInstance();
		calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.set(Calendar.YEAR, Integer.parseInt(datas[0]));
		calendar.set(Calendar.MONTH, Integer.parseInt(datas[1]) - 1);
		calendar.add(Calendar.MONTH, 1);
		return calendar.getTime();
	}

	public static String getAfterKjqj(String kjqj, boolean b) {
		String[] datas = kjqj.split("-");
		Calendar calendar = Calendar.getInstance();
		calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.set(Calendar.YEAR, Integer.parseInt(datas[0]));
		calendar.set(Calendar.MONTH, Integer.parseInt(datas[1]) - 1);
		calendar.add(Calendar.MONTH, 1);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
		return sdf.format(getDayBeforeOfMonth(calendar.getTime()));
	}

	public static Date getDateOfKjqj(String kjqj) {
		String[] datas = kjqj.split("-");
		Calendar calendar = Calendar.getInstance();
		calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.set(Calendar.YEAR, Integer.parseInt(datas[0]));
//		int num=Integer.parseInt(datas[1]) - 1;
		calendar.set(Calendar.MONTH, Integer.parseInt(datas[1]) - 1);
//		System.out.println(kjqj+"----dd--------"+calendar.getTime());
		return calendar.getTime();
	}

	public static Date getDayBeforeOfMonth(Date date) {
		Calendar calendar = Calendar.getInstance();calendar.set(2000, 1, 1, 0, 0, 0);
		calendar.setTime(date);
		calendar.set(Calendar.DAY_OF_MONTH, 1);
		calendar.add(Calendar.DATE, -1);
		return calendar.getTime();
	}
	
	public static String getDqsj() {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		java.util.Date d = new java.util.Date();
		return sdf.format(d);
	}
	public static int getMonth(String ksrq) {
		String[] nowdate=getDqsj().split("-");
		String[]month=ksrq.split("-");
		int m=(Integer.parseInt(nowdate[0])-Integer.parseInt(month[0]))*12+Integer.parseInt(nowdate[1])-Integer.parseInt(month[1]);
		return m;
	}
	/**
	 * 获取系统当前日期YYYYMMDD
	 * 
	 * @return String
	 */
	private static String getSystemDate() {
		Calendar caledar = Calendar.getInstance();
		int nYear = caledar.get(Calendar.YEAR);
		int nMonth = caledar.get(Calendar.MONTH) + 1;
		int nDay = caledar.get(Calendar.DATE);
		int nHour=caledar.get(Calendar.HOUR_OF_DAY);
		int nMillise=caledar.get(Calendar.MINUTE);
		int nSecond=caledar.get(Calendar.SECOND);
		String strMonth = "";
		String strDay = "";
		if (nMonth - 10 < 0) {
			strMonth = "0" + nMonth;
		} else {
			strMonth = String.valueOf(nMonth);
		}
		if (nDay - 10 < 0) {
			strDay = "0" + nDay;
		} else {
			strDay = String.valueOf(nDay);
		}
		return "" + nYear + "-" + strMonth + "-" + strDay +" " +nHour+":"+nMillise+":"+nSecond;
	}
	/**
	 * 获取系统当前日期YYYYMMDD
	 * 
	 * @return String
	 */
	private static String getSystemDateTime() {
		Calendar caledar = Calendar.getInstance();
		int nYear = caledar.get(Calendar.YEAR);
		int nMonth = caledar.get(Calendar.MONTH) + 1;
		int nDay = caledar.get(Calendar.DATE);
		int nHour=caledar.get(Calendar.HOUR_OF_DAY);
		int nMillise=caledar.get(Calendar.MINUTE);
		int nSecond=caledar.get(Calendar.SECOND);
		String strMonth = "";
		String strDay = "";
		if (nMonth - 10 < 0) {
			strMonth = "0" + nMonth;
		} else {
			strMonth = String.valueOf(nMonth);
		}
		if (nDay - 10 < 0) {
			strDay = "0" + nDay;
		} else {
			strDay = String.valueOf(nDay);
		}
		return "" + nYear + "-" + strMonth + "-" + strDay +" " +nHour+":"+nMillise+":"+nSecond;
	}
	public static void main(String[] args) throws ParseException {
		String rq="2010-06-01"; 
//		List<String> list = getMonth("2006-05", "2010-06");
//		for (String j : list) {
			System.out.println(getSystemDate());
//		}
//		System.out.println("------------"+getDateOfKjqj("2011-02"));
	}

}
