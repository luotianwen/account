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
import com.huolong.jcsz.model.Company;
import org.hi.base.organization.model.HiUser;

public abstract class CompanyAbstract extends HiOrg implements Serializable{

 	 /**
	 * id
	 */	
 	protected  Integer id;

 	 /**
	 * 公司名称
	 */	
 	protected  String gsmc;

 	 /**
	 * 税务登记号
	 */	
 	protected  String swdjh;

 	 /**
	 * 计算机代码
	 */	
 	protected  String jsjdm;

 	 /**
	 * 增值税类型
	 */	
 	protected  Integer zzslx;

 	 /**
	 * 营业执照注册号
	 */	
 	protected  String yyzhbh;

 	 /**
	 * 组织机构代码
	 */	
 	protected  String zzjgdm;

 	 /**
	 * 企业类型
	 */	
 	protected  Integer zclx;

 	 /**
	 * 注册资本
	 */	
 	protected  String zczj;

 	 /**
	 * 所属行业
	 */	
 	protected  String sshy;

 	 /**
	 * 法人代表
	 */	
 	protected  String frdb;

 	 /**
	 * 联系电话
	 */	
 	protected  String lxdh;

 	 /**
	 * 传真
	 */	
 	protected  String lxcz;

 	 /**
	 * 电子邮箱
	 */	
 	protected  String dzyx;

 	 /**
	 * 常用联系人
	 */	
 	protected  String lxr;

 	 /**
	 * 联系人电话
	 */	
 	protected  String lxrdh;

 	 /**
	 * 联系人电子邮箱
	 */	
 	protected  String lxrdzyx;

 	 /**
	 * 联系人传真
	 */	
 	protected  String lxrcz;

 	 /**
	 * 注册地址
	 */	
 	protected  String zcdz;

 	 /**
	 * 经营地址
	 */	
 	protected  String jydz;

 	 /**
	 * 通讯地址
	 */	
 	protected  String txdz;

 	 /**
	 * 邮政编码
	 */	
 	protected  String yzbm;

 	 /**
	 * 公司代码
	 */	
 	protected  String gsdm;

 	 /**
	 * 系统启用时间
	 */	
 	protected  String qysj;

 	 /**
	 * 当前期间
	 */	
 	protected  String dqqj;

 	 /**
	 * 初始化状态
	 */	
 	protected  String cshzt;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;

 	 /**
	 * pzsize
	 */	
 	protected  Integer pzsize = 5;

 	 /**
	 * yhsize
	 */	
 	protected  Integer yhsize = 5;

 	 /**
	 * 年度调账截至月
	 */	
 	protected  Integer ndtzjzy = 3;

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
    
    public String getGsmc() {
        return this.gsmc;
    }
    
    public void setGsmc(String gsmc) {
    		if((gsmc != null && this.gsmc == null) || 
				this.gsmc != null && (!this.gsmc.equals(gsmc) || gsmc == null)){
        		this.setDirty(true);
        		this.oldValues.put("gsmc", this.gsmc);
        	}
        this.gsmc = gsmc;
    }
    
    public String getSwdjh() {
        return this.swdjh;
    }
    
    public void setSwdjh(String swdjh) {
    		if((swdjh != null && this.swdjh == null) || 
				this.swdjh != null && (!this.swdjh.equals(swdjh) || swdjh == null)){
        		this.setDirty(true);
        		this.oldValues.put("swdjh", this.swdjh);
        	}
        this.swdjh = swdjh;
    }
    
    public String getJsjdm() {
        return this.jsjdm;
    }
    
    public void setJsjdm(String jsjdm) {
    		if((jsjdm != null && this.jsjdm == null) || 
				this.jsjdm != null && (!this.jsjdm.equals(jsjdm) || jsjdm == null)){
        		this.setDirty(true);
        		this.oldValues.put("jsjdm", this.jsjdm);
        	}
        this.jsjdm = jsjdm;
    }
    
    public Integer getZzslx() {
        return this.zzslx;
    }
    
    public void setZzslx(Integer zzslx) {
    		if((zzslx != null && this.zzslx == null) || 
				this.zzslx != null && (!this.zzslx.equals(zzslx) || zzslx == null)){
        		this.setDirty(true);
        		this.oldValues.put("zzslx", this.zzslx);
        	}
        this.zzslx = zzslx;
    }
    
    public String getYyzhbh() {
        return this.yyzhbh;
    }
    
    public void setYyzhbh(String yyzhbh) {
    		if((yyzhbh != null && this.yyzhbh == null) || 
				this.yyzhbh != null && (!this.yyzhbh.equals(yyzhbh) || yyzhbh == null)){
        		this.setDirty(true);
        		this.oldValues.put("yyzhbh", this.yyzhbh);
        	}
        this.yyzhbh = yyzhbh;
    }
    
    public String getZzjgdm() {
        return this.zzjgdm;
    }
    
