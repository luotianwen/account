package com.huolong.kmyeb.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class CkyetjbPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_bzname;
 	protected  String  f_bzname_op;
	protected  String  f_qeckrj;
 	protected  String  f_qeckrj_op;
	protected  String  f_yhname;
 	protected  String  f_yhname_op;
	protected  String  f_kjqj;
 	protected  String  f_kjqj_op;
	protected  String  f_yhdzd;
 	protected  String  f_yhdzd_op;
	protected  String  f_yhysr;
 	protected  String  f_yhysr_op;
	protected  String  f_yhyfr;
 	protected  String  f_yhyfr_op;
	protected  String  f_qeysr;
 	protected  String  f_qeysr_op;
	protected  String  f_qeyfr;
 	protected  String  f_qeyfr_op;
	protected  String  f_qyye;
 	protected  String  f_qyye_op;
	protected  String  f_yhye;
 	protected  String  f_yhye_op;
	protected  String  f_ryname;
 	protected  String  f_ryname_op;

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
   
    public String getF_qeckrj() {
        return this.f_qeckrj;
    }
    
    public void setF_qeckrj(String f_qeckrj) {
        this.f_qeckrj = f_qeckrj;
    }
    
    public String getF_qeckrj_op() {
        return this.f_qeckrj_op;
    }
    
    public void setF_qeckrj_op(String f_qeckrj_op) {
        this.f_qeckrj_op = f_qeckrj_op;
    }
   
    public String getF_yhname() {
        return this.f_yhname;
    }
    
    public void setF_yhname(String f_yhname) {
        this.f_yhname = f_yhname;
    }
    
    public String getF_yhname_op() {
        return this.f_yhname_op;
    }
    
    public void setF_yhname_op(String f_yhname_op) {
        this.f_yhname_op = f_yhname_op;
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
   
    public String getF_yhdzd() {
        return this.f_yhdzd;
    }
    
    public void setF_yhdzd(String f_yhdzd) {
        this.f_yhdzd = f_yhdzd;
    }
    
    public String getF_yhdzd_op() {
        return this.f_yhdzd_op;
    }
    
    public void setF_yhdzd_op(String f_yhdzd_op) {
        this.f_yhdzd_op = f_yhdzd_op;
    }
   
    public String getF_yhysr() {
        return this.f_yhysr;
    }
    
    public void setF_yhysr(String f_yhysr) {
        this.f_yhysr = f_yhysr;
    }
    
    public String getF_yhysr_op() {
        return this.f_yhysr_op;
    }
    
    public void setF_yhysr_op(String f_yhysr_op) {
        this.f_yhysr_op = f_yhysr_op;
    }
   
    public String getF_yhyfr() {
        return this.f_yhyfr;
    }
    
    public void setF_yhyfr(String f_yhyfr) {
        this.f_yhyfr = f_yhyfr;
    }
    
    public String getF_yhyfr_op() {
        return this.f_yhyfr_op;
    }
    
    public void setF_yhyfr_op(String f_yhyfr_op) {
        this.f_yhyfr_op = f_yhyfr_op;
    }
   
    public String getF_qeysr() {
        return this.f_qeysr;
    }
    
    public void setF_qeysr(String f_qeysr) {
        this.f_qeysr = f_qeysr;
    }
    
    public String getF_qeysr_op() {
        return this.f_qeysr_op;
    }
    
    public void setF_qeysr_op(String f_qeysr_op) {
        this.f_qeysr_op = f_qeysr_op;
    }
   
    public String getF_qeyfr() {
        return this.f_qeyfr;
    }
    
    public void setF_qeyfr(String f_qeyfr) {
        this.f_qeyfr = f_qeyfr;
    }
    
    public String getF_qeyfr_op() {
        return this.f_qeyfr_op;
    }
    
    public void setF_qeyfr_op(String f_qeyfr_op) {
        this.f_qeyfr_op = f_qeyfr_op;
    }
   
    public String getF_qyye() {
        return this.f_qyye;
    }
    
    public void setF_qyye(String f_qyye) {
        this.f_qyye = f_qyye;
    }
    
    public String getF_qyye_op() {
        return this.f_qyye_op;
    }
    
    public void setF_qyye_op(String f_qyye_op) {
        this.f_qyye_op = f_qyye_op;
    }
   
    public String getF_yhye() {
        return this.f_yhye;
    }
    
    public void setF_yhye(String f_yhye) {
        this.f_yhye = f_yhye;
    }
    
    public String getF_yhye_op() {
        return this.f_yhye_op;
    }
    
    public void setF_yhye_op(String f_yhye_op) {
        this.f_yhye_op = f_yhye_op;
    }
   
    public String getF_ryname() {
        return this.f_ryname;
    }
    
    public void setF_ryname(String f_ryname) {
        this.f_ryname = f_ryname;
    }
    
    public String getF_ryname_op() {
        return this.f_ryname_op;
    }
    
    public void setF_ryname_op(String f_ryname_op) {
        this.f_ryname_op = f_ryname_op;
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
