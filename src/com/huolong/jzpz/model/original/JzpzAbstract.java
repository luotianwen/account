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
import org.hi.base.organization.model.HiUser;
import com.huolong.jzpz.model.Jzpz;

public abstract class JzpzAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 凭证编号
	 */	
 	protected  String pzbh;

 	 /**
	 * 凭证日期
	 */	
 	protected  Date pzrq;

 	 /**
	 * 附件数
	 */	
 	protected  Integer fjs;

 	 /**
	 * 金额
	 */	
 	protected  Double zje=0d;

 	 /**
	 * 状态
	 */	
 	protected  Integer ztai;

 	 /**
	 * 制单人
	 */	
 	protected  String zdr;

 	 /**
	 * 审核人
	 */	
 	protected  String shr;

 	 /**
	 * 
	 */	
 	protected  HiUser cwzg;

 	 /**
	 * 制单日期
	 */	
 	protected  Date zdrq=new Date();

 	 /**
	 * 审核日期
	 */	
 	protected  Date shrq;

 	 /**
	 * 审核意见
	 */	
 	protected  String shyj;

 	 /**
	 * 结账状态
	 */	
 	protected  String jzzt;

 	 /**
	 * 记账人
	 */	
 	protected  String jzr;

 	 /**
	 * 部门
	 */	
 	protected  HiOrg orgs;

 	 /**
	 * 创建人
	 */	
 	protected  HiUser creator = org.hi.framework.security.context.UserContextHelper.getUser();

	private  List<Pzmx> pzmxs;

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
    
    public String getPzbh() {
        return this.pzbh;
    }
    
    public void setPzbh(String pzbh) {
    		if((pzbh != null && this.pzbh == null) || 
				this.pzbh != null && (!this.pzbh.equals(pzbh) || pzbh == null)){
        		this.setDirty(true);
        		this.oldValues.put("pzbh", this.pzbh);
        	}
        this.pzbh = pzbh;
    }
    
    public Date getPzrq() {
        return this.pzrq;
    }
    
    public void setPzrq(Date pzrq) {
    		if((pzrq != null && this.pzrq == null) || 
				this.pzrq != null && (!this.pzrq.equals(pzrq) || pzrq == null)){
        		this.setDirty(true);
        		this.oldValues.put("pzrq", this.pzrq);
        	}
        this.pzrq = pzrq;
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
    
    public Double getZje() {
        return this.zje;
    }
    
    public void setZje(Double zje) {
    		if((zje != null && this.zje == null) || 
				this.zje != null && (!this.zje.equals(zje) || zje == null)){
        		this.setDirty(true);
        		this.oldValues.put("zje", this.zje);
        	}
        this.zje = zje;
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
    
    public String getZdr() {
        return this.zdr;
    }
    
    public void setZdr(String zdr) {
    		if((zdr != null && this.zdr == null) || 
				this.zdr != null && (!this.zdr.equals(zdr) || zdr == null)){
        		this.setDirty(true);
        		this.oldValues.put("zdr", this.zdr);
        	}
        this.zdr = zdr;
    }
    
    public String getShr() {
        return this.shr;
    }
    
    public void setShr(String shr) {
    		if((shr != null && this.shr == null) || 
				this.shr != null && (!this.shr.equals(shr) || shr == null)){
        		this.setDirty(true);
        		this.oldValues.put("shr", this.shr);
        	}
        this.shr = shr;
    }
    
    public HiUser getCwzg() {
        return this.cwzg;
    }
    
    public void setCwzg(HiUser cwzg) {
    		if((cwzg != null && this.cwzg == null) || 
				this.cwzg != null && (!this.cwzg.equals(cwzg) || cwzg == null)){
        		this.setDirty(true);
        		this.oldValues.put("cwzg", this.cwzg);
        	}
        this.cwzg = cwzg;
    }
    
    public Date getZdrq() {
        return this.zdrq;
    }
    
    public void setZdrq(Date zdrq) {
    		if((zdrq != null && this.zdrq == null) || 
				this.zdrq != null && (!this.zdrq.equals(zdrq) || zdrq == null)){
        		this.setDirty(true);
        		this.oldValues.put("zdrq", this.zdrq);
        	}
        this.zdrq = zdrq;
    }
    
    public Date getShrq() {
        return this.shrq;
    }
    
    public void setShrq(Date shrq) {
    		if((shrq != null && this.shrq == null) || 
				this.shrq != null && (!this.shrq.equals(shrq) || shrq == null)){
        		this.setDirty(true);
        		this.oldValues.put("shrq", this.shrq);
        	}
        this.shrq = shrq;
    }
    
    public String getShyj() {
        return this.shyj;
    }
    
    public void setShyj(String shyj) {
    		if((shyj != null && this.shyj == null) || 
				this.shyj != null && (!this.shyj.equals(shyj) || shyj == null)){
        		this.setDirty(true);
        		this.oldValues.put("shyj", this.shyj);
        	}
        this.shyj = shyj;
    }
    
    public String getJzzt() {
        return this.jzzt;
    }
    
    public void setJzzt(String jzzt) {
    		if((jzzt != null && this.jzzt == null) || 
				this.jzzt != null && (!this.jzzt.equals(jzzt) || jzzt == null)){
        		this.setDirty(true);
        		this.oldValues.put("jzzt", this.jzzt);
        	}
        this.jzzt = jzzt;
    }
    
    public String getJzr() {
        return this.jzr;
    }
    
    public void setJzr(String jzr) {
    		if((jzr != null && this.jzr == null) || 
				this.jzr != null && (!this.jzr.equals(jzr) || jzr == null)){
        		this.setDirty(true);
        		this.oldValues.put("jzr", this.jzr);
        	}
        this.jzr = jzr;
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
    

    public void setPzmxs(List<Pzmx> pzmxs) {
        this.pzmxs = pzmxs;
    }

    public List<Pzmx> getPzmxs() {
        return this.pzmxs;
    }

   public boolean equals(Object other) {
         if ( (this == other ) ) return true;
		 if ( (other == null ) ) return false;
		 if ( !(other instanceof Jzpz) ) return false;
		 Jzpz castOther = ( Jzpz ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Jzpz".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("pzbh", this.pzbh)
		.append("fjs", this.fjs)
		.append("zje", this.zje)
		.append("zdr", this.zdr)
		.append("shr", this.shr)
		.append("shyj", this.shyj)
		.append("jzzt", this.jzzt)
		.append("jzr", this.jzr);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}