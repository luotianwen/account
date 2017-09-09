package com.huolong.xtsz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.fzhs.action.FzhsPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class KjkmPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_kmbh;
 	protected  String  f_kmbh_op;
	protected  String  f_kmmc;
 	protected  String  f_kmmc_op;
	protected  Integer  f_kmfx;
 	protected  String  f_kmfx_op;
	protected  String  f_kmjc;
 	protected  String  f_kmjc_op;
	protected  Integer  f_kmlx;
 	protected  String  f_kmlx_op;
	protected  String  f_kmwz;
 	protected  String  f_kmwz_op;
	protected  Integer  f_kmmx;
 	protected  String  f_kmmx_op;
	protected  Integer  f_wbhs;
 	protected  String  f_wbhs_op;
	protected  Integer  f_sljehs;
 	protected  String  f_sljehs_op;
	protected  Integer  f_csh;
 	protected  String  f_csh_op;

 	protected  KjkmPageInfo flkjkm;
 	protected  FzhsPageInfo fzhs;
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
   
    public String getF_kmbh() {
        return this.f_kmbh;
    }
    
    public void setF_kmbh(String f_kmbh) {
        this.f_kmbh = f_kmbh;
    }
    
    public String getF_kmbh_op() {
        return this.f_kmbh_op;
    }
    
    public void setF_kmbh_op(String f_kmbh_op) {
        this.f_kmbh_op = f_kmbh_op;
    }
   
    public String getF_kmmc() {
        return this.f_kmmc;
    }
    
    public void setF_kmmc(String f_kmmc) {
        this.f_kmmc = f_kmmc;
    }
    
    public String getF_kmmc_op() {
        return this.f_kmmc_op;
    }
    
    public void setF_kmmc_op(String f_kmmc_op) {
        this.f_kmmc_op = f_kmmc_op;
    }
   
    public Integer getF_kmfx() {
        return this.f_kmfx;
    }
    
    public void setF_kmfx(Integer f_kmfx) {
        this.f_kmfx = f_kmfx;
    }
    
    public String getF_kmfx_op() {
        return this.f_kmfx_op;
    }
    
    public void setF_kmfx_op(String f_kmfx_op) {
        this.f_kmfx_op = f_kmfx_op;
    }
   
    public String getF_kmjc() {
        return this.f_kmjc;
    }
    
    public void setF_kmjc(String f_kmjc) {
        this.f_kmjc = f_kmjc;
    }
    
    public String getF_kmjc_op() {
        return this.f_kmjc_op;
    }
    
    public void setF_kmjc_op(String f_kmjc_op) {
        this.f_kmjc_op = f_kmjc_op;
    }
   
    public Integer getF_kmlx() {
        return this.f_kmlx;
    }
    
    public void setF_kmlx(Integer f_kmlx) {
        this.f_kmlx = f_kmlx;
    }
    
    public String getF_kmlx_op() {
        return this.f_kmlx_op;
    }
    
    public void setF_kmlx_op(String f_kmlx_op) {
        this.f_kmlx_op = f_kmlx_op;
    }
   
    public String getF_kmwz() {
        return this.f_kmwz;
    }
    
    public void setF_kmwz(String f_kmwz) {
        this.f_kmwz = f_kmwz;
    }
    
    public String getF_kmwz_op() {
        return this.f_kmwz_op;
    }
    
    public void setF_kmwz_op(String f_kmwz_op) {
        this.f_kmwz_op = f_kmwz_op;
    }
   
    public Integer getF_kmmx() {
        return this.f_kmmx;
    }
    
    public void setF_kmmx(Integer f_kmmx) {
        this.f_kmmx = f_kmmx;
    }
    
    public String getF_kmmx_op() {
        return this.f_kmmx_op;
    }
    
    public void setF_kmmx_op(String f_kmmx_op) {
        this.f_kmmx_op = f_kmmx_op;
    }
   
    public Integer getF_wbhs() {
        return this.f_wbhs;
    }
    
    public void setF_wbhs(Integer f_wbhs) {
        this.f_wbhs = f_wbhs;
    }
    
    public String getF_wbhs_op() {
        return this.f_wbhs_op;
    }
    
    public void setF_wbhs_op(String f_wbhs_op) {
        this.f_wbhs_op = f_wbhs_op;
    }
   
    public Integer getF_sljehs() {
        return this.f_sljehs;
    }
    
    public void setF_sljehs(Integer f_sljehs) {
        this.f_sljehs = f_sljehs;
    }
    
    public String getF_sljehs_op() {
        return this.f_sljehs_op;
    }
    
    public void setF_sljehs_op(String f_sljehs_op) {
        this.f_sljehs_op = f_sljehs_op;
    }
   
    public Integer getF_csh() {
        return this.f_csh;
    }
    
    public void setF_csh(Integer f_csh) {
        this.f_csh = f_csh;
    }
    
    public String getF_csh_op() {
        return this.f_csh_op;
    }
    
    public void setF_csh_op(String f_csh_op) {
        this.f_csh_op = f_csh_op;
    }
   
	public KjkmPageInfo getFlkjkm() {
		return flkjkm;
	}

	public void setFlkjkm(KjkmPageInfo flkjkm) {
		this.flkjkm = flkjkm;
	}
	public FzhsPageInfo getFzhs() {
		return fzhs;
	}

	public void setFzhs(FzhsPageInfo fzhs) {
		this.fzhs = fzhs;
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
