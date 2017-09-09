package com.huolong.jzpz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.base.organization.action.HiUserPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;

public class JzpzPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_pzbh;
 	protected  String  f_pzbh_op;
	protected  Date  f_pzrq;
 	protected  String  f_pzrq_op;
	protected  Date  f_pzrq01;
	protected  String  f_pzrq01_op;
	protected  Integer  f_fjs;
 	protected  String  f_fjs_op;
	protected  Double  f_zje;
 	protected  String  f_zje_op;
	protected  Integer  f_ztai;
 	protected  String  f_ztai_op;
	protected  String  f_zdr;
 	protected  String  f_zdr_op;
	protected  String  f_shr;
 	protected  String  f_shr_op;
	protected  Date  f_zdrq;
 	protected  String  f_zdrq_op;
	protected  Date  f_zdrq01;
	protected  String  f_zdrq01_op;
	protected  Date  f_shrq;
 	protected  String  f_shrq_op;
	protected  Date  f_shrq01;
	protected  String  f_shrq01_op;
	protected  String  f_shyj;
 	protected  String  f_shyj_op;
	protected  String  f_jzzt;
 	protected  String  f_jzzt_op;
	protected  String  f_jzr;
 	protected  String  f_jzr_op;

 	protected  HiUserPageInfo cwzg;
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
   
    public String getF_pzbh() {
        return this.f_pzbh;
    }
    
    public void setF_pzbh(String f_pzbh) {
        this.f_pzbh = f_pzbh;
    }
    
    public String getF_pzbh_op() {
        return this.f_pzbh_op;
    }
    
    public void setF_pzbh_op(String f_pzbh_op) {
        this.f_pzbh_op = f_pzbh_op;
    }
   
    public Date getF_pzrq() {
        return this.f_pzrq;
    }
    
    public void setF_pzrq(Date f_pzrq) {
        this.f_pzrq = f_pzrq;
    }
    
    public String getF_pzrq_op() {
        return this.f_pzrq_op;
    }
    
    public void setF_pzrq_op(String f_pzrq_op) {
        this.f_pzrq_op = f_pzrq_op;
    }
    public Date getF_pzrq01() {
        return this.f_pzrq01;
    }
    
    public void setF_pzrq01(Date f_pzrq01) {
        this.f_pzrq01 = f_pzrq01;
    }
    
    public String getF_pzrq01_op() {
        return this.f_pzrq01_op;
    }
    
    public void setF_pzrq01_op(String f_pzrq01_op) {
        this.f_pzrq01_op = f_pzrq01_op;
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
   
    public Double getF_zje() {
        return this.f_zje;
    }
    
    public void setF_zje(Double f_zje) {
        this.f_zje = f_zje;
    }
    
    public String getF_zje_op() {
        return this.f_zje_op;
    }
    
    public void setF_zje_op(String f_zje_op) {
        this.f_zje_op = f_zje_op;
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
   
    public String getF_zdr() {
        return this.f_zdr;
    }
    
    public void setF_zdr(String f_zdr) {
        this.f_zdr = f_zdr;
    }
    
    public String getF_zdr_op() {
        return this.f_zdr_op;
    }
    
    public void setF_zdr_op(String f_zdr_op) {
        this.f_zdr_op = f_zdr_op;
    }
   
    public String getF_shr() {
        return this.f_shr;
    }
    
    public void setF_shr(String f_shr) {
        this.f_shr = f_shr;
    }
    
    public String getF_shr_op() {
        return this.f_shr_op;
    }
    
    public void setF_shr_op(String f_shr_op) {
        this.f_shr_op = f_shr_op;
    }
   
    public Date getF_zdrq() {
        return this.f_zdrq;
    }
    
    public void setF_zdrq(Date f_zdrq) {
        this.f_zdrq = f_zdrq;
    }
    
    public String getF_zdrq_op() {
        return this.f_zdrq_op;
    }
    
    public void setF_zdrq_op(String f_zdrq_op) {
        this.f_zdrq_op = f_zdrq_op;
    }
    public Date getF_zdrq01() {
        return this.f_zdrq01;
    }
    
    public void setF_zdrq01(Date f_zdrq01) {
        this.f_zdrq01 = f_zdrq01;
    }
    
    public String getF_zdrq01_op() {
        return this.f_zdrq01_op;
    }
    
    public void setF_zdrq01_op(String f_zdrq01_op) {
        this.f_zdrq01_op = f_zdrq01_op;
    }
   
    public Date getF_shrq() {
        return this.f_shrq;
    }
    
    public void setF_shrq(Date f_shrq) {
        this.f_shrq = f_shrq;
    }
    
    public String getF_shrq_op() {
        return this.f_shrq_op;
    }
    
    public void setF_shrq_op(String f_shrq_op) {
        this.f_shrq_op = f_shrq_op;
    }
    public Date getF_shrq01() {
        return this.f_shrq01;
    }
    
    public void setF_shrq01(Date f_shrq01) {
        this.f_shrq01 = f_shrq01;
    }
    
    public String getF_shrq01_op() {
        return this.f_shrq01_op;
    }
    
    public void setF_shrq01_op(String f_shrq01_op) {
        this.f_shrq01_op = f_shrq01_op;
    }
   
    public String getF_shyj() {
        return this.f_shyj;
    }
    
    public void setF_shyj(String f_shyj) {
        this.f_shyj = f_shyj;
    }
    
    public String getF_shyj_op() {
        return this.f_shyj_op;
    }
    
    public void setF_shyj_op(String f_shyj_op) {
        this.f_shyj_op = f_shyj_op;
    }
   
    public String getF_jzzt() {
        return this.f_jzzt;
    }
    
    public void setF_jzzt(String f_jzzt) {
        this.f_jzzt = f_jzzt;
    }
    
    public String getF_jzzt_op() {
        return this.f_jzzt_op;
    }
    
    public void setF_jzzt_op(String f_jzzt_op) {
        this.f_jzzt_op = f_jzzt_op;
    }
   
    public String getF_jzr() {
        return this.f_jzr;
    }
    
    public void setF_jzr(String f_jzr) {
        this.f_jzr = f_jzr;
    }
    
    public String getF_jzr_op() {
        return this.f_jzr_op;
    }
    
    public void setF_jzr_op(String f_jzr_op) {
        this.f_jzr_op = f_jzr_op;
    }
   
	public HiUserPageInfo getCwzg() {
		return cwzg;
	}

	public void setCwzg(HiUserPageInfo cwzg) {
		this.cwzg = cwzg;
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
