package com.huolong.kmyeb.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import org.hi.base.organization.model.HiOrg;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.jcsz.model.Company;
import com.huolong.xtsz.model.Kjkm;
import org.hi.base.organization.model.HiUser;

public abstract class KmyebAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 本年累计借方
	 */	
 	protected  String bnljjf;

 	 /**
	 * 本年累计贷方
	 */	
 	protected  String bnljdf;

 	 /**
	 * 本年累计借方(本位币)
	 */	
 	protected  String bnljjfbwb;

 	 /**
	 * 本年累计贷方(本位币)
	 */	
 	protected  String bnljdfbwb;

 	 /**
	 * 本期发生借方
	 */	
 	protected  String jffse;

 	 /**
	 * 本期发生贷方
	 */	
 	protected  String dffse;

 	 /**
	 * 期初余额方向
	 */	
 	protected  String qcyefx;

 	 /**
	 * 期末余额方向
	 */	
 	protected  String qmyefx;

 	 /**
	 * 期末余额
	 */	
 	protected  String qmye;

 	 /**
	 * 年初数量
	 */	
 	protected  String ncsl;

 	 /**
	 * 年初余额外币
	 */	
 	protected  String ncye;

 	 /**
	 * 年初余额本位币
	 */	
 	protected  String ncyebwb;

 	 /**
	 * 本期发生借方数量
	 */	
 	protected  String sljffsesl;

 	 /**
	 * 本期发生贷方数量
	 */	
 	protected  String sldffsesl;

 	 /**
	 * 本年发生借方数量
	 */	
 	protected  String slbnljjfsl;

 	 /**
	 * 本年发生贷方数量
	 */	
 	protected  String slbnljdfsl;

 	 /**
	 * 期初余额数量
	 */	
 	protected  String slqcyesl;

 	 /**
	 * 期初余额单价
	 */	
 	protected  String slqcyedj;

 	 /**
	 * 期末余额数量
	 */	
 	protected  String slqmyesl;

 	 /**
	 * 期末余额单价
	 */	
 	protected  String slqmyedj;

 	 /**
	 * 辅助核算
	 */	
 	protected  String fzhs;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;

 	 /**
	 * 计量单位
	 */	
 	protected  String jldw;

 	 /**
	 * 本位币期初余额
	 */	
 	protected  String qcye;

 	 /**
	 * 外币期初余额
	 */	
 	protected  String cshbwb;

 	 /**
	 * 外币期末余额
	 */	
 	protected  String wbqmye;

 	 /**
	 * 期初本年借方
	 */	
 	protected  String qcbnjf;

 	 /**
	 * 期初本年贷方
	 */	
 	protected  String qcbndf;

 	 /**
	 * 期初本位币本年借方
	 */	
 	protected  String qcbnjfbwb;

 	 /**
	 * 期初本位币本年贷方
	 */	
 	protected  String qcbndfbwb;

 	 /**
	 * 结转前余额累计数
	 */	
 	protected  String jzqyeljs;

 	 /**
	 * 结转前余额本期数
	 */	
 	protected  String jzqyebqs;

 	 /**
	 * 科目编号
	 */	
 	protected  Kjkm kmmclookup;

 	 /**
	 * 
	 */	
 	protected  Company gsid;

 	 /**
	 * 币种名称
	 */	
 	protected  String bzname;

 	 /**
	 * 辅助核算内容
	 */	
 	protected  String fzhsnr;

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
    
    public String getBnljjf() {
        return this.bnljjf;
    }
    
    public void setBnljjf(String bnljjf) {
    		if((bnljjf != null && this.bnljjf == null) || 
				this.bnljjf != null && (!this.bnljjf.equals(bnljjf) || bnljjf == null)){
        		this.setDirty(true);
        		this.oldValues.put("bnljjf", this.bnljjf);
        	}
        this.bnljjf = bnljjf;
    }
    
    public String getBnljdf() {
        return this.bnljdf;
    }
    
    public void setBnljdf(String bnljdf) {
    		if((bnljdf != null && this.bnljdf == null) || 
				this.bnljdf != null && (!this.bnljdf.equals(bnljdf) || bnljdf == null)){
        		this.setDirty(true);
        		this.oldValues.put("bnljdf", this.bnljdf);
        	}
        this.bnljdf = bnljdf;
    }
    
    public String getBnljjfbwb() {
        return this.bnljjfbwb;
    }
    
    public void setBnljjfbwb(String bnljjfbwb) {
    		if((bnljjfbwb != null && this.bnljjfbwb == null) || 
				this.bnljjfbwb != null && (!this.bnljjfbwb.equals(bnljjfbwb) || bnljjfbwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("bnljjfbwb", this.bnljjfbwb);
        	}
        this.bnljjfbwb = bnljjfbwb;
    }
    
    public String getBnljdfbwb() {
        return this.bnljdfbwb;
    }
    
    public void setBnljdfbwb(String bnljdfbwb) {
    		if((bnljdfbwb != null && this.bnljdfbwb == null) || 
				this.bnljdfbwb != null && (!this.bnljdfbwb.equals(bnljdfbwb) || bnljdfbwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("bnljdfbwb", this.bnljdfbwb);
        	}
        this.bnljdfbwb = bnljdfbwb;
    }
    
    public String getJffse() {
        return this.jffse;
    }
    
    public void setJffse(String jffse) {
    		if((jffse != null && this.jffse == null) || 
				this.jffse != null && (!this.jffse.equals(jffse) || jffse == null)){
        		this.setDirty(true);
        		this.oldValues.put("jffse", this.jffse);
        	}
        this.jffse = jffse;
    }
    
    public String getDffse() {
        return this.dffse;
    }
    
    public void setDffse(String dffse) {
    		if((dffse != null && this.dffse == null) || 
				this.dffse != null && (!this.dffse.equals(dffse) || dffse == null)){
        		this.setDirty(true);
        		this.oldValues.put("dffse", this.dffse);
        	}
        this.dffse = dffse;
    }
    
    public String getQcyefx() {
        return this.qcyefx;
    }
    
    public void setQcyefx(String qcyefx) {
    		if((qcyefx != null && this.qcyefx == null) || 
				this.qcyefx != null && (!this.qcyefx.equals(qcyefx) || qcyefx == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcyefx", this.qcyefx);
        	}
        this.qcyefx = qcyefx;
    }
    
    public String getQmyefx() {
        return this.qmyefx;
    }
    
    public void setQmyefx(String qmyefx) {
    		if((qmyefx != null && this.qmyefx == null) || 
				this.qmyefx != null && (!this.qmyefx.equals(qmyefx) || qmyefx == null)){
        		this.setDirty(true);
        		this.oldValues.put("qmyefx", this.qmyefx);
        	}
        this.qmyefx = qmyefx;
    }
    
    public String getQmye() {
        return this.qmye;
    }
    
    public void setQmye(String qmye) {
    		if((qmye != null && this.qmye == null) || 
				this.qmye != null && (!this.qmye.equals(qmye) || qmye == null)){
        		this.setDirty(true);
        		this.oldValues.put("qmye", this.qmye);
        	}
        this.qmye = qmye;
    }
    
    public String getNcsl() {
        return this.ncsl;
    }
    
    public void setNcsl(String ncsl) {
    		if((ncsl != null && this.ncsl == null) || 
				this.ncsl != null && (!this.ncsl.equals(ncsl) || ncsl == null)){
        		this.setDirty(true);
        		this.oldValues.put("ncsl", this.ncsl);
        	}
        this.ncsl = ncsl;
    }
    
    public String getNcye() {
        return this.ncye;
    }
    
    public void setNcye(String ncye) {
    		if((ncye != null && this.ncye == null) || 
				this.ncye != null && (!this.ncye.equals(ncye) || ncye == null)){
        		this.setDirty(true);
        		this.oldValues.put("ncye", this.ncye);
        	}
        this.ncye = ncye;
    }
    
    public String getNcyebwb() {
        return this.ncyebwb;
    }
    
    public void setNcyebwb(String ncyebwb) {
    		if((ncyebwb != null && this.ncyebwb == null) || 
				this.ncyebwb != null && (!this.ncyebwb.equals(ncyebwb) || ncyebwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("ncyebwb", this.ncyebwb);
        	}
        this.ncyebwb = ncyebwb;
    }
    
    public String getSljffsesl() {
        return this.sljffsesl;
    }
    
    public void setSljffsesl(String sljffsesl) {
    		if((sljffsesl != null && this.sljffsesl == null) || 
				this.sljffsesl != null && (!this.sljffsesl.equals(sljffsesl) || sljffsesl == null)){
        		this.setDirty(true);
        		this.oldValues.put("sljffsesl", this.sljffsesl);
        	}
        this.sljffsesl = sljffsesl;
    }
    
    public String getSldffsesl() {
        return this.sldffsesl;
    }
    
    public void setSldffsesl(String sldffsesl) {
    		if((sldffsesl != null && this.sldffsesl == null) || 
				this.sldffsesl != null && (!this.sldffsesl.equals(sldffsesl) || sldffsesl == null)){
        		this.setDirty(true);
        		this.oldValues.put("sldffsesl", this.sldffsesl);
        	}
        this.sldffsesl = sldffsesl;
    }
    
    public String getSlbnljjfsl() {
        return this.slbnljjfsl;
    }
    
    public void setSlbnljjfsl(String slbnljjfsl) {
    		if((slbnljjfsl != null && this.slbnljjfsl == null) || 
				this.slbnljjfsl != null && (!this.slbnljjfsl.equals(slbnljjfsl) || slbnljjfsl == null)){
        		this.setDirty(true);
        		this.oldValues.put("slbnljjfsl", this.slbnljjfsl);
        	}
        this.slbnljjfsl = slbnljjfsl;
    }
    
    public String getSlbnljdfsl() {
        return this.slbnljdfsl;
    }
    
    public void setSlbnljdfsl(String slbnljdfsl) {
    		if((slbnljdfsl != null && this.slbnljdfsl == null) || 
				this.slbnljdfsl != null && (!this.slbnljdfsl.equals(slbnljdfsl) || slbnljdfsl == null)){
        		this.setDirty(true);
        		this.oldValues.put("slbnljdfsl", this.slbnljdfsl);
        	}
        this.slbnljdfsl = slbnljdfsl;
    }
    
    public String getSlqcyesl() {
        return this.slqcyesl;
    }
    
    public void setSlqcyesl(String slqcyesl) {
    		if((slqcyesl != null && this.slqcyesl == null) || 
				this.slqcyesl != null && (!this.slqcyesl.equals(slqcyesl) || slqcyesl == null)){
        		this.setDirty(true);
        		this.oldValues.put("slqcyesl", this.slqcyesl);
        	}
        this.slqcyesl = slqcyesl;
    }
    
    public String getSlqcyedj() {
        return this.slqcyedj;
    }
    
    public void setSlqcyedj(String slqcyedj) {
    		if((slqcyedj != null && this.slqcyedj == null) || 
				this.slqcyedj != null && (!this.slqcyedj.equals(slqcyedj) || slqcyedj == null)){
        		this.setDirty(true);
        		this.oldValues.put("slqcyedj", this.slqcyedj);
        	}
        this.slqcyedj = slqcyedj;
    }
    
    public String getSlqmyesl() {
        return this.slqmyesl;
    }
    
    public void setSlqmyesl(String slqmyesl) {
    		if((slqmyesl != null && this.slqmyesl == null) || 
				this.slqmyesl != null && (!this.slqmyesl.equals(slqmyesl) || slqmyesl == null)){
        		this.setDirty(true);
        		this.oldValues.put("slqmyesl", this.slqmyesl);
        	}
        this.slqmyesl = slqmyesl;
    }
    
    public String getSlqmyedj() {
        return this.slqmyedj;
    }
    
    public void setSlqmyedj(String slqmyedj) {
    		if((slqmyedj != null && this.slqmyedj == null) || 
				this.slqmyedj != null && (!this.slqmyedj.equals(slqmyedj) || slqmyedj == null)){
        		this.setDirty(true);
        		this.oldValues.put("slqmyedj", this.slqmyedj);
        	}
        this.slqmyedj = slqmyedj;
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
    
    public String getJldw() {
        return this.jldw;
    }
    
    public void setJldw(String jldw) {
    		if((jldw != null && this.jldw == null) || 
				this.jldw != null && (!this.jldw.equals(jldw) || jldw == null)){
        		this.setDirty(true);
        		this.oldValues.put("jldw", this.jldw);
        	}
        this.jldw = jldw;
    }
    
    public String getQcye() {
        return this.qcye;
    }
    
    public void setQcye(String qcye) {
    		if((qcye != null && this.qcye == null) || 
				this.qcye != null && (!this.qcye.equals(qcye) || qcye == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcye", this.qcye);
        	}
        this.qcye = qcye;
    }
    
    public String getCshbwb() {
        return this.cshbwb;
    }
    
    public void setCshbwb(String cshbwb) {
    		if((cshbwb != null && this.cshbwb == null) || 
				this.cshbwb != null && (!this.cshbwb.equals(cshbwb) || cshbwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("cshbwb", this.cshbwb);
        	}
        this.cshbwb = cshbwb;
    }
    
    public String getWbqmye() {
        return this.wbqmye;
    }
    
    public void setWbqmye(String wbqmye) {
    		if((wbqmye != null && this.wbqmye == null) || 
				this.wbqmye != null && (!this.wbqmye.equals(wbqmye) || wbqmye == null)){
        		this.setDirty(true);
        		this.oldValues.put("wbqmye", this.wbqmye);
        	}
        this.wbqmye = wbqmye;
    }
    
    public String getQcbnjf() {
        return this.qcbnjf;
    }
    
    public void setQcbnjf(String qcbnjf) {
    		if((qcbnjf != null && this.qcbnjf == null) || 
				this.qcbnjf != null && (!this.qcbnjf.equals(qcbnjf) || qcbnjf == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcbnjf", this.qcbnjf);
        	}
        this.qcbnjf = qcbnjf;
    }
    
    public String getQcbndf() {
        return this.qcbndf;
    }
    
    public void setQcbndf(String qcbndf) {
    		if((qcbndf != null && this.qcbndf == null) || 
				this.qcbndf != null && (!this.qcbndf.equals(qcbndf) || qcbndf == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcbndf", this.qcbndf);
        	}
        this.qcbndf = qcbndf;
    }
    
    public String getQcbnjfbwb() {
        return this.qcbnjfbwb;
    }
    
    public void setQcbnjfbwb(String qcbnjfbwb) {
    		if((qcbnjfbwb != null && this.qcbnjfbwb == null) || 
				this.qcbnjfbwb != null && (!this.qcbnjfbwb.equals(qcbnjfbwb) || qcbnjfbwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcbnjfbwb", this.qcbnjfbwb);
        	}
        this.qcbnjfbwb = qcbnjfbwb;
    }
    
    public String getQcbndfbwb() {
        return this.qcbndfbwb;
    }
    
    public void setQcbndfbwb(String qcbndfbwb) {
    		if((qcbndfbwb != null && this.qcbndfbwb == null) || 
				this.qcbndfbwb != null && (!this.qcbndfbwb.equals(qcbndfbwb) || qcbndfbwb == null)){
        		this.setDirty(true);
        		this.oldValues.put("qcbndfbwb", this.qcbndfbwb);
        	}
        this.qcbndfbwb = qcbndfbwb;
    }
    
    public String getJzqyeljs() {
        return this.jzqyeljs;
    }
    
    public void setJzqyeljs(String jzqyeljs) {
    		if((jzqyeljs != null && this.jzqyeljs == null) || 
				this.jzqyeljs != null && (!this.jzqyeljs.equals(jzqyeljs) || jzqyeljs == null)){
        		this.setDirty(true);
        		this.oldValues.put("jzqyeljs", this.jzqyeljs);
        	}
        this.jzqyeljs = jzqyeljs;
    }
    
    public String getJzqyebqs() {
        return this.jzqyebqs;
    }
    
    public void setJzqyebqs(String jzqyebqs) {
    		if((jzqyebqs != null && this.jzqyebqs == null) || 
				this.jzqyebqs != null && (!this.jzqyebqs.equals(jzqyebqs) || jzqyebqs == null)){
        		this.setDirty(true);
        		this.oldValues.put("jzqyebqs", this.jzqyebqs);
        	}
        this.jzqyebqs = jzqyebqs;
    }
    
    public Kjkm getKmmclookup() {
        return this.kmmclookup;
    }
    
    public void setKmmclookup(Kjkm kmmclookup) {
    		if((kmmclookup != null && this.kmmclookup == null) || 
				this.kmmclookup != null && (!this.kmmclookup.equals(kmmclookup) || kmmclookup == null)){
        		this.setDirty(true);
        		this.oldValues.put("kmmclookup", this.kmmclookup);
        	}
        this.kmmclookup = kmmclookup;
    }
    
    public Company getGsid() {
        return this.gsid;
    }
    
    public void setGsid(Company gsid) {
    		if((gsid != null && this.gsid == null) || 
				this.gsid != null && (!this.gsid.equals(gsid) || gsid == null)){
        		this.setDirty(true);
        		this.oldValues.put("gsid", this.gsid);
        	}
        this.gsid = gsid;
    }
    
    public String getBzname() {
        return this.bzname;
    }
    
    public void setBzname(String bzname) {
    		if((bzname != null && this.bzname == null) || 
				this.bzname != null && (!this.bzname.equals(bzname) || bzname == null)){
        		this.setDirty(true);
        		this.oldValues.put("bzname", this.bzname);
        	}
        this.bzname = bzname;
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
		 if ( !(other instanceof Kmyeb) ) return false;
		 Kmyeb castOther = ( Kmyeb ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Kmyeb".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("bnljjf", this.bnljjf)
		.append("bnljdf", this.bnljdf)
		.append("bnljjfbwb", this.bnljjfbwb)
		.append("bnljdfbwb", this.bnljdfbwb)
		.append("jffse", this.jffse)
		.append("dffse", this.dffse)
		.append("qcyefx", this.qcyefx)
		.append("qmyefx", this.qmyefx)
		.append("qmye", this.qmye)
		.append("ncsl", this.ncsl)
		.append("ncye", this.ncye)
		.append("ncyebwb", this.ncyebwb)
		.append("sljffsesl", this.sljffsesl)
		.append("sldffsesl", this.sldffsesl)
		.append("slbnljjfsl", this.slbnljjfsl)
		.append("slbnljdfsl", this.slbnljdfsl)
		.append("slqcyesl", this.slqcyesl)
		.append("slqcyedj", this.slqcyedj)
		.append("slqmyesl", this.slqmyesl)
		.append("slqmyedj", this.slqmyedj)
		.append("fzhs", this.fzhs)
		.append("kjqj", this.kjqj)
		.append("jldw", this.jldw)
		.append("qcye", this.qcye)
		.append("cshbwb", this.cshbwb)
		.append("wbqmye", this.wbqmye)
		.append("qcbnjf", this.qcbnjf)
		.append("qcbndf", this.qcbndf)
		.append("qcbnjfbwb", this.qcbnjfbwb)
		.append("qcbndfbwb", this.qcbndfbwb)
		.append("jzqyeljs", this.jzqyeljs)
		.append("jzqyebqs", this.jzqyebqs)
		.append("bzname", this.bzname)
		.append("fzhsnr", this.fzhsnr);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}