package com.huolong.jcsz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class BzszPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_b_name;
 	protected  String  f_b_name_op;
	protected  Double  f_b_huilv;
 	protected  String  f_b_huilv_op;
	protected  Integer  f_flg;
 	protected  String  f_flg_op;

 	protected  HiOrgPageInfo orgs;
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
   
    public String getF_b_name() {
        return this.f_b_name;
    }
    
    public void setF_b_name(String f_b_name) {
        this.f_b_name = f_b_name;
    }
    
    public String getF_b_name_op() {
        return this.f_b_name_op;
    }
    
    public void setF_b_name_op(String f_b_name_op) {
        this.f_b_name_op = f_b_name_op;
    }
   
    public Double getF_b_huilv() {
        return this.f_b_huilv;
    }
    
    public void setF_b_huilv(Double f_b_huilv) {
        this.f_b_huilv = f_b_huilv;
    }
    
    public String getF_b_huilv_op() {
        return this.f_b_huilv_op;
    }
    
    public void setF_b_huilv_op(String f_b_huilv_op) {
        this.f_b_huilv_op = f_b_huilv_op;
    }
   
    public Integer getF_flg() {
        return this.f_flg;
    }
    
    public void setF_flg(Integer f_flg) {
        this.f_flg = f_flg;
    }
    
    public String getF_flg_op() {
        return this.f_flg_op;
    }
    
    public void setF_flg_op(String f_flg_op) {
        this.f_flg_op = f_flg_op;
    }
   
	public HiOrgPageInfo getOrgs() {
		return orgs;
	}

	public void setOrgs(HiOrgPageInfo orgs) {
		this.orgs = orgs;
	}
	public HiUserPageInfo getCreator() {
		return creator;
	}

	public void setCreator(HiUserPageInfo creator) {
		this.creator = creator;
	}

}
