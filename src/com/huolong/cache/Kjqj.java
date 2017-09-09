package com.huolong.cache;

import java.io.Serializable;
import java.util.Date;

 public   class Kjqj   implements Serializable{

	 /**
	 * 
	 */
	private static final long serialVersionUID = -3660778379622872325L;

	public Kjqj(String kjqj, Date ksrq, Date jsrq) {
			this.kjqj = kjqj;
			this.ksrq = ksrq;
			this.jsrq = jsrq;
		}

 	 /**
	 * 开始日期
	 */	
 	protected  Date ksrq;

 	 /**
	 * 结束日期
	 */	
 	protected  Date jsrq;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;
 
 	 /**
	 * 公司
	 */	
 	protected  String company;

	public Date getKsrq() {
		return ksrq;
	}

	public void setKsrq(Date ksrq) {
		this.ksrq = ksrq;
	}

	public Date getJsrq() {
		return jsrq;
	}

	public void setJsrq(Date jsrq) {
		this.jsrq = jsrq;
	}

	public String getKjqj() {
		return kjqj;
	}

	public void setKjqj(String kjqj) {
		this.kjqj = kjqj;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}
 	 



}