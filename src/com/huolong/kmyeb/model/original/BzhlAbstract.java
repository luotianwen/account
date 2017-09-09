package com.huolong.kmyeb.model.original;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import org.hi.framework.model.BaseObject;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

import com.huolong.kmyeb.model.Bzhl;
import org.hi.base.organization.model.HiOrg;
import org.hi.base.organization.model.HiUser;

public abstract class BzhlAbstract extends BaseObject implements Serializable{

 	
 	/**
	 * 主键id
	 */	
	protected  Integer id;

	/**
	 * 版本控制version
	 */	
 	protected  Integer version;

 	 /**
	 * 币种名称
	 */	
 	protected  String bzname;

 	 /**
	 * 期初汇率
	 */	
 	protected  String qchl;

 	 /**
	 * 期末汇率
	 */	
 	protected  String qmhl;

 	 /**
	 * 会计期间
	 */	
 	protected  String kjqj;

 	 /**
	 * column_6
	 */	
 	protected  String flg;

 	 /**
	 * column_7
	 */	
 	protected  String flg2;

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
    
    public String getQchl() {
        return this.qchl;
    }
    
    public void setQchl(String qchl) {
    		if((qchl != null && this.qchl == null) || 
				this.qchl != null && (!this.qchl.equals(qchl) || qchl == null)){
        		this.setDirty(true);
        		this.oldValues.put("qchl", this.qchl);
        	}
        this.qchl = qchl;
    }
    
    public String getQmhl() {
        return this.qmhl;
    }
    
    public void setQmhl(String qmhl) {
    		if((qmhl != null && this.qmhl == null) || 
				this.qmhl != null && (!this.qmhl.equals(qmhl) || qmhl == null)){
        		this.setDirty(true);
        		this.oldValues.put("qmhl", this.qmhl);
        	}
        this.qmhl = qmhl;
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
    
    public String getFlg() {
        return this.flg;
    }
    
    public void setFlg(String flg) {
    		if((flg != null && this.flg == null) || 
				this.flg != null && (!this.flg.equals(flg) || flg == null)){
        		this.setDirty(true);
        		this.oldValues.put("flg", this.flg);
        	}
        this.flg = flg;
    }
    
    public String getFlg2() {
        return this.flg2;
    }
    
    public void setFlg2(String flg2) {
    		if((flg2 != null && this.flg2 == null) || 
				this.flg2 != null && (!this.flg2.equals(flg2) || flg2 == null)){
        		this.setDirty(true);
        		this.oldValues.put("flg2", this.flg2);
        	}
        this.flg2 = flg2;
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
		 if ( !(other instanceof Bzhl) ) return false;
		 Bzhl castOther = ( Bzhl ) other; 
		 
		 return  ( (this.getId()==castOther.getId()) || ( this.getId()!=null && castOther.getId()!=null && this.getId().equals(castOther.getId()) ) );
   }
   
   public int hashCode() {
        HashCodeBuilder hcb = new HashCodeBuilder(17, 37);
        hcb.append(getId());
		hcb.append("Bzhl".hashCode());
        return hcb.toHashCode();
    }

   public String toString() {
       ToStringBuilder sb = new ToStringBuilder(this, ToStringStyle.DEFAULT_STYLE);
       sb.append("id", this.id)
		.append("bzname", this.bzname)
		.append("qchl", this.qchl)
		.append("qmhl", this.qmhl)
		.append("kjqj", this.kjqj)
		.append("flg", this.flg)
		.append("flg2", this.flg2);
      
        return sb.toString();
   }

   public Serializable getPrimarykey(){
   		return id;
   }



}