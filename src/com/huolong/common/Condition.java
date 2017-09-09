package com.huolong.common;

import java.io.Serializable;
import java.util.Date;

import com.huolong.cache.Kjqj;
   public class Condition implements Serializable {
	
	//private static final long serialVersionUID = 1L;	
	private String gsid;
	private String condition1;
	private String condition2;
	private String condition3;
	private String condition4;
	private String condition5;
	private String condition6;
	private String condition7;
	private String condition8;
	private String condition9;
	private String condition10;
	private String condition11;
	private String condition12;
	public String getCondition13() {
		return condition13;
	}
	public void setCondition13(String condition13) {
		this.condition13 = condition13;
	}
	private String condition13;
	private Date ksrq;
	private Date jsrq;
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
	public Condition() {
		super();
	}
	
	public String getGsid() {
		return gsid;
	}
	public void setGsid(String gsid) {
		this.gsid = gsid;
	}
	public String getCondition1() {
		return condition1;
	}
	public void setCondition1(String condition1) {
		this.condition1 = condition1;
	}
	public String getCondition2() {
		return condition2;
	}
	public void setCondition2(String condition2) {
		this.condition2 = condition2;
	}
	public String getCondition3() {
		return condition3;
	}
	public void setCondition3(String condition3) {
		this.condition3 = condition3;
	}
	public String getCondition4() {
		return condition4;
	}
	public void setCondition4(String condition4) {
		this.condition4 = condition4;
	}
	public String getCondition5() {
		return condition5;
	}
	public void setCondition5(String condition5) {
		this.condition5 = condition5;
	}
	public String getCondition6() {
		return condition6;
	}
	public void setCondition6(String condition6) {
		this.condition6 = condition6;
	}
	public String getCondition7() {
		return condition7;
	}
	public void setCondition7(String condition7) {
		this.condition7 = condition7;
	}
	public String getCondition8() {
		return condition8;
	}
	public void setCondition8(String condition8) {
		this.condition8 = condition8;
	}
	public String getCondition9() {
		return condition9;
	}
	public void setCondition9(String condition9) {
		this.condition9 = condition9;
	}
	public String getCondition10() {
		return condition10;
	}
	public void setCondition10(String condition10) {
		this.condition10 = condition10;
	}
	public String getCondition11() {
		return condition11;
	}
	public void setCondition11(String condition11) {
		this.condition11 = condition11;
	}
	public String getCondition12() {
		return condition12;
	}
	public void setCondition12(String condition12) {
		this.condition12 = condition12;
	}
	public void setDate(Kjqj ksqj,Kjqj jsqj){
		this.ksrq=ksqj.getKsrq();
		this.jsrq=jsqj.getJsrq();
	}
	
}
