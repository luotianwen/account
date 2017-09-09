package com.huolong.mjjz.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import com.huolong.mjjz.model.Yhdzd;
import com.huolong.jcsz.model.Yhsz;
import com.huolong.mjjz.model.YhdzdMX;
import org.hi.base.organization.model.HiUser;

public abstract class YhdzdAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 日期
	 */	
 	protected  Date yhRQ;

 	 /**
	 * 摘要
	 */	
 	protected  String yhZY;

 	 /**
	 * 票据号
	 */	
 	protected  String pjh;

 	 /**
	 * 借方金额
	 */	
 	protected  Double yhJFJE;

 	 /**
	 * 贷方金额
	 */	
 	protected  Double yhDFJE;

 	 /**
	 * 余额
	 */	
 	protected  Double yhYE;

 	 /**
	 * 状态
	 */	
 	protected  Integer ztai;

 	 /**
	 * 发票张数
	 */	
 	protected  Integer fjs;

 	 /**
	 * 
	 */	
 	protected  Yhsz yhm;

 	 /**
	 * 凭证字号
	 */	
 	protected  String yhPZH;

 	 /**
	 * 勾对
	 */	
 	protected  Integer tick;

 	 /**
	 * 搜索公司
	 */	
 	protected  HiOrg gsid;

 	 /**
	 * 创建人
	 */	
 	protected  HiUser creator = org.hi.framework.security.context.UserContextHelper.getUser();

	private  List<YhdzdMX> yhdzdMXs;

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
    
    public Date getYhRQ() {
        return this.yhRQ;
    }
    
    public void setYhRQ(Date yhRQ) {
    		if((yhRQ != null && this.yhRQ == null) || 
				this.yhRQ != null && (!this.yhRQ.equals(yhRQ) || yhRQ == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhRQ", this.yhRQ);
        	}
        this.yhRQ = yhRQ;
    }
    
    public String getYhZY() {
        return this.yhZY;
    }
    
    public void setYhZY(String yhZY) {
    		if((yhZY != null && this.yhZY == null) || 
				this.yhZY != null && (!this.yhZY.equals(yhZY) || yhZY == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhZY", this.yhZY);
        	}
        this.yhZY = yhZY;
    }
    
    public String getPjh() {
        return this.pjh;
    }
    
    public void setPjh(String pjh) {
    		if((pjh != null && this.pjh == null) || 
				this.pjh != null && (!this.pjh.equals(pjh) || pjh == null)){
        		this.setDirty(true);
        		this.oldValues.put("pjh", this.pjh);
        	}
        this.pjh = pjh;
    }
    
    public Double getYhJFJE() {
        return this.yhJFJE;
    }
    
    public void setYhJFJE(Double yhJFJE) {
    		if((yhJFJE != null && this.yhJFJE == null) || 
				this.yhJFJE != null && (!this.yhJFJE.equals(yhJFJE) || yhJFJE == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhJFJE", this.yhJFJE);
        	}
        this.yhJFJE = yhJFJE;
    }
    
    public Double getYhDFJE() {
        return this.yhDFJE;
    }
    
    public void setYhDFJE(Double yhDFJE) {
    		if((yhDFJE != null && this.yhDFJE == null) || 
				this.yhDFJE != null && (!this.yhDFJE.equals(yhDFJE) || yhDFJE == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhDFJE", this.yhDFJE);
        	}
        this.yhDFJE = yhDFJE;
    }
    
    public Double getYhYE() {
        return this.yhYE;
    }
    
    public void setYhYE(Double yhYE) {
    		if((yhYE != null && this.yhYE == null) || 
				this.yhYE != null && (!this.yhYE.equals(yhYE) || yhYE == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhYE", this.yhYE);
        	}
        this.yhYE = yhYE;
    }
    
    public Integer getZtai() {
        return this.ztai;
    }
    
    public void setZtai(Integer ztai) {
    		if((ztai != null && this.ztai == null) || 
				this.ztai != null && (!this.ztai.equals(ztai) || ztai == null)){
        		this.setDirty(true);
        		this.oldValues.put("ztai", this.ztai);
        	}
        this.ztai = ztai;
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
    
    public Yhsz getYhm() {
        return this.yhm;
    }
    
    public void setYhm(Yhsz yhm) {
    		if((yhm != null && this.yhm == null) || 
				this.yhm != null && (!this.yhm.equals(yhm) || yhm == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhm", this.yhm);
        	}
        this.yhm = yhm;
    }
    
    public String getYhPZH() {
        return this.yhPZH;
    }
    
    public void setYhPZH(String yhPZH) {
    		if((yhPZH != null && this.yhPZH == null) || 
				this.yhPZH != null && (!this.yhPZH.equals(yhPZH) || yhPZH == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhPZH", this.yhPZH);
        	}
        this.yhPZH = yhPZH;
    }
    
    public Integer getTick() {
        return this.tick;
    }
    
    public void setTick(Integer tick) {
    		if((tick != null && this.tick == null) || 
				this.tick != null && (!this.tick.equals(tick) || tick == null)){
        		this.setDirty(true);
        		this.oldValues.put("tick", this.tick);
        	}
        this.tick = tick;
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
    

    public void setYhdzdMXs(List<YhdzdMX> yhdzdMXs) {
        this.yhdzdMXs = yhdzdMXs;
    }

    public List<YhdzdMX> getYhdzdMXs() {
        return this.yhdzdMXs;
    }

   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Yhdzd) ) return false;
		 Yhdzd castOther = ( Yhdzd ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Yhdzd".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("yhZY", this.yhZY)
		.append("pjh", this.pjh)
		.append("yhJFJE", this.yhJFJE)
		.append("yhDFJE", this.yhDFJE)
		.append("yhYE", this.yhYE)
		.append("fjs", this.fjs)
		.append("yhPZH", this.yhPZH);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}