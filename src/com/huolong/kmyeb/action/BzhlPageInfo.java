package com.huolong.kmyeb.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class BzhlPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_bzname;
 	protected  String  f_bzname_op;
	protected  String  f_qchl;
 	protected  String  f_qchl_op;
	protected  String  f_qmhl;
 	protected  String  f_qmhl_op;
	protected  String  f_kjqj;
 	protected  String  f_kjqj_op;
	protected  String  f_flg;
 	protected  String  f_flg_op;
	protected  String  f_flg2;
 	protected  String  f_flg2_op;

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
   
    public String getF_bzname() {
        return this.f_bzname;
    }
    
    public void setF_bzname(String f_bzname) {
        this.f_bzname = f_bzname;
    }
    
    public String getF_bzname_op() {
        return this.f_bzname_op;
    }
    
    public void setF_bzname_op(String f_bzname_op) {
        this.f_bzname_op = f_bzname_op;
    }
   
    public String getF_qchl() {
        return this.f_qchl;
    }
    
    public void setF_qchl(String f_qchl) {
        this.f_qchl = f_qchl;
    }
    
    public String getF_qchl_op() {
        return this.f_qchl_op;
    }
    
    public void setF_qchl_op(String f_qchl_op) {
        this.f_qchl_op = f_qchl_op;
    }
   
    public String getF_qmhl() {
        return this.f_qmhl;
    }
    
    public void setF_qmhl(String f_qmhl) {
        this.f_qmhl = f_qmhl;
    }
    
    public String getF_qmhl_op() {
        return this.f_qmhl_op;
    }
    
    public void setF_qmhl_op(String f_qmhl_op) {
        this.f_qmhl_op = f_qmhl_op;
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
   
    public String getF_flg() {
        return this.f_flg;
    }
    
    public void setF_flg(String f_flg) {
        this.f_flg = f_flg;
    }
    
    public String getF_flg_op() {
        return this.f_flg_op;
    }
    
    public void setF_flg_op(String f_flg_op) {
        this.f_flg_op = f_flg_op;
    }
   
    public String getF_flg2() {
        return this.f_flg2;
    }
    
    public void setF_flg2(String f_flg2) {
        this.f_flg2 = f_flg2;
    }
    
    public String getF_flg2_op() {
        return this.f_flg2_op;
    }
    
    public void setF_flg2_op(String f_flg2_op) {
        this.f_flg2_op = f_flg2_op;
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
