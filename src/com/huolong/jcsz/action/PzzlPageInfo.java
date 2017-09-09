package com.huolong.jcsz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class PzzlPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_name;
 	protected  String  f_name_op;
	protected  String  f_sname;
 	protected  String  f_sname_op;
	protected  String  f_scode;
 	protected  String  f_scode_op;

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
   
    public String getF_name() {
        return this.f_name;
    }
    
    public void setF_name(String f_name) {
        this.f_name = f_name;
    }
    
    public String getF_name_op() {
        return this.f_name_op;
    }
    
    public void setF_name_op(String f_name_op) {
        this.f_name_op = f_name_op;
    }
   
    public String getF_sname() {
        return this.f_sname;
    }
    
    public void setF_sname(String f_sname) {
        this.f_sname = f_sname;
    }
    
    public String getF_sname_op() {
        return this.f_sname_op;
    }
    
    public void setF_sname_op(String f_sname_op) {
        this.f_sname_op = f_sname_op;
    }
   
    public String getF_scode() {
        return this.f_scode;
    }
    
    public void setF_scode(String f_scode) {
        this.f_scode = f_scode;
    }
    
    public String getF_scode_op() {
        return this.f_scode_op;
    }
    
    public void setF_scode_op(String f_scode_op) {
        this.f_scode_op = f_scode_op;
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
