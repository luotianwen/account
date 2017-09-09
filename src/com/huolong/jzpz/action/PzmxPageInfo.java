package com.huolong.jzpz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.jzpz.action.JzpzPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class PzmxPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  Double  f_dfje;
 	protected  String  f_dfje_op;
	protected  Double  f_jfje;
 	protected  String  f_jfje_op;
	protected  String  f_kmbz;
 	protected  String  f_kmbz_op;
	protected  String  f_hlv;
 	protected  String  f_hlv_op;
	protected  String  f_fzhs;
 	protected  String  f_fzhs_op;
	protected  String  f_fzhsnr;
 	protected  String  f_fzhsnr_op;
	protected  String  f_sliang;
 	protected  String  f_sliang_op;
	protected  String  f_djia;
 	protected  String  f_djia_op;
	protected  Double  f_wbjfje;
 	protected  String  f_wbjfje_op;
	protected  Double  f_wbdfje;
 	protected  String  f_wbdfje_op;
	protected  String  f_zhaiyao;
 	protected  String  f_zhaiyao_op;

 	protected  KjkmPageInfo kjkm;
 	protected  JzpzPageInfo jzpz;
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
   
    public Double getF_dfje() {
        return this.f_dfje;
    }
    
    public void setF_dfje(Double f_dfje) {
        this.f_dfje = f_dfje;
    }
    
    public String getF_dfje_op() {
        return this.f_dfje_op;
    }
    
    public void setF_dfje_op(String f_dfje_op) {
        this.f_dfje_op = f_dfje_op;
    }
   
    public Double getF_jfje() {
        return this.f_jfje;
    }
    
    public void setF_jfje(Double f_jfje) {
        this.f_jfje = f_jfje;
    }
    
    public String getF_jfje_op() {
        return this.f_jfje_op;
    }
    
    public void setF_jfje_op(String f_jfje_op) {
        this.f_jfje_op = f_jfje_op;
    }
   
    public String getF_kmbz() {
        return this.f_kmbz;
    }
    
    public void setF_kmbz(String f_kmbz) {
        this.f_kmbz = f_kmbz;
    }
    
    public String getF_kmbz_op() {
        return this.f_kmbz_op;
    }
    
    public void setF_kmbz_op(String f_kmbz_op) {
        this.f_kmbz_op = f_kmbz_op;
    }
   
    public String getF_hlv() {
        return this.f_hlv;
    }
    
    public void setF_hlv(String f_hlv) {
        this.f_hlv = f_hlv;
    }
    
    public String getF_hlv_op() {
        return this.f_hlv_op;
    }
    
    public void setF_hlv_op(String f_hlv_op) {
        this.f_hlv_op = f_hlv_op;
    }
   
    public String getF_fzhs() {
        return this.f_fzhs;
    }
    
    public void setF_fzhs(String f_fzhs) {
        this.f_fzhs = f_fzhs;
    }
    
    public String getF_fzhs_op() {
        return this.f_fzhs_op;
    }
    
    public void setF_fzhs_op(String f_fzhs_op) {
        this.f_fzhs_op = f_fzhs_op;
    }
   
    public String getF_fzhsnr() {
        return this.f_fzhsnr;
    }
    
    public void setF_fzhsnr(String f_fzhsnr) {
        this.f_fzhsnr = f_fzhsnr;
    }
    
    public String getF_fzhsnr_op() {
        return this.f_fzhsnr_op;
    }
    
    public void setF_fzhsnr_op(String f_fzhsnr_op) {
        this.f_fzhsnr_op = f_fzhsnr_op;
    }
   
    public String getF_sliang() {
        return this.f_sliang;
    }
    
    public void setF_sliang(String f_sliang) {
        this.f_sliang = f_sliang;
    }
    
    public String getF_sliang_op() {
        return this.f_sliang_op;
    }
    
    public void setF_sliang_op(String f_sliang_op) {
        this.f_sliang_op = f_sliang_op;
    }
   
    public String getF_djia() {
        return this.f_djia;
    }
    
    public void setF_djia(String f_djia) {
        this.f_djia = f_djia;
    }
    
    public String getF_djia_op() {
        return this.f_djia_op;
    }
    
    public void setF_djia_op(String f_djia_op) {
        this.f_djia_op = f_djia_op;
    }
   
    public Double getF_wbjfje() {
        return this.f_wbjfje;
    }
    
    public void setF_wbjfje(Double f_wbjfje) {
        this.f_wbjfje = f_wbjfje;
    }
    
    public String getF_wbjfje_op() {
        return this.f_wbjfje_op;
    }
    
    public void setF_wbjfje_op(String f_wbjfje_op) {
        this.f_wbjfje_op = f_wbjfje_op;
    }
   
    public Double getF_wbdfje() {
        return this.f_wbdfje;
    }
    
    public void setF_wbdfje(Double f_wbdfje) {
        this.f_wbdfje = f_wbdfje;
    }
    
    public String getF_wbdfje_op() {
        return this.f_wbdfje_op;
    }
    
    public void setF_wbdfje_op(String f_wbdfje_op) {
        this.f_wbdfje_op = f_wbdfje_op;
    }
   
    public String getF_zhaiyao() {
        return this.f_zhaiyao;
    }
    
    public void setF_zhaiyao(String f_zhaiyao) {
        this.f_zhaiyao = f_zhaiyao;
    }
    
    public String getF_zhaiyao_op() {
        return this.f_zhaiyao_op;
    }
    
    public void setF_zhaiyao_op(String f_zhaiyao_op) {
        this.f_zhaiyao_op = f_zhaiyao_op;
    }
   
	public KjkmPageInfo getKjkm() {
		return kjkm;
	}

	public void setKjkm(KjkmPageInfo kjkm) {
		this.kjkm = kjkm;
	}
	public JzpzPageInfo getJzpz() {
		return jzpz;
	}

	public void setJzpz(JzpzPageInfo jzpz) {
		this.jzpz = jzpz;
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
