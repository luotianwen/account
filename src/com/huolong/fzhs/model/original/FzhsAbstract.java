package com.huolong.fzhs.model.original;

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
import org.hi.base.organization.model.HiUser;

public abstract class FzhsAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 编码
	 */	
 	protected  String code;

 	 /**
	 * 名称
	 */	
 	protected  String name;

 	 /**
	 * 联系人
	 */	
 	protected  String lxr;

 	 /**
	 * 联系电话
	 */	
 	protected  String lxdh;

 	 /**
	 * 传真号
	 */	
 	protected  String czh;

 	 /**
	 * 地址
	 */	
 	protected  String addr;

 	 /**
	 * 启动日期
	 */	
 	protected  Date qdrq;

 	 /**
	 * 结束日期
	 */	
 	protected  Date jsrq;

 	 /**
	 * 往来核算性质
	 */	
 	protected  Integer wlhsxz;

 	 /**
	 * 存货性质
	 */	
 	protected  Integer chxz;

 	 /**
	 * 规格型号
	 */	
 	protected  String ggxh;

 	 /**
	 * 计量单位
	 */	
 	protected  String jldw;

 	 /**
	 * 性别
	 */	
 	protected  Integer sex;

 	 /**
	 * 辅助核算类型
	 */	
 	protected  Integer fzhslx;

 	 /**
	 * 应用自己
	 */	
 	protected  Fzhs myselef;

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
    
    public String getCode() {
        return this.code;
    }
    
    public void setCode(String code) {
    		if((code != null && this.code == null) || 
				this.code != null && (!this.code.equals(code) || code == null)){
        		this.setDirty(true);
        		this.oldValues.put("code", this.code);
        	}
        this.code = code;
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
    
    public String getCzh() {
        return this.czh;
    }
    
    public void setCzh(String czh) {
    		if((czh != null && this.czh == null) || 
				this.czh != null && (!this.czh.equals(czh) || czh == null)){
        		this.setDirty(true);
        		this.oldValues.put("czh", this.czh);
        	}
        this.czh = czh;
    }
    
    public String getAddr() {
        return this.addr;
    }
    
    public void setAddr(String addr) {
    		if((addr != null && this.addr == null) || 
				this.addr != null && (!this.addr.equals(addr) || addr == null)){
        		this.setDirty(true);
        		this.oldValues.put("addr", this.addr);
        	}
        this.addr = addr;
    }
    
    public Date getQdrq() {
        return this.qdrq;
    }
    
    public void setQdrq(Date qdrq) {
    		if((qdrq != null && this.qdrq == null) || 
				this.qdrq != null && (!this.qdrq.equals(qdrq) || qdrq == null)){
        		this.setDirty(true);
        		this.oldValues.put("qdrq", this.qdrq);
        	}
        this.qdrq = qdrq;
    }
    
    public Date getJsrq() {
        return this.jsrq;
    }
    
    public void setJsrq(Date jsrq) {
    		if((jsrq != null && this.jsrq == null) || 
				this.jsrq != null && (!this.jsrq.equals(jsrq) || jsrq == null)){
        		this.setDirty(true);
        		this.oldValues.put("jsrq", this.jsrq);
        	}
        this.jsrq = jsrq;
    }
    
    public Integer getWlhsxz() {
        return this.wlhsxz;
    }
    
    public void setWlhsxz(Integer wlhsxz) {
    		if((wlhsxz != null && this.wlhsxz == null) || 
				this.wlhsxz != null && (!this.wlhsxz.equals(wlhsxz) || wlhsxz == null)){
        		this.setDirty(true);
        		this.oldValues.put("wlhsxz", this.wlhsxz);
        	}
        this.wlhsxz = wlhsxz;
    }
    
    public Integer getChxz() {
        return this.chxz;
    }
    
    public void setChxz(Integer chxz) {
    		if((chxz != null && this.chxz == null) || 
				this.chxz != null && (!this.chxz.equals(chxz) || chxz == null)){
        		this.setDirty(true);
        		this.oldValues.put("chxz", this.chxz);
        	}
        this.chxz = chxz;
    }
    
    public String getGgxh() {
        return this.ggxh;
    }
    
    public void setGgxh(String ggxh) {
    		if((ggxh != null && this.ggxh == null) || 
				this.ggxh != null && (!this.ggxh.equals(ggxh) || ggxh == null)){
        		this.setDirty(true);
        		this.oldValues.put("ggxh", this.ggxh);
        	}
        this.ggxh = ggxh;
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
    
    public Integer getSex() {
        return this.sex;
    }
    
    public void setSex(Integer sex) {
    		if((sex != null && this.sex == null) || 
				this.sex != null && (!this.sex.equals(sex) || sex == null)){
        		this.setDirty(true);
        		this.oldValues.put("sex", this.sex);
        	}
        this.sex = sex;
    }
    
    public Integer getFzhslx() {
        return this.fzhslx;
    }
    
    public void setFzhslx(Integer fzhslx) {
    		if((fzhslx != null && this.fzhslx == null) || 
				this.fzhslx != null && (!this.fzhslx.equals(fzhslx) || fzhslx == null)){
        		this.setDirty(true);
        		this.oldValues.put("fzhslx", this.fzhslx);
        	}
        this.fzhslx = fzhslx;
    }
    
    public Fzhs getMyselef() {
        return this.myselef;
    }
    
    public void setMyselef(Fzhs myselef) {
    		if((myselef != null && this.myselef == null) || 
				this.myselef != null && (!this.myselef.equals(myselef) || myselef == null)){
        		this.setDirty(true);
        		this.oldValues.put("myselef", this.myselef);
        	}
        this.myselef = myselef;
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
		 if ( !(other instanceof Fzhs) ) return false;
		 Fzhs castOther = ( Fzhs ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Fzhs".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("code", this.code)
		.append("name", this.name)
		.append("lxr", this.lxr)
		.append("lxdh", this.lxdh)
		.append("czh", this.czh)
		.append("addr", this.addr)
		.append("ggxh", this.ggxh)
		.append("jldw", this.jldw);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}