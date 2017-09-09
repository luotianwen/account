package com.huolong.xtsz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import com.huolong.fzhs.model.Fzhs;
import com.huolong.xtsz.model.Kjkm;
import org.hi.base.organization.model.HiUser;

public abstract class KjkmAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 科目编号
	 */	
 	protected  String kmbh;

 	 /**
	 * 科目名称
	 */	
 	protected  String kmmc;

 	 /**
	 * 科目方向
	 */	
 	protected  Integer kmfx;

 	 /**
	 * 科目级次
	 */	
 	protected  String kmjc;

 	 /**
	 * 科目类型
	 */	
 	protected  Integer kmlx;

 	 /**
	 * 科目位置
	 */	
 	protected  String kmwz;

 	 /**
	 * 科目明细
	 */	
 	protected  Integer kmmx;

 	 /**
	 * 父类科目
	 */	
 	protected  Kjkm flkjkm;

 	 /**
	 * 外币核算
	 */	
 	protected  Integer wbhs;

 	 /**
	 * 数量金额式核算
	 */	
 	protected  Integer sljehs;

 	 /**
	 * 标识
	 */	
 	protected  Integer csh;

 	 /**
	 * 辅助核算
	 */	
 	protected  Fzhs fzhs;

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
    
    public String getKmbh() {
        return this.kmbh;
    }
    
    public void setKmbh(String kmbh) {
    		if((kmbh != null && this.kmbh == null) || 
				this.kmbh != null && (!this.kmbh.equals(kmbh) || kmbh == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmbh", this.kmbh);
        	}
        this.kmbh = kmbh;
    }
    
    public String getKmmc() {
        return this.kmmc;
    }
    
    public void setKmmc(String kmmc) {
    		if((kmmc != null && this.kmmc == null) || 
				this.kmmc != null && (!this.kmmc.equals(kmmc) || kmmc == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmmc", this.kmmc);
        	}
        this.kmmc = kmmc;
    }
    
    public Integer getKmfx() {
        return this.kmfx;
    }
    
    public void setKmfx(Integer kmfx) {
    		if((kmfx != null && this.kmfx == null) || 
				this.kmfx != null && (!this.kmfx.equals(kmfx) || kmfx == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmfx", this.kmfx);
        	}
        this.kmfx = kmfx;
    }
    
    public String getKmjc() {
        return this.kmjc;
    }
    
    public void setKmjc(String kmjc) {
    		if((kmjc != null && this.kmjc == null) || 
				this.kmjc != null && (!this.kmjc.equals(kmjc) || kmjc == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmjc", this.kmjc);
        	}
        this.kmjc = kmjc;
    }
    
    public Integer getKmlx() {
        return this.kmlx;
    }
    
    public void setKmlx(Integer kmlx) {
    		if((kmlx != null && this.kmlx == null) || 
				this.kmlx != null && (!this.kmlx.equals(kmlx) || kmlx == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmlx", this.kmlx);
        	}
        this.kmlx = kmlx;
    }
    
    public String getKmwz() {
        return this.kmwz;
    }
    
    public void setKmwz(String kmwz) {
    		if((kmwz != null && this.kmwz == null) || 
				this.kmwz != null && (!this.kmwz.equals(kmwz) || kmwz == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmwz", this.kmwz);
        	}
        this.kmwz = kmwz;
    }
    
    public Integer getKmmx() {
        return this.kmmx;
    }
    
    public void setKmmx(Integer kmmx) {
    		if((kmmx != null && this.kmmx == null) || 
				this.kmmx != null && (!this.kmmx.equals(kmmx) || kmmx == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmmx", this.kmmx);
        	}
        this.kmmx = kmmx;
    }
    
    public Kjkm getFlkjkm() {
        return this.flkjkm;
    }
    
    public void setFlkjkm(Kjkm flkjkm) {
    		if((flkjkm != null && this.flkjkm == null) || 
				this.flkjkm != null && (!this.flkjkm.equals(flkjkm) || flkjkm == null)){
        		this.setDirty(true);
        		this.oldValues.put("flkjkm", this.flkjkm);
        	}
        this.flkjkm = flkjkm;
    }
    
    public Integer getWbhs() {
        return this.wbhs;
    }
    
    public void setWbhs(Integer wbhs) {
    		if((wbhs != null && this.wbhs == null) || 
				this.wbhs != null && (!this.wbhs.equals(wbhs) || wbhs == null)){
        		this.setDirty(true);
        		this.oldValues.put("wbhs", this.wbhs);
        	}
        this.wbhs = wbhs;
    }
    
    public Integer getSljehs() {
        return this.sljehs;
    }
    
    public void setSljehs(Integer sljehs) {
    		if((sljehs != null && this.sljehs == null) || 
				this.sljehs != null && (!this.sljehs.equals(sljehs) || sljehs == null)){
        		this.setDirty(true);
        		this.oldValues.put("sljehs", this.sljehs);
        	}
        this.sljehs = sljehs;
    }
    
    public Integer getCsh() {
        return this.csh;
    }
    
    public void setCsh(Integer csh) {
    		if((csh != null && this.csh == null) || 
				this.csh != null && (!this.csh.equals(csh) || csh == null)){
        		this.setDirty(true);
        		this.oldValues.put("csh", this.csh);
        	}
        this.csh = csh;
    }
    
    public Fzhs getFzhs() {
        return this.fzhs;
    }
    
    public void setFzhs(Fzhs fzhs) {
    		if((fzhs != null && this.fzhs == null) || 
				this.fzhs != null && (!this.fzhs.equals(fzhs) || fzhs == null)){
        		this.setDirty(true);
        		this.oldValues.put("fzhs", this.fzhs);
        	}
        this.fzhs = fzhs;
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
		 if ( !(other instanceof Kjkm) ) return false;
		 Kjkm castOther = ( Kjkm ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Kjkm".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("kmbh", this.kmbh)
		.append("kmmc", this.kmmc)
		.append("kmjc", this.kmjc)
		.append("kmwz", this.kmwz)
		.append("csh", this.csh);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}