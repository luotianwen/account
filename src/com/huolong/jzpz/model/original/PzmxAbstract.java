package com.huolong.jzpz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.xtsz.model.Kjkm;
import org.hi.base.organization.model.HiUser;
import com.huolong.jzpz.model.Jzpz;

public abstract class PzmxAbstract extends BaseObject implements Serializable{

 	
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
 	protected  Kjkm kjkm;

 	 /**
	 * 贷方金额
	 */	
 	protected  Double dfje;

 	 /**
	 * 借方金额
	 */	
 	protected  Double jfje;

 	 /**
	 * jzpz
	 */	
 	protected  Jzpz jzpz;

 	 /**
	 * 币种
	 */	
 	protected  String kmbz;

 	 /**
	 * 汇率
	 */	
 	protected  String hlv;

 	 /**
	 * 辅助核算
	 */	
 	protected  String fzhs;

 	 /**
	 * 辅助核算内容
	 */	
 	protected  String fzhsnr;

 	 /**
	 * 数量
	 */	
 	protected  String sliang;

 	 /**
	 * 单价
	 */	
 	protected  String djia;

 	 /**
	 * 外币借方金额
	 */	
 	protected  Double wbjfje;

 	 /**
	 * 外币贷方金额
	 */	
 	protected  Double wbdfje;

 	 /**
	 * 摘要
	 */	
 	protected  String zhaiyao;

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
    
    public Kjkm getKjkm() {
        return this.kjkm;
    }
    
    public void setKjkm(Kjkm kjkm) {
    		if((kjkm != null && this.kjkm == null) || 
				this.kjkm != null && (!this.kjkm.equals(kjkm) || kjkm == null)){
        		this.setDirty(true);
        		this.oldValues.put("kjkm", this.kjkm);
        	}
        this.kjkm = kjkm;
    }
    
    public Double getDfje() {
        return this.dfje;
    }
    
    public void setDfje(Double dfje) {
    		if((dfje != null && this.dfje == null) || 
				this.dfje != null && (!this.dfje.equals(dfje) || dfje == null)){
        		this.setDirty(true);
        		this.oldValues.put("dfje", this.dfje);
        	}
        this.dfje = dfje;
    }
    
    public Double getJfje() {
        return this.jfje;
    }
    
    public void setJfje(Double jfje) {
    		if((jfje != null && this.jfje == null) || 
				this.jfje != null && (!this.jfje.equals(jfje) || jfje == null)){
        		this.setDirty(true);
        		this.oldValues.put("jfje", this.jfje);
        	}
        this.jfje = jfje;
    }
    
    public Jzpz getJzpz() {
        return this.jzpz;
    }
    
    public void setJzpz(Jzpz jzpz) {
    		if((jzpz != null && this.jzpz == null) || 
				this.jzpz != null && (!this.jzpz.equals(jzpz) || jzpz == null)){
        		this.setDirty(true);
        		this.oldValues.put("jzpz", this.jzpz);
        	}
        this.jzpz = jzpz;
    }
    
   public BaseObject getParentEntity(){
	   return this.jzpz;
   }
   
   public void setParentEntity(BaseObject parent){
	   this.jzpz = (Jzpz)parent;
   }
   
    public String getKmbz() {
        return this.kmbz;
    }
    
    public void setKmbz(String kmbz) {
    		if((kmbz != null && this.kmbz == null) || 
				this.kmbz != null && (!this.kmbz.equals(kmbz) || kmbz == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmbz", this.kmbz);
        	}
        this.kmbz = kmbz;
    }
    
    public String getHlv() {
        return this.hlv;
    }
    
    public void setHlv(String hlv) {
    		if((hlv != null && this.hlv == null) || 
				this.hlv != null && (!this.hlv.equals(hlv) || hlv == null)){
        		this.setDirty(true);
        		this.oldValues.put("hlv", this.hlv);
        	}
        this.hlv = hlv;
    }
    
    public String getFzhs() {
        return this.fzhs;
    }
    
    public void setFzhs(String fzhs) {
    		if((fzhs != null && this.fzhs == null) || 
				this.fzhs != null && (!this.fzhs.equals(fzhs) || fzhs == null)){
        		this.setDirty(true);
        		this.oldValues.put("fzhs", this.fzhs);
        	}
        this.fzhs = fzhs;
    }
    
    public String getFzhsnr() {
        return this.fzhsnr;
    }
    
    public void setFzhsnr(String fzhsnr) {
    		if((fzhsnr != null && this.fzhsnr == null) || 
				this.fzhsnr != null && (!this.fzhsnr.equals(fzhsnr) || fzhsnr == null)){
        		this.setDirty(true);
        		this.oldValues.put("fzhsnr", this.fzhsnr);
        	}
        this.fzhsnr = fzhsnr;
    }
    
    public String getSliang() {
        return this.sliang;
    }
    
    public void setSliang(String sliang) {
    		if((sliang != null && this.sliang == null) || 
				this.sliang != null && (!this.sliang.equals(sliang) || sliang == null)){
        		this.setDirty(true);
        		this.oldValues.put("sliang", this.sliang);
        	}
        this.sliang = sliang;
    }
    
    public String getDjia() {
        return this.djia;
    }
    
    public void setDjia(String djia) {
    		if((djia != null && this.djia == null) || 
				this.djia != null && (!this.djia.equals(djia) || djia == null)){
        		this.setDirty(true);
        		this.oldValues.put("djia", this.djia);
        	}
        this.djia = djia;
    }
    
    public Double getWbjfje() {
        return this.wbjfje;
    }
    
    public void setWbjfje(Double wbjfje) {
    		if((wbjfje != null && this.wbjfje == null) || 
				this.wbjfje != null && (!this.wbjfje.equals(wbjfje) || wbjfje == null)){
        		this.setDirty(true);
        		this.oldValues.put("wbjfje", this.wbjfje);
        	}
        this.wbjfje = wbjfje;
    }
    
    public Double getWbdfje() {
        return this.wbdfje;
    }
    
    public void setWbdfje(Double wbdfje) {
    		if((wbdfje != null && this.wbdfje == null) || 
				this.wbdfje != null && (!this.wbdfje.equals(wbdfje) || wbdfje == null)){
        		this.setDirty(true);
        		this.oldValues.put("wbdfje", this.wbdfje);
        	}
        this.wbdfje = wbdfje;
    }
    
    public String getZhaiyao() {
        return this.zhaiyao;
    }
    
    public void setZhaiyao(String zhaiyao) {
    		if((zhaiyao != null && this.zhaiyao == null) || 
				this.zhaiyao != null && (!this.zhaiyao.equals(zhaiyao) || zhaiyao == null)){
        		this.setDirty(true);
        		this.oldValues.put("zhaiyao", this.zhaiyao);
        	}
        this.zhaiyao = zhaiyao;
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
		 if ( !(other instanceof Pzmx) ) return false;
		 Pzmx castOther = ( Pzmx ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Pzmx".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("dfje", this.dfje)
		.append("jfje", this.jfje)
		.append("kmbz", this.kmbz)
		.append("hlv", this.hlv)
		.append("fzhs", this.fzhs)
		.append("fzhsnr", this.fzhsnr)
		.append("sliang", this.sliang)
		.append("djia", this.djia)
		.append("wbjfje", this.wbjfje)
		.append("wbdfje", this.wbdfje)
		.append("zhaiyao", this.zhaiyao);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}