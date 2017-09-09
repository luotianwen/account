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
import com.huolong.jcsz.model.Pzzl;
import org.hi.base.organization.model.HiUser;

public abstract class PzzlAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 种类名称
	 */	
 	protected  String name;

 	 /**
	 * 简称
	 */	
 	protected  String sname;

 	 /**
	 * 简写编码
	 */	
 	protected  String scode;

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
    
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
    		if((name != null && this.name == null) || 
				this.name != null && (!this.name.equals(name) || name == null)){
        		this.setDirty(true);
        		this.oldValues.put("name", this.name);
        	}
        this.name = name;
    }
    
    public String getSname() {
        return this.sname;
    }
    
    public void setSname(String sname) {
    		if((sname != null && this.sname == null) || 
				this.sname != null && (!this.sname.equals(sname) || sname == null)){
        		this.setDirty(true);
        		this.oldValues.put("sname", this.sname);
        	}
        this.sname = sname;
    }
    
    public String getScode() {
        return this.scode;
    }
    
    public void setScode(String scode) {
    		if((scode != null && this.scode == null) || 
				this.scode != null && (!this.scode.equals(scode) || scode == null)){
        		this.setDirty(true);
        		this.oldValues.put("scode", this.scode);
        	}
        this.scode = scode;
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
		 if ( !(other instanceof Pzzl) ) return false;
		 Pzzl castOther = ( Pzzl ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Pzzl".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("name", this.name)
		.append("sname", this.sname)
		.append("scode", this.scode);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}