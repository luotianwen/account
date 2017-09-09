package com.huolong.cache;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.hi.SpringContextHolder;
import org.hi.framework.security.context.UserContextHelper;

import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.service.CompanyManager;

public class HuolongContextHelper {

	public static Company getCompany() {
		Integer id = UserContextHelper.getOrgId();
		if (id == null)
			return null;
		CompanyManager cmManager = (CompanyManager) SpringContextHolder
				.getBean(Company.class);
		Company company = null;//(Company) Cache.get(id + "");
		if (company == null) {
			company = cmManager.getCompanyById(id);
			//Cache.add(id+"", company);
		}
		return company;
	}
	public static Integer getCompanyId() {
		
		return getCompany()==null?null:getCompany().getId();
	}

	public static Kjqj processKjqjByDqqqj() {
		Company company=getCompany();
		String kjqj=company.getDqqj();
		if(kjqj==null||kjqj.length()==0){
			return null;
		}
		 Date date= DateUtil.getDateOfKjqj(kjqj);
		 Date ksrq=DateUtil.getFirstDayOfMonth(date);
		 Date jsrq=DateUtil.getLastDayOfMonth(date);
		 String kjqj_str=company.getKjqj();
		if(kjqj_str==null){
			 return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq.getTime()));
		}
		String[]kjqjs=kjqj_str.split("-");
		if("1".equals(kjqjs[0])){
			return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq.getTime()));
		}
		ksrq.setDate(Integer.parseInt(kjqjs[1]));
		
		Date jsrq1=DateUtil.getAfterKjqj(kjqj);
		jsrq1.setDate(Integer.parseInt(kjqjs[2]));
		
		return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq1.getTime()));
	}

	
	public static Kjqj processKjqjByKjqj(String kjqj) {
		Company company=getCompany();
		if(kjqj==null||kjqj.length()==0){
			return null;
		}
		 Date date= DateUtil.getDateOfKjqj(kjqj);
		 Date ksrq=DateUtil.getFirstDayOfMonth(date);
		 Date jsrq=DateUtil.getLastDayOfMonth(date);
		 String kjqj_str=company.getKjqj();
		if(kjqj_str==null){
			 return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq.getTime()));
		}
		String[]kjqjs=kjqj_str.split("-");
		if("1".equals(kjqjs[0])){
			return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq.getTime()));
		}
		ksrq.setDate(Integer.parseInt(kjqjs[1]));
		
		Date jsrq1=DateUtil.getAfterKjqj(kjqj);
		jsrq1.setDate(Integer.parseInt(kjqjs[2]));
		
		return new Kjqj(kjqj,new java.sql.Date(ksrq.getTime()),new java.sql.Date(jsrq1.getTime()));
	}

	public static Kjqj processKjqjByKjqj(Date pzrq) {
		
		SimpleDateFormat format=new SimpleDateFormat("yyyy-MM");
		String kjqj_temp=format.format(pzrq);
	    Kjqj kjqj=processKjqjByKjqj(kjqj_temp);
	    
        Date ksrq=kjqj.getKsrq();
        if(ksrq.after(pzrq)){
        	String b_kjqj=DateUtil.getBeforeKjqj(kjqj_temp);
        	kjqj=processKjqjByKjqj( b_kjqj);
        }
        Date jsrq=kjqj.getJsrq();
        if(jsrq.before(pzrq)){
        	String a_kjqj=DateUtil.getAfterKjqj(kjqj_temp,true);
        	kjqj=processKjqjByKjqj(a_kjqj);
        }
		return kjqj;
	}  
}
