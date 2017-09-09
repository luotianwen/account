package com.huolong.kmyeb.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import org.hi.base.organization.model.HiUser;
import com.huolong.kmyeb.model.Ckyetjb;

public abstract class CkyetjbAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 币种
	 */	
 	protected  String bzname;

 	 /**
	 * 企业银行存款日记账余额
	 */	
 	protected  String qeckrj;

 	 /**
	 * 银行名称
	 */	
 	protected  String yhname;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;

 	 /**
	 * 银行对账单余额
	 */	
 	protected  String yhdzd;

 	 /**
	 * 银行已收款入
	 */	
 	protected  String yhysr;

 	 /**
	 * 银行已付款入
	 */	
 	protected  String yhyfr;

 	 /**
	 * 企业已收款入
	 */	
 	protected  String qeysr;

 	 /**
	 * 企业已付款入
	 */	
 	protected  String qeyfr;

 	 /**
	 * 企业余额
	 */	
 	protected  String qyye;

 	 /**
	 * 银行余额
	 */	
 	protected  String yhye;

 	 /**
	 * 人员
	 */	
 	protected  String ryname;

 	 /**
	 * 部门
	 */	
 	protected  HiOrg orgs;

 	 /**
	 * 创建人
	 */	
 	protected  HiUser creator = org.hi.framework.security.context.UserContextHelper.getUser();


    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
    		if((id != null && this.id == null) || 
				this.id != null && (!this.id.equals(id) || id == null)){
        		this.setDirty(true);
        		this.oldValues.put("id", this.id);
        	}
        this.id = id;
    }
    
     public Integer getVersion() {
        return this.version;
    }
    
    public void setVersion(Integer version) {
    		if((version != null && this.version == null) || 
				this.version != null && (!this.version.equals(version) || version == null)){
        		this.setDirty(true);
        		this.oldValues.put("version", this.version);
        	}
        this.version = version;
    }
    
    public String getBzname() {
        return this.bzname;
    }
    
    public void setBzname(String bzname) {
    		if((bzname != null && this.bzname == null) || 
				this.bzname != null && (!this.bzname.equals(bzname) || bzname == null)){
        		this.setDirty(true);
        		this.oldValues.put("bzname", this.bzname);
        	}
        this.bzname = bzname;
    }
    
    public String getQeckrj() {
        return this.qeckrj;
    }
    
    public void setQeckrj(String qeckrj) {
    		if((qeckrj != null && this.qeckrj == null) || 
				this.qeckrj != null && (!this.qeckrj.equals(qeckrj) || qeckrj == null)){
        		this.setDirty(true);
        		this.oldValues.put("qeckrj", this.qeckrj);
        	}
        this.qeckrj = qeckrj;
    }
    
    public String getYhname() {
        return this.yhname;
    }
    
    public void setYhname(String yhname) {
    		if((yhname != null && this.yhname == null) || 
				this.yhname != null && (!this.yhname.equals(yhname) || yhname == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhname", this.yhname);
        	}
        this.yhname = yhname;
    }
    
    public String getKjqj() {
        return this.kjqj;
    }
    
    public void setKjqj(String kjqj) {
    		if((kjqj != null && this.kjqj == null) || 
				this.kjqj != null && (!this.kjqj.equals(kjqj) || kjqj == null)){
        		this.setDirty(true);
        		this.oldValues.put("kjqj", this.kjqj);
        	}
        this.kjqj = kjqj;
    }
    
    public String getYhdzd() {
        return this.yhdzd;
    }
    
    public void setYhdzd(String yhdzd) {
    		if((yhdzd != null && this.yhdzd == null) || 
				this.yhdzd != null && (!this.yhdzd.equals(yhdzd) || yhdzd == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhdzd", this.yhdzd);
        	}
        this.yhdzd = yhdzd;
    }
    
    public String getYhysr() {
        return this.yhysr;
    }
    
    public void setYhysr(String yhysr) {
    		if((yhysr != null && this.yhysr == null) || 
				this.yhysr != null && (!this.yhysr.equals(yhysr) || yhysr == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhysr", this.yhysr);
        	}
        this.yhysr = yhysr;
    }
    
    public String getYhyfr() {
        return this.yhyfr;
    }
    
    public void setYhyfr(String yhyfr) {
    		if((yhyfr != null && this.yhyfr == null) || 
				this.yhyfr != null && (!this.yhyfr.equals(yhyfr) || yhyfr == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhyfr", this.yhyfr);
        	}
        this.yhyfr = yhyfr;
    }
    
    public String getQeysr() {
        return this.qeysr;
    }
    
    public void setQeysr(String qeysr) {
    		if((qeysr != null && this.qeysr == null) || 
				this.qeysr != null && (!this.qeysr.equals(qeysr) || qeysr == null)){
        		this.setDirty(true);
        		this.oldValues.put("qeysr", this.qeysr);
        	}
        this.qeysr = qeysr;
    }
    
    public String getQeyfr() {
        return this.qeyfr;
    }
    
    public void setQeyfr(String qeyfr) {
    		if((qeyfr != null && this.qeyfr == null) || 
				this.qeyfr != null && (!this.qeyfr.equals(qeyfr) || qeyfr == null)){
        		this.setDirty(true);
        		this.oldValues.put("qeyfr", this.qeyfr);
        	}
        this.qeyfr = qeyfr;
    }
    
    public String getQyye() {
        return this.qyye;
    }
    
    public void setQyye(String qyye) {
    		if((qyye != null && this.qyye == null) || 
				this.qyye != null && (!this.qyye.equals(qyye) || qyye == null)){
        		this.setDirty(true);
        		this.oldValues.put("qyye", this.qyye);
        	}
        this.qyye = qyye;
    }
    
    public String getYhye() {
        return this.yhye;
    }
    
    public void setYhye(String yhye) {
    		if((yhye != null && this.yhye == null) || 
				this.yhye != null && (!this.yhye.equals(yhye) || yhye == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhye", this.yhye);
        	}
        this.yhye = yhye;
    }
    
    public String getRyname() {
        return this.ryname;
    }
    
    public void setRyname(String ryname) {
    		if((ryname != null && this.ryname == null) || 
				this.ryname != null && (!this.ryname.equals(ryname) || ryname == null)){
        		this.setDirty(true);
        		this.oldValues.put("ryname", this.ryname);
        	}
        this.ryname = ryname;
    }
    
    public HiOrg getOrgs() {
        return this.orgs;
    }
    
    public void setOrgs(HiOrg orgs) {
    		if((orgs != null && this.orgs == null) || 
				this.orgs != null && (!this.orgs.equals(orgs) || orgs == null)){
        		this.setDirty(true);
        		this.oldValues.put("orgs", this.orgs);
        	}
        this.orgs = orgs;
    }
    
    public HiUser getCreator() {
        return this.creator;
    }
    
    public void setCreator(HiUser creator) {
    		if((creator != null && this.creator == null) || 
				this.creator != null && (!this.creator.equals(creator) || creator == null)){
        		this.setDirty(true);
        		this.oldValues.put("creator", this.creator);
        	}
        this.creator = creator;
    }
    


   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Ckyetjb) ) return false;
		 Ckyetjb castOther = ( Ckyetjb ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Ckyetjb".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("bzname", this.bzname)
		.append("qeckrj", this.qeckrj)
		.append("yhname", this.yhname)
		.append("kjqj", this.kjqj)
		.append("yhdzd", this.yhdzd)
		.append("yhysr", this.yhysr)
		.append("yhyfr", this.yhyfr)
		.append("qeysr", this.qeysr)
		.append("qeyfr", this.qeyfr)
		.append("qyye", this.qyye)
		.append("yhye", this.yhye)
		.append("ryname", this.ryname);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}