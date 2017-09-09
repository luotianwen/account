package com.huolong.mjjz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.xtsz.action.KjkmPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class SfkPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_name;
 	protected  String  f_name_op;
	protected  Integer  f_biaos;
 	protected  String  f_biaos_op;

 	protected  KjkmPageInfo kmm;
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
   
    public Integer getF_biaos() {
        return this.f_biaos;
    }
    
    public void setF_biaos(Integer f_biaos) {
        this.f_biaos = f_biaos;
    }
    
    public String getF_biaos_op() {
        return this.f_biaos_op;
    }
    
    public void setF_biaos_op(String f_biaos_op) {
        this.f_biaos_op = f_biaos_op;
    }
   
	public KjkmPageInfo getKmm() {
		return kmm;
	}

	public void setKmm(KjkmPageInfo kmm) {
		this.kmm = kmm;
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
