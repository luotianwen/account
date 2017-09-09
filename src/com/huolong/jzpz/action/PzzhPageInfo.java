package com.huolong.jzpz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiUserPageInfo;

public class PzzhPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_numb;
 	protected  String  f_numb_op;
	protected  String  f_pzzl;
 	protected  String  f_pzzl_op;
	protected  String  f_kjqj;
 	protected  String  f_kjqj_op;
	protected  String  f_yl1;
 	protected  String  f_yl1_op;

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
   
    public String getF_numb() {
        return this.f_numb;
    }
    
    public void setF_numb(String f_numb) {
        this.f_numb = f_numb;
    }
    
    public String getF_numb_op() {
        return this.f_numb_op;
    }
    
    public void setF_numb_op(String f_numb_op) {
        this.f_numb_op = f_numb_op;
    }
   
    public String getF_pzzl() {
        return this.f_pzzl;
    }
    
    public void setF_pzzl(String f_pzzl) {
        this.f_pzzl = f_pzzl;
    }
    
    public String getF_pzzl_op() {
        return this.f_pzzl_op;
    }
    
    public void setF_pzzl_op(String f_pzzl_op) {
        this.f_pzzl_op = f_pzzl_op;
    }
   
    public String getF_kjqj() {
        return this.f_kjqj;
    }
    
    public void setF_kjqj(String f_kjqj) {
        this.f_kjqj = f_kjqj;
    }
    
    public String getF_kjqj_op() {
        return this.f_kjqj_op;
    }
    
    public void setF_kjqj_op(String f_kjqj_op) {
        this.f_kjqj_op = f_kjqj_op;
    }
   
    public String getF_yl1() {
        return this.f_yl1;
    }
    
    public void setF_yl1(String f_yl1) {
        this.f_yl1 = f_yl1;
    }
    
    public String getF_yl1_op() {
        return this.f_yl1_op;
    }
    
    public void setF_yl1_op(String f_yl1_op) {
        this.f_yl1_op = f_yl1_op;
    }
   
	public HiUserPageInfo getCreator() {
		return creator;
	}

	public void setCreator(HiUserPageInfo creator) {
		this.creator = creator;
	}

}
