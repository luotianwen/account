package com.huolong.mjjz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.huolong.mjjz.model.Sfk;
import org.hi.base.organization.model.HiOrg;
import com.huolong.xtsz.model.Kjkm;
import org.hi.base.organization.model.HiUser;

public abstract class SfkAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 名称
	 */	
 	protected  String name;

 	 /**
	 * 标识
	 */	
 	protected  Integer biaos;

 	 /**
	 * 名称
	 */	
 	protected  Kjkm kmm;

 	 /**
	 * 搜索公司
	 */	
 	protected  HiOrg gsid;

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
    
    public Integer getBiaos() {
        return this.biaos;
    }
    
    public void setBiaos(Integer biaos) {
    		if((biaos != null && this.biaos == null) || 
				this.biaos != null && (!this.biaos.equals(biaos) || biaos == null)){
        		this.setDirty(true);
        		this.oldValues.put("biaos", this.biaos);
        	}
        this.biaos = biaos;
    }
    
    public Kjkm getKmm() {
        return this.kmm;
    }
    
    public void setKmm(Kjkm kmm) {
    		if((kmm != null && this.kmm == null) || 
				this.kmm != null && (!this.kmm.equals(kmm) || kmm == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmm", this.kmm);
        	}
        this.kmm = kmm;
    }
    
    public HiOrg getGsid() {
        return this.gsid;
    }
    
    public void setGsid(HiOrg gsid) {
    		if((gsid != null && this.gsid == null) || 
				this.gsid != null && (!this.gsid.equals(gsid) || gsid == null)){
        		this.setDirty(true);
        		this.oldValues.put("gsid", this.gsid);
        	}
        this.gsid = gsid;
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
		 if ( !(other instanceof Sfk) ) return false;
		 Sfk castOther = ( Sfk ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Sfk".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("name", this.name);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}