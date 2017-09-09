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
import com.huolong.mjjz.model.Yhdzd;
import com.huolong.mjjz.model.YhdzdMX;
import org.hi.base.organization.model.HiUser;

public abstract class YhdzdMXAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 
	 */	
 	protected  Sfk sfk;

 	 /**
	 * 金额
	 */	
 	protected  Double yhje;

 	 /**
	 * 发票张数
	 */	
 	protected  Integer fjs;

 	 /**
	 * yhdzd
	 */	
 	protected  Yhdzd yhdzd;

 	 /**
	 * 对方单位名称
	 */	
 	protected  String wldw;

 	 /**
	 * 备注
	 */	
 	protected  String biaos;

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
    
    public Sfk getSfk() {
        return this.sfk;
    }
    
    public void setSfk(Sfk sfk) {
    		if((sfk != null && this.sfk == null) || 
				this.sfk != null && (!this.sfk.equals(sfk) || sfk == null)){
        		this.setDirty(true);
        		this.oldValues.put("sfk", this.sfk);
        	}
        this.sfk = sfk;
    }
    
    public Double getYhje() {
        return this.yhje;
    }
    
    public void setYhje(Double yhje) {
    		if((yhje != null && this.yhje == null) || 
				this.yhje != null && (!this.yhje.equals(yhje) || yhje == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhje", this.yhje);
        	}
        this.yhje = yhje;
    }
    
    public Integer getFjs() {
        return this.fjs;
    }
    
    public void setFjs(Integer fjs) {
    		if((fjs != null && this.fjs == null) || 
				this.fjs != null && (!this.fjs.equals(fjs) || fjs == null)){
        		this.setDirty(true);
        		this.oldValues.put("fjs", this.fjs);
        	}
        this.fjs = fjs;
    }
    
    public Yhdzd getYhdzd() {
        return this.yhdzd;
    }
    
    public void setYhdzd(Yhdzd yhdzd) {
    		if((yhdzd != null && this.yhdzd == null) || 
				this.yhdzd != null && (!this.yhdzd.equals(yhdzd) || yhdzd == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhdzd", this.yhdzd);
        	}
        this.yhdzd = yhdzd;
    }
    
   public BaseObject getParentEntity(){
	   return this.yhdzd;
   }
   
   public void setParentEntity(BaseObject parent){
	   this.yhdzd = (Yhdzd)parent;
   }
   
    public String getWldw() {
        return this.wldw;
    }
    
    public void setWldw(String wldw) {
    		if((wldw != null && this.wldw == null) || 
				this.wldw != null && (!this.wldw.equals(wldw) || wldw == null)){
        		this.setDirty(true);
        		this.oldValues.put("wldw", this.wldw);
        	}
        this.wldw = wldw;
    }
    
    public String getBiaos() {
        return this.biaos;
    }
    
    public void setBiaos(String biaos) {
    		if((biaos != null && this.biaos == null) || 
				this.biaos != null && (!this.biaos.equals(biaos) || biaos == null)){
        		this.setDirty(true);
        		this.oldValues.put("biaos", this.biaos);
        	}
        this.biaos = biaos;
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
		 if ( !(other instanceof YhdzdMX) ) return false;
		 YhdzdMX castOther = ( YhdzdMX ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("YhdzdMX".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("yhje", this.yhje)
		.append("fjs", this.fjs)
		.append("wldw", this.wldw)
		.append("biaos", this.biaos);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}