    public void setZzjgdm(String zzjgdm) {
    		if((zzjgdm != null && this.zzjgdm == null) || 
				this.zzjgdm != null && (!this.zzjgdm.equals(zzjgdm) || zzjgdm == null)){
        		this.setDirty(true);
        		this.oldValues.put("zzjgdm", this.zzjgdm);
        	}
        this.zzjgdm = zzjgdm;
    }
    
    public Integer getZclx() {
        return this.zclx;
    }
    
    public void setZclx(Integer zclx) {
    		if((zclx != null && this.zclx == null) || 
				this.zclx != null && (!this.zclx.equals(zclx) || zclx == null)){
        		this.setDirty(true);
        		this.oldValues.put("zclx", this.zclx);
        	}
        this.zclx = zclx;
    }
    
    public String getZczj() {
        return this.zczj;
    }
    
    public void setZczj(String zczj) {
    		if((zczj != null && this.zczj == null) || 
				this.zczj != null && (!this.zczj.equals(zczj) || zczj == null)){
        		this.setDirty(true);
        		this.oldValues.put("zczj", this.zczj);
        	}
        this.zczj = zczj;
    }
    
    public String getSshy() {
        return this.sshy;
    }
    
    public void setSshy(String sshy) {
    		if((sshy != null && this.sshy == null) || 
				this.sshy != null && (!this.sshy.equals(sshy) || sshy == null)){
        		this.setDirty(true);
        		this.oldValues.put("sshy", this.sshy);
        	}
        this.sshy = sshy;
    }
    
    public String getFrdb() {
        return this.frdb;
    }
    
