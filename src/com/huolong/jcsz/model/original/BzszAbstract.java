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
import com.huolong.jcsz.model.Bzsz;
import org.hi.base.organization.model.HiUser;

public abstract class BzszAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 币种名称
	 */	
 	protected  String b_name;

 	 /**
	 * 汇率
	 */	
 	protected  Double b_huilv;

 	 /**
	 * 标识
	 */	
 	protected  Integer flg = 0;

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
    
    public String getB_name() {
        return this.b_name;
    }
    
    public void setB_name(String b_name) {
    		if((b_name != null && this.b_name == null) || 
				this.b_name != null && (!this.b_name.equals(b_name) || b_name == null)){
        		this.setDirty(true);
        		this.oldValues.put("b_name", this.b_name);
        	}
        this.b_name = b_name;
    }
    
    public Double getB_huilv() {
        return this.b_huilv;
    }
    
    public void setB_huilv(Double b_huilv) {
    		if((b_huilv != null && this.b_huilv == null) || 
				this.b_huilv != null && (!this.b_huilv.equals(b_huilv) || b_huilv == null)){
        		this.setDirty(true);
        		this.oldValues.put("b_huilv", this.b_huilv);
        	}
        this.b_huilv = b_huilv;
    }
    
    public Integer getFlg() {
        return this.flg;
    }
    
    public void setFlg(Integer flg) {
    		if((flg != null && this.flg == null) || 
				this.flg != null && (!this.flg.equals(flg) || flg == null)){
        		this.setDirty(true);
        		this.oldValues.put("flg", this.flg);
        	}
        this.flg = flg;
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
		 if ( !(other instanceof Bzsz) ) return false;
		 Bzsz castOther = ( Bzsz ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Bzsz".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("b_name", this.b_name)
		.append("b_huilv", this.b_huilv)
		.append("flg", this.flg);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}