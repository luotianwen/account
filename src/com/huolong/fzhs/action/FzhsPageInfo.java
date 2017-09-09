package com.huolong.fzhs.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class FzhsPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_code;
 	protected  String  f_code_op;
	protected  String  f_name;
 	protected  String  f_name_op;
	protected  String  f_lxr;
 	protected  String  f_lxr_op;
	protected  String  f_lxdh;
 	protected  String  f_lxdh_op;
	protected  String  f_czh;
 	protected  String  f_czh_op;
	protected  String  f_addr;
 	protected  String  f_addr_op;
	protected  Date  f_qdrq;
 	protected  String  f_qdrq_op;
	protected  Date  f_qdrq01;
	protected  String  f_qdrq01_op;
	protected  Date  f_jsrq;
 	protected  String  f_jsrq_op;
	protected  Date  f_jsrq01;
	protected  String  f_jsrq01_op;
	protected  Integer  f_wlhsxz;
 	protected  String  f_wlhsxz_op;
	protected  Integer  f_chxz;
 	protected  String  f_chxz_op;
	protected  String  f_ggxh;
 	protected  String  f_ggxh_op;
	protected  String  f_jldw;
 	protected  String  f_jldw_op;
	protected  Integer  f_sex;
 	protected  String  f_sex_op;
	protected  Integer  f_fzhslx;
 	protected  String  f_fzhslx_op;

 	protected  FzhsPageInfo myselef;
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
   
    public String getF_code() {
        return this.f_code;
    }
    
    public void setF_code(String f_code) {
        this.f_code = f_code;
    }
    
    public String getF_code_op() {
        return this.f_code_op;
    }
    
    public void setF_code_op(String f_code_op) {
        this.f_code_op = f_code_op;
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
   
    public String getF_lxr() {
        return this.f_lxr;
    }
    
    public void setF_lxr(String f_lxr) {
        this.f_lxr = f_lxr;
    }
    
    public String getF_lxr_op() {
        return this.f_lxr_op;
    }
    
    public void setF_lxr_op(String f_lxr_op) {
        this.f_lxr_op = f_lxr_op;
    }
   
    public String getF_lxdh() {
        return this.f_lxdh;
    }
    
    public void setF_lxdh(String f_lxdh) {
        this.f_lxdh = f_lxdh;
    }
    
    public String getF_lxdh_op() {
        return this.f_lxdh_op;
    }
    
    public void setF_lxdh_op(String f_lxdh_op) {
        this.f_lxdh_op = f_lxdh_op;
    }
   
    public String getF_czh() {
        return this.f_czh;
    }
    
    public void setF_czh(String f_czh) {
        this.f_czh = f_czh;
    }
    
    public String getF_czh_op() {
        return this.f_czh_op;
    }
    
    public void setF_czh_op(String f_czh_op) {
        this.f_czh_op = f_czh_op;
    }
   
    public String getF_addr() {
        return this.f_addr;
    }
    
    public void setF_addr(String f_addr) {
        this.f_addr = f_addr;
    }
    
    public String getF_addr_op() {
        return this.f_addr_op;
    }
    
    public void setF_addr_op(String f_addr_op) {
        this.f_addr_op = f_addr_op;
    }
   
    public Date getF_qdrq() {
        return this.f_qdrq;
    }
    
    public void setF_qdrq(Date f_qdrq) {
        this.f_qdrq = f_qdrq;
    }
    
    public String getF_qdrq_op() {
        return this.f_qdrq_op;
    }
    
    public void setF_qdrq_op(String f_qdrq_op) {
        this.f_qdrq_op = f_qdrq_op;
    }
    public Date getF_qdrq01() {
        return this.f_qdrq01;
    }
    
    public void setF_qdrq01(Date f_qdrq01) {
        this.f_qdrq01 = f_qdrq01;
    }
    
    public String getF_qdrq01_op() {
        return this.f_qdrq01_op;
    }
    
    public void setF_qdrq01_op(String f_qdrq01_op) {
        this.f_qdrq01_op = f_qdrq01_op;
    }
   
    public Date getF_jsrq() {
        return this.f_jsrq;
    }
    
    public void setF_jsrq(Date f_jsrq) {
        this.f_jsrq = f_jsrq;
    }
    
    public String getF_jsrq_op() {
        return this.f_jsrq_op;
    }
    
    public void setF_jsrq_op(String f_jsrq_op) {
        this.f_jsrq_op = f_jsrq_op;
    }
    public Date getF_jsrq01() {
        return this.f_jsrq01;
    }
    
    public void setF_jsrq01(Date f_jsrq01) {
        this.f_jsrq01 = f_jsrq01;
    }
    
    public String getF_jsrq01_op() {
        return this.f_jsrq01_op;
    }
    
    public void setF_jsrq01_op(String f_jsrq01_op) {
        this.f_jsrq01_op = f_jsrq01_op;
    }
   
    public Integer getF_wlhsxz() {
        return this.f_wlhsxz;
    }
    
    public void setF_wlhsxz(Integer f_wlhsxz) {
        this.f_wlhsxz = f_wlhsxz;
    }
    
    public String getF_wlhsxz_op() {
        return this.f_wlhsxz_op;
    }
    
    public void setF_wlhsxz_op(String f_wlhsxz_op) {
        this.f_wlhsxz_op = f_wlhsxz_op;
    }
   
    public Integer getF_chxz() {
        return this.f_chxz;
    }
    
    public void setF_chxz(Integer f_chxz) {
        this.f_chxz = f_chxz;
    }
    
    public String getF_chxz_op() {
        return this.f_chxz_op;
    }
    
    public void setF_chxz_op(String f_chxz_op) {
        this.f_chxz_op = f_chxz_op;
    }
   
    public String getF_ggxh() {
        return this.f_ggxh;
    }
    
    public void setF_ggxh(String f_ggxh) {
        this.f_ggxh = f_ggxh;
    }
    
    public String getF_ggxh_op() {
        return this.f_ggxh_op;
    }
    
    public void setF_ggxh_op(String f_ggxh_op) {
        this.f_ggxh_op = f_ggxh_op;
    }
   
    public String getF_jldw() {
        return this.f_jldw;
    }
    
    public void setF_jldw(String f_jldw) {
        this.f_jldw = f_jldw;
    }
    
    public String getF_jldw_op() {
        return this.f_jldw_op;
    }
    
    public void setF_jldw_op(String f_jldw_op) {
        this.f_jldw_op = f_jldw_op;
    }
   
    public Integer getF_sex() {
        return this.f_sex;
    }
    
    public void setF_sex(Integer f_sex) {
        this.f_sex = f_sex;
    }
    
    public String getF_sex_op() {
        return this.f_sex_op;
    }
    
    public void setF_sex_op(String f_sex_op) {
        this.f_sex_op = f_sex_op;
    }
   
    public Integer getF_fzhslx() {
        return this.f_fzhslx;
    }
    
    public void setF_fzhslx(Integer f_fzhslx) {
        this.f_fzhslx = f_fzhslx;
    }
    
    public String getF_fzhslx_op() {
        return this.f_fzhslx_op;
    }
    
    public void setF_fzhslx_op(String f_fzhslx_op) {
        this.f_fzhslx_op = f_fzhslx_op;
    }
   
	public FzhsPageInfo getMyselef() {
		return myselef;
	}

	public void setMyselef(FzhsPageInfo myselef) {
		this.myselef = myselef;
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