    public void setFrdb(String frdb) {
    		if((frdb != null && this.frdb == null) || 
				this.frdb != null && (!this.frdb.equals(frdb) || frdb == null)){
        		this.setDirty(true);
        		this.oldValues.put("frdb", this.frdb);
        	}
        this.frdb = frdb;
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
    
    public String getLxcz() {
        return this.lxcz;
    }
    
    public void setLxcz(String lxcz) {
    		if((lxcz != null && this.lxcz == null) || 
				this.lxcz != null && (!this.lxcz.equals(lxcz) || lxcz == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxcz", this.lxcz);
        	}
        this.lxcz = lxcz;
    }
    
    public String getDzyx() {
        return this.dzyx;
    }
    
    public void setDzyx(String dzyx) {
    		if((dzyx != null && this.dzyx == null) || 
				this.dzyx != null && (!this.dzyx.equals(dzyx) || dzyx == null)){
        		this.setDirty(true);
        		this.oldValues.put("dzyx", this.dzyx);
        	}
        this.dzyx = dzyx;
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
    
    public String getLxrdh() {
        return this.lxrdh;
    }
    
    public void setLxrdh(String lxrdh) {
    		if((lxrdh != null && this.lxrdh == null) || 
				this.lxrdh != null && (!this.lxrdh.equals(lxrdh) || lxrdh == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxrdh", this.lxrdh);
        	}
        this.lxrdh = lxrdh;
    }
    
    public String getLxrdzyx() {
        return this.lxrdzyx;
    }
    
    public void setLxrdzyx(String lxrdzyx) {
    		if((lxrdzyx != null && this.lxrdzyx == null) || 
				this.lxrdzyx != null && (!this.lxrdzyx.equals(lxrdzyx) || lxrdzyx == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxrdzyx", this.lxrdzyx);
        	}
        this.lxrdzyx = lxrdzyx;
    }
    
    public String getLxrcz() {
        return this.lxrcz;
    }
    
    public void setLxrcz(String lxrcz) {
    		if((lxrcz != null && this.lxrcz == null) || 
				this.lxrcz != null && (!this.lxrcz.equals(lxrcz) || lxrcz == null)){
        		this.setDirty(true);
        		this.oldValues.put("lxrcz", this.lxrcz);
        	}
        this.lxrcz = lxrcz;
    }
    
    public String getZcdz() {
        return this.zcdz;
    }
    
    public void setZcdz(String zcdz) {
    		if((zcdz != null && this.zcdz == null) || 
				this.zcdz != null && (!this.zcdz.equals(zcdz) || zcdz == null)){
        		this.setDirty(true);
        		this.oldValues.put("zcdz", this.zcdz);
        	}
        this.zcdz = zcdz;
    }
    
    public String getJydz() {
        return this.jydz;
    }
    
    public void setJydz(String jydz) {
    		if((jydz != null && this.jydz == null) || 
				this.jydz != null && (!this.jydz.equals(jydz) || jydz == null)){
        		this.setDirty(true);
        		this.oldValues.put("jydz", this.jydz);
        	}
        this.jydz = jydz;
    }
    
    public String getTxdz() {
        return this.txdz;
    }
    
    public void setTxdz(String txdz) {
    		if((txdz != null && this.txdz == null) || 
				this.txdz != null && (!this.txdz.equals(txdz) || txdz == null)){
        		this.setDirty(true);
        		this.oldValues.put("txdz", this.txdz);
        	}
        this.txdz = txdz;
    }
    
    public String getYzbm() {
        return this.yzbm;
    }
    
    public void setYzbm(String yzbm) {
    		if((yzbm != null && this.yzbm == null) || 
				this.yzbm != null && (!this.yzbm.equals(yzbm) || yzbm == null)){
        		this.setDirty(true);
        		this.oldValues.put("yzbm", this.yzbm);
        	}
        this.yzbm = yzbm;
    }
    
    public String getGsdm() {
        return this.gsdm;
    }
    
    public void setGsdm(String gsdm) {
    		if((gsdm != null && this.gsdm == null) || 
				this.gsdm != null && (!this.gsdm.equals(gsdm) || gsdm == null)){
        		this.setDirty(true);
        		this.oldValues.put("gsdm", this.gsdm);
        	}
        this.gsdm = gsdm;
    }
    
    public String getQysj() {
        return this.qysj;
    }
    
    public void setQysj(String qysj) {
    		if((qysj != null && this.qysj == null) || 
				this.qysj != null && (!this.qysj.equals(qysj) || qysj == null)){
        		this.setDirty(true);
        		this.oldValues.put("qysj", this.qysj);
        	}
        this.qysj = qysj;
    }
    
    public String getDqqj() {
        return this.dqqj;
    }
    
    public void setDqqj(String dqqj) {
    		if((dqqj != null && this.dqqj == null) || 
				this.dqqj != null && (!this.dqqj.equals(dqqj) || dqqj == null)){
        		this.setDirty(true);
        		this.oldValues.put("dqqj", this.dqqj);
        	}
        this.dqqj = dqqj;
    }
    
    public String getCshzt() {
        return this.cshzt;
    }
    
    public void setCshzt(String cshzt) {
    		if((cshzt != null && this.cshzt == null) || 
				this.cshzt != null && (!this.cshzt.equals(cshzt) || cshzt == null)){
        		this.setDirty(true);
        		this.oldValues.put("cshzt", this.cshzt);
        	}
        this.cshzt = cshzt;
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
    
    public Integer getPzsize() {
        return this.pzsize;
    }
    
    public void setPzsize(Integer pzsize) {
    		if((pzsize != null && this.pzsize == null) || 
				this.pzsize != null && (!this.pzsize.equals(pzsize) || pzsize == null)){
        		this.setDirty(true);
        		this.oldValues.put("pzsize", this.pzsize);
        	}
        this.pzsize = pzsize;
    }
    
    public Integer getYhsize() {
        return this.yhsize;
    }
    
    public void setYhsize(Integer yhsize) {
    		if((yhsize != null && this.yhsize == null) || 
				this.yhsize != null && (!this.yhsize.equals(yhsize) || yhsize == null)){
        		this.setDirty(true);
        		this.oldValues.put("yhsize", this.yhsize);
        	}
        this.yhsize = yhsize;
    }
    
    public Integer getNdtzjzy() {
        return this.ndtzjzy;
    }
    
    public void setNdtzjzy(Integer ndtzjzy) {
    		if((ndtzjzy != null && this.ndtzjzy == null) || 
				this.ndtzjzy != null && (!this.ndtzjzy.equals(ndtzjzy) || ndtzjzy == null)){
        		this.setDirty(true);
        		this.oldValues.put("ndtzjzy", this.ndtzjzy);
        	}
        this.ndtzjzy = ndtzjzy;
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
		 if ( !(other instanceof Company) ) return false;
		 Company castOther = ( Company ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.appendSuper(super.hashCode());
		hcb.append("Company".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("gsmc", this.gsmc)
		.append("swdjh", this.swdjh)
		.append("jsjdm", this.jsjdm)
		.append("yyzhbh", this.yyzhbh)
		.append("zzjgdm", this.zzjgdm)
		.append("zczj", this.zczj)
		.append("sshy", this.sshy)
		.append("frdb", this.frdb)
		.append("lxdh", this.lxdh)
		.append("lxcz", this.lxcz)
		.append("dzyx", this.dzyx)
		.append("lxr", this.lxr)
		.append("lxrdh", this.lxrdh)
		.append("lxrdzyx", this.lxrdzyx)
		.append("lxrcz", this.lxrcz)
		.append("zcdz", this.zcdz)
		.append("jydz", this.jydz)
		.append("txdz", this.txdz)
		.append("yzbm", this.yzbm)
		.append("gsdm", this.gsdm)
		.append("qysj", this.qysj)
		.append("dqqj", this.dqqj)
		.append("cshzt", this.cshzt)
		.append("kjqj", this.kjqj)
		.append("pzsize", this.pzsize)
		.append("yhsize", this.yhsize)
		.append("ndtzjzy", this.ndtzjzy);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}