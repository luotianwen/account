package com.huolong.xtsz.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import org.hi.common.attachment.action.AttachmentPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class OldkmyebPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;

 	protected  AttachmentPageInfo att_attachment;
 	protected  HiOrgPageInfo orgs;
 	protected  HiUserPageInfo creator;

    public Integer getF_id() {
        return this.f_id;
    }
    
    public void setF_id(Integer f_id) {
        this.f_id = f_id;
    }
    
    public String getF_id_op() {
        return this.f_id_op;
    }
    
    public void setF_id_op(String f_id_op) {
        this.f_id_op = f_id_op;
    }
   
	public AttachmentPageInfo getAtt_attachment() {
		return att_attachment;
	}

	public void setAtt_attachment(AttachmentPageInfo att_attachment) {
		this.att_attachment = att_attachment;
	}
	public HiOrgPageInfo getOrgs() {
		return orgs;
	}

	public void setOrgs(HiOrgPageInfo orgs) {
		this.orgs = orgs;
	}
	public HiUserPageInfo getCreator() {
		return creator;
	}

	public void setCreator(HiUserPageInfo creator) {
		this.creator = creator;
	}

}
