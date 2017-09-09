package com.huolong.jcsz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import com.huolong.jcsz.model.Yhsz;
import com.huolong.jcsz.model.Bzsz;
import org.hi.base.organization.model.HiUser;

public abstract class YhszAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 银行名称
	 */	
 	protected  String yhmc;

 	 /**
	 * 账户号
	 */	
 	protected  String zhh;

 	 /**
	 * 账户性质
	 */	
 	protected  Integer zhxz;

 	 /**
	 * 存款币种
	 */	
 	protected  Bzsz ckbz;

 	 /**
	 * 联系人
	 */	
 	protected  String lxr;

 	 /**
	 * 联系电话
	 */	
 	protected  String lxdh;

 	 /**
	 * 部门名称
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
    
    public String getYhmc() {
        return this.yhmc;
    }
    
    public void setYhmc(String yhmc) {
    		if((yhmc != null && this.yhmc == null) || 
				this.yhmc != null && (!this.yhmc.equals(yhmc) || yhmc == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhmc", this.yhmc);
        	}
        this.yhmc = yhmc;
    }
    
    public String getZhh() {
        return this.zhh;
    }
    
    public void setZhh(String zhh) {
    		if((zhh != null && this.zhh == null) || 
				this.zhh != null && (!this.zhh.equals(zhh) || zhh == null)){
        		this.setDirty(true);
        		this.oldValues.put("zhh", this.zhh);
        	}
        this.zhh = zhh;
    }
    
    public Integer getZhxz() {
        return this.zhxz;
    }
    
    public void setZhxz(Integer zhxz) {
    		if((zhxz != null && this.zhxz == null) || 
				this.zhxz != null && (!this.zhxz.equals(zhxz) || zhxz == null)){
        		this.setDirty(true);
        		this.oldValues.put("zhxz", this.zhxz);
        	}
        this.zhxz = zhxz;
    }
    
    public Bzsz getCkbz() {
        return this.ckbz;
    }
    
    public void setCkbz(Bzsz ckbz) {
    		if((ckbz != null && this.ckbz == null) || 
				this.ckbz != null && (!this.ckbz.equals(ckbz) || ckbz == null)){
        		this.setDirty(true);
        		this.oldValues.put("ckbz", this.ckbz);
        	}
        this.ckbz = ckbz;
    }
    
    public String getLxr() {
        return this.lxr;
    }
    
    public void setLxr(String lxr) {
    		if((lxr != null && this.lxr == null) || 
				this.lxr != null && (!this.lxr.equals(lxr) || lxr == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxr", this.lxr);
        	}
        this.lxr = lxr;
    }
    
    public String getLxdh() {
        return this.lxdh;
    }
    
    public void setLxdh(String lxdh) {
    		if((lxdh != null && this.lxdh == null) || 
				this.lxdh != null && (!this.lxdh.equals(lxdh) || lxdh == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxdh", this.lxdh);
        	}
        this.lxdh = lxdh;
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
		 if ( !(other instanceof Yhsz) ) return false;
		 Yhsz castOther = ( Yhsz ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Yhsz".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("yhmc", this.yhmc)
		.append("zhh", this.zhh)
		.append("lxr", this.lxr)
		.append("lxdh", this.lxdh);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}