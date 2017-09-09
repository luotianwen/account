package com.huolong.mjjz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.jcsz.action.YhszPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class YhdzdPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  Date  f_yhRQ;
 	protected  String  f_yhRQ_op;
	protected  Date  f_yhRQ01;
	protected  String  f_yhRQ01_op;
	protected  String  f_yhZY;
 	protected  String  f_yhZY_op;
	protected  String  f_pjh;
 	protected  String  f_pjh_op;
	protected  Double  f_yhJFJE;
 	protected  String  f_yhJFJE_op;
	protected  Double  f_yhDFJE;
 	protected  String  f_yhDFJE_op;
	protected  Double  f_yhYE;
 	protected  String  f_yhYE_op;
	protected  Integer  f_ztai;
 	protected  String  f_ztai_op;
	protected  Integer  f_fjs;
 	protected  String  f_fjs_op;
	protected  String  f_yhPZH;
 	protected  String  f_yhPZH_op;
	protected  Integer  f_tick;
 	protected  String  f_tick_op;

 	protected  YhszPageInfo yhm;
 	protected  HiOrgPageInfo gsid;
 	protected  HiUserPageInfo creator;

    public Integer getF_id() {
        return this.f_id;
    }
    
    public void setF_id(Integer f_id) {
        this.f_id = f_id;
    }
    
    public String getF_id_op() {
        return this.f_id_op;
    }
    
    public void setF_id_op(String f_id_op) {
        this.f_id_op = f_id_op;
    }
   
    public Date getF_yhRQ() {
        return this.f_yhRQ;
    }
    
    public void setF_yhRQ(Date f_yhRQ) {
        this.f_yhRQ = f_yhRQ;
    }
    
    public String getF_yhRQ_op() {
        return this.f_yhRQ_op;
    }
    
    public void setF_yhRQ_op(String f_yhRQ_op) {
        this.f_yhRQ_op = f_yhRQ_op;
    }
    public Date getF_yhRQ01() {
        return this.f_yhRQ01;
    }
    
    public void setF_yhRQ01(Date f_yhRQ01) {
        this.f_yhRQ01 = f_yhRQ01;
    }
    
    public String getF_yhRQ01_op() {
        return this.f_yhRQ01_op;
    }
    
    public void setF_yhRQ01_op(String f_yhRQ01_op) {
        this.f_yhRQ01_op = f_yhRQ01_op;
    }
   
    public String getF_yhZY() {
        return this.f_yhZY;
    }
    
    public void setF_yhZY(String f_yhZY) {
        this.f_yhZY = f_yhZY;
    }
    
    public String getF_yhZY_op() {
        return this.f_yhZY_op;
    }
    
    public void setF_yhZY_op(String f_yhZY_op) {
        this.f_yhZY_op = f_yhZY_op;
    }
   
    public String getF_pjh() {
        return this.f_pjh;
    }
    
    public void setF_pjh(String f_pjh) {
        this.f_pjh = f_pjh;
    }
    
    public String getF_pjh_op() {
        return this.f_pjh_op;
    }
    
    public void setF_pjh_op(String f_pjh_op) {
        this.f_pjh_op = f_pjh_op;
    }
   
    public Double getF_yhJFJE() {
        return this.f_yhJFJE;
    }
    
    public void setF_yhJFJE(Double f_yhJFJE) {
        this.f_yhJFJE = f_yhJFJE;
    }
    
    public String getF_yhJFJE_op() {
        return this.f_yhJFJE_op;
    }
    
    public void setF_yhJFJE_op(String f_yhJFJE_op) {
        this.f_yhJFJE_op = f_yhJFJE_op;
    }
   
    public Double getF_yhDFJE() {
        return this.f_yhDFJE;
    }
    
    public void setF_yhDFJE(Double f_yhDFJE) {
        this.f_yhDFJE = f_yhDFJE;
    }
    
    public String getF_yhDFJE_op() {
        return this.f_yhDFJE_op;
    }
    
    public void setF_yhDFJE_op(String f_yhDFJE_op) {
        this.f_yhDFJE_op = f_yhDFJE_op;
    }
   
    public Double getF_yhYE() {
        return this.f_yhYE;
    }
    
    public void setF_yhYE(Double f_yhYE) {
        this.f_yhYE = f_yhYE;
    }
    
    public String getF_yhYE_op() {
        return this.f_yhYE_op;
    }
    
    public void setF_yhYE_op(String f_yhYE_op) {
        this.f_yhYE_op = f_yhYE_op;
    }
   
    public Integer getF_ztai() {
        return this.f_ztai;
    }
    
    public void setF_ztai(Integer f_ztai) {
        this.f_ztai = f_ztai;
    }
    
    public String getF_ztai_op() {
        return this.f_ztai_op;
    }
    
    public void setF_ztai_op(String f_ztai_op) {
        this.f_ztai_op = f_ztai_op;
    }
   
    public Integer getF_fjs() {
        return this.f_fjs;
    }
    
    public void setF_fjs(Integer f_fjs) {
        this.f_fjs = f_fjs;
    }
    
    public String getF_fjs_op() {
        return this.f_fjs_op;
    }
    
    public void setF_fjs_op(String f_fjs_op) {
        this.f_fjs_op = f_fjs_op;
    }
   
    public String getF_yhPZH() {
        return this.f_yhPZH;
    }
    
    public void setF_yhPZH(String f_yhPZH) {
        this.f_yhPZH = f_yhPZH;
    }
    
    public String getF_yhPZH_op() {
        return this.f_yhPZH_op;
    }
    
    public void setF_yhPZH_op(String f_yhPZH_op) {
        this.f_yhPZH_op = f_yhPZH_op;
    }
   
    public Integer getF_tick() {
        return this.f_tick;
    }
    
    public void setF_tick(Integer f_tick) {
        this.f_tick = f_tick;
    }
    
    public String getF_tick_op() {
        return this.f_tick_op;
    }
    
    public void setF_tick_op(String f_tick_op) {
        this.f_tick_op = f_tick_op;
    }
   
	public YhszPageInfo getYhm() {
		return yhm;
	}

	public void setYhm(YhszPageInfo yhm) {
		this.yhm = yhm;
	}
	public HiOrgPageInfo getGsid() {
		return gsid;
	}

	public void setGsid(HiOrgPageInfo gsid) {
		this.gsid = gsid;
	}
	public HiUserPageInfo getCreator() {
		return creator;
	}

	public void setCreator(HiUserPageInfo creator) {
		this.creator = creator;
	}

}
