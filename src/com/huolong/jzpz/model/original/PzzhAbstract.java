package com.huolong.jzpz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.huolong.jzpz.model.Pzzh;
import org.hi.base.organization.model.HiUser;

public abstract class PzzhAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 序号
	 */	
 	protected  String numb;

 	 /**
	 * 凭证种类
	 */	
 	protected  String pzzl;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;

 	 /**
	 * column_5
	 */	
 	protected  String yl1;

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
    
    public String getNumb() {
        return this.numb;
    }
    
    public void setNumb(String numb) {
    		if((numb != null && this.numb == null) || 
				this.numb != null && (!this.numb.equals(numb) || numb == null)){
        		this.setDirty(true);
        		this.oldValues.put("numb", this.numb);
        	}
        this.numb = numb;
    }
    
    public String getPzzl() {
        return this.pzzl;
    }
    
    public void setPzzl(String pzzl) {
    		if((pzzl != null && this.pzzl == null) || 
				this.pzzl != null && (!this.pzzl.equals(pzzl) || pzzl == null)){
        		this.setDirty(true);
        		this.oldValues.put("pzzl", this.pzzl);
        	}
        this.pzzl = pzzl;
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
    
    public String getYl1() {
        return this.yl1;
    }
    
    public void setYl1(String yl1) {
    		if((yl1 != null && this.yl1 == null) || 
				this.yl1 != null && (!this.yl1.equals(yl1) || yl1 == null)){
        		this.setDirty(true);
        		this.oldValues.put("yl1", this.yl1);
        	}
        this.yl1 = yl1;
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
		 if ( !(other instanceof Pzzh) ) return false;
		 Pzzh castOther = ( Pzzh ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Pzzh".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("numb", this.numb)
		.append("pzzl", this.pzzl)
		.append("kjqj", this.kjqj)
		.append("yl1", this.yl1);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}