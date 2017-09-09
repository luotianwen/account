package com.huolong.mjjz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.mjjz.action.SfkPageInfo;
import com.huolong.mjjz.action.YhdzdPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class YhdzdMXPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  Double  f_yhje;
 	protected  String  f_yhje_op;
	protected  Integer  f_fjs;
 	protected  String  f_fjs_op;
	protected  String  f_wldw;
 	protected  String  f_wldw_op;
	protected  String  f_biaos;
 	protected  String  f_biaos_op;

 	protected  SfkPageInfo sfk;
 	protected  YhdzdPageInfo yhdzd;
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
   
    public Double getF_yhje() {
        return this.f_yhje;
    }
    
    public void setF_yhje(Double f_yhje) {
        this.f_yhje = f_yhje;
    }
    
    public String getF_yhje_op() {
        return this.f_yhje_op;
    }
    
    public void setF_yhje_op(String f_yhje_op) {
        this.f_yhje_op = f_yhje_op;
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
   
    public String getF_wldw() {
        return this.f_wldw;
    }
    
    public void setF_wldw(String f_wldw) {
        this.f_wldw = f_wldw;
    }
    
    public String getF_wldw_op() {
        return this.f_wldw_op;
    }
    
    public void setF_wldw_op(String f_wldw_op) {
        this.f_wldw_op = f_wldw_op;
    }
   
    public String getF_biaos() {
        return this.f_biaos;
    }
    
    public void setF_biaos(String f_biaos) {
        this.f_biaos = f_biaos;
    }
    
    public String getF_biaos_op() {
        return this.f_biaos_op;
    }
    
    public void setF_biaos_op(String f_biaos_op) {
        this.f_biaos_op = f_biaos_op;
    }
   
	public SfkPageInfo getSfk() {
		return sfk;
	}

	public void setSfk(SfkPageInfo sfk) {
		this.sfk = sfk;
	}
	public YhdzdPageInfo getYhdzd() {
		return yhdzd;
	}

	public void setYhdzd(YhdzdPageInfo yhdzd) {
		this.yhdzd = yhdzd;
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
