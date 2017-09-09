package com.huolong.jcsz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.jcsz.action.BzszPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class YhszPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_yhmc;
 	protected  String  f_yhmc_op;
	protected  String  f_zhh;
 	protected  String  f_zhh_op;
	protected  Integer  f_zhxz;
 	protected  String  f_zhxz_op;
	protected  String  f_lxr;
 	protected  String  f_lxr_op;
	protected  String  f_lxdh;
 	protected  String  f_lxdh_op;

 	protected  BzszPageInfo ckbz;
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
   
    public String getF_yhmc() {
        return this.f_yhmc;
    }
    
    public void setF_yhmc(String f_yhmc) {
        this.f_yhmc = f_yhmc;
    }
    
    public String getF_yhmc_op() {
        return this.f_yhmc_op;
    }
    
    public void setF_yhmc_op(String f_yhmc_op) {
        this.f_yhmc_op = f_yhmc_op;
    }
   
    public String getF_zhh() {
        return this.f_zhh;
    }
    
    public void setF_zhh(String f_zhh) {
        this.f_zhh = f_zhh;
    }
    
    public String getF_zhh_op() {
        return this.f_zhh_op;
    }
    
    public void setF_zhh_op(String f_zhh_op) {
        this.f_zhh_op = f_zhh_op;
    }
   
    public Integer getF_zhxz() {
        return this.f_zhxz;
    }
    
    public void setF_zhxz(Integer f_zhxz) {
        this.f_zhxz = f_zhxz;
    }
    
    public String getF_zhxz_op() {
        return this.f_zhxz_op;
    }
    
    public void setF_zhxz_op(String f_zhxz_op) {
        this.f_zhxz_op = f_zhxz_op;
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
   
	public BzszPageInfo getCkbz() {
		return ckbz;
	}

	public void setCkbz(BzszPageInfo ckbz) {
		this.ckbz = ckbz;
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
