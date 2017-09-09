package com.huolong.kmyeb.action;

import java.sql.Timestamp;
import java.util.Date;

import org.hi.framework.web.PageInfoView;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.jcsz.action.CompanyPageInfo;
import org.hi.base.organization.action.HiOrgPageInfo;
import org.hi.base.organization.action.HiUserPageInfo;

public class KmyebPageInfo extends PageInfoView{

	protected  Integer  f_id;
 	protected  String  f_id_op;
	protected  String  f_bnljjf;
 	protected  String  f_bnljjf_op;
	protected  String  f_bnljdf;
 	protected  String  f_bnljdf_op;
	protected  String  f_bnljjfbwb;
 	protected  String  f_bnljjfbwb_op;
	protected  String  f_bnljdfbwb;
 	protected  String  f_bnljdfbwb_op;
	protected  String  f_jffse;
 	protected  String  f_jffse_op;
	protected  String  f_dffse;
 	protected  String  f_dffse_op;
	protected  String  f_qcyefx;
 	protected  String  f_qcyefx_op;
	protected  String  f_qmyefx;
 	protected  String  f_qmyefx_op;
	protected  String  f_qmye;
 	protected  String  f_qmye_op;
	protected  String  f_ncsl;
 	protected  String  f_ncsl_op;
	protected  String  f_ncye;
 	protected  String  f_ncye_op;
	protected  String  f_ncyebwb;
 	protected  String  f_ncyebwb_op;
	protected  String  f_sljffsesl;
 	protected  String  f_sljffsesl_op;
	protected  String  f_sldffsesl;
 	protected  String  f_sldffsesl_op;
	protected  String  f_slbnljjfsl;
 	protected  String  f_slbnljjfsl_op;
	protected  String  f_slbnljdfsl;
 	protected  String  f_slbnljdfsl_op;
	protected  String  f_slqcyesl;
 	protected  String  f_slqcyesl_op;
	protected  String  f_slqcyedj;
 	protected  String  f_slqcyedj_op;
	protected  String  f_slqmyesl;
 	protected  String  f_slqmyesl_op;
	protected  String  f_slqmyedj;
 	protected  String  f_slqmyedj_op;
	protected  String  f_fzhs;
 	protected  String  f_fzhs_op;
	protected  String  f_kjqj;
 	protected  String  f_kjqj_op;
	protected  String  f_jldw;
 	protected  String  f_jldw_op;
	protected  String  f_qcye;
 	protected  String  f_qcye_op;
	protected  String  f_cshbwb;
 	protected  String  f_cshbwb_op;
	protected  String  f_wbqmye;
 	protected  String  f_wbqmye_op;
	protected  String  f_qcbnjf;
 	protected  String  f_qcbnjf_op;
	protected  String  f_qcbndf;
 	protected  String  f_qcbndf_op;
	protected  String  f_qcbnjfbwb;
 	protected  String  f_qcbnjfbwb_op;
	protected  String  f_qcbndfbwb;
 	protected  String  f_qcbndfbwb_op;
	protected  String  f_jzqyeljs;
 	protected  String  f_jzqyeljs_op;
	protected  String  f_jzqyebqs;
 	protected  String  f_jzqyebqs_op;
	protected  String  f_bzname;
 	protected  String  f_bzname_op;
	protected  String  f_fzhsnr;
 	protected  String  f_fzhsnr_op;

 	protected  KjkmPageInfo kmmclookup;
 	protected  CompanyPageInfo gsid;
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
   
    public String getF_bnljjf() {
        return this.f_bnljjf;
    }
    
    public void setF_bnljjf(String f_bnljjf) {
        this.f_bnljjf = f_bnljjf;
    }
    
    public String getF_bnljjf_op() {
        return this.f_bnljjf_op;
    }
    
    public void setF_bnljjf_op(String f_bnljjf_op) {
        this.f_bnljjf_op = f_bnljjf_op;
    }
   
    public String getF_bnljdf() {
        return this.f_bnljdf;
    }
    
    public void setF_bnljdf(String f_bnljdf) {
        this.f_bnljdf = f_bnljdf;
    }
    
    public String getF_bnljdf_op() {
        return this.f_bnljdf_op;
    }
    
    public void setF_bnljdf_op(String f_bnljdf_op) {
        this.f_bnljdf_op = f_bnljdf_op;
    }
   
    public String getF_bnljjfbwb() {
        return this.f_bnljjfbwb;
    }
    
    public void setF_bnljjfbwb(String f_bnljjfbwb) {
        this.f_bnljjfbwb = f_bnljjfbwb;
    }
    
    public String getF_bnljjfbwb_op() {
        return this.f_bnljjfbwb_op;
    }
    
    public void setF_bnljjfbwb_op(String f_bnljjfbwb_op) {
        this.f_bnljjfbwb_op = f_bnljjfbwb_op;
    }
   
    public String getF_bnljdfbwb() {
        return this.f_bnljdfbwb;
    }
    
    public void setF_bnljdfbwb(String f_bnljdfbwb) {
        this.f_bnljdfbwb = f_bnljdfbwb;
    }
    
    public String getF_bnljdfbwb_op() {
        return this.f_bnljdfbwb_op;
    }
    
    public void setF_bnljdfbwb_op(String f_bnljdfbwb_op) {
        this.f_bnljdfbwb_op = f_bnljdfbwb_op;
    }
   
    public String getF_jffse() {
        return this.f_jffse;
    }
    
    public void setF_jffse(String f_jffse) {
        this.f_jffse = f_jffse;
    }
    
    public String getF_jffse_op() {
        return this.f_jffse_op;
    }
    
    public void setF_jffse_op(String f_jffse_op) {
        this.f_jffse_op = f_jffse_op;
    }
   
    public String getF_dffse() {
        return this.f_dffse;
    }
    
    public void setF_dffse(String f_dffse) {
        this.f_dffse = f_dffse;
    }
    
    public String getF_dffse_op() {
        return this.f_dffse_op;
    }
    
    public void setF_dffse_op(String f_dffse_op) {
        this.f_dffse_op = f_dffse_op;
    }
   
    public String getF_qcyefx() {
        return this.f_qcyefx;
    }
    
    public void setF_qcyefx(String f_qcyefx) {
        this.f_qcyefx = f_qcyefx;
    }
    
    public String getF_qcyefx_op() {
        return this.f_qcyefx_op;
    }
    
    public void setF_qcyefx_op(String f_qcyefx_op) {
        this.f_qcyefx_op = f_qcyefx_op;
    }
   
    public String getF_qmyefx() {
        return this.f_qmyefx;
    }
    
    public void setF_qmyefx(String f_qmyefx) {
        this.f_qmyefx = f_qmyefx;
    }
    
    public String getF_qmyefx_op() {
        return this.f_qmyefx_op;
    }
    
    public void setF_qmyefx_op(String f_qmyefx_op) {
        this.f_qmyefx_op = f_qmyefx_op;
    }
   
    public String getF_qmye() {
        return this.f_qmye;
    }
    
    public void setF_qmye(String f_qmye) {
        this.f_qmye = f_qmye;
    }
    
    public String getF_qmye_op() {
        return this.f_qmye_op;
    }
    
    public void setF_qmye_op(String f_qmye_op) {
        this.f_qmye_op = f_qmye_op;
    }
   
    public String getF_ncsl() {
        return this.f_ncsl;
    }
    
    public void setF_ncsl(String f_ncsl) {
        this.f_ncsl = f_ncsl;
    }
    
    public String getF_ncsl_op() {
        return this.f_ncsl_op;
    }
    
    public void setF_ncsl_op(String f_ncsl_op) {
        this.f_ncsl_op = f_ncsl_op;
    }
   
    public String getF_ncye() {
        return this.f_ncye;
    }
    
    public void setF_ncye(String f_ncye) {
        this.f_ncye = f_ncye;
    }
    
    public String getF_ncye_op() {
        return this.f_ncye_op;
    }
    
    public void setF_ncye_op(String f_ncye_op) {
        this.f_ncye_op = f_ncye_op;
    }
   
    public String getF_ncyebwb() {
        return this.f_ncyebwb;
    }
    
    public void setF_ncyebwb(String f_ncyebwb) {
        this.f_ncyebwb = f_ncyebwb;
    }
    
    public String getF_ncyebwb_op() {
        return this.f_ncyebwb_op;
    }
    
    public void setF_ncyebwb_op(String f_ncyebwb_op) {
        this.f_ncyebwb_op = f_ncyebwb_op;
    }
   
    public String getF_sljffsesl() {
        return this.f_sljffsesl;
    }
    
    public void setF_sljffsesl(String f_sljffsesl) {
        this.f_sljffsesl = f_sljffsesl;
    }
    
    public String getF_sljffsesl_op() {
        return this.f_sljffsesl_op;
    }
    
    public void setF_sljffsesl_op(String f_sljffsesl_op) {
        this.f_sljffsesl_op = f_sljffsesl_op;
    }
   
    public String getF_sldffsesl() {
        return this.f_sldffsesl;
    }
    
    public void setF_sldffsesl(String f_sldffsesl) {
        this.f_sldffsesl = f_sldffsesl;
    }
    
    public String getF_sldffsesl_op() {
        return this.f_sldffsesl_op;
    }
    
    public void setF_sldffsesl_op(String f_sldffsesl_op) {
        this.f_sldffsesl_op = f_sldffsesl_op;
    }
   
    public String getF_slbnljjfsl() {
        return this.f_slbnljjfsl;
    }
    
    public void setF_slbnljjfsl(String f_slbnljjfsl) {
        this.f_slbnljjfsl = f_slbnljjfsl;
    }
    
    public String getF_slbnljjfsl_op() {
        return this.f_slbnljjfsl_op;
    }
    
    public void setF_slbnljjfsl_op(String f_slbnljjfsl_op) {
        this.f_slbnljjfsl_op = f_slbnljjfsl_op;
    }
   
    public String getF_slbnljdfsl() {
        return this.f_slbnljdfsl;
    }
    
    public void setF_slbnljdfsl(String f_slbnljdfsl) {
        this.f_slbnljdfsl = f_slbnljdfsl;
    }
    
    public String getF_slbnljdfsl_op() {
        return this.f_slbnljdfsl_op;
    }
    
    public void setF_slbnljdfsl_op(String f_slbnljdfsl_op) {
        this.f_slbnljdfsl_op = f_slbnljdfsl_op;
    }
   
    public String getF_slqcyesl() {
        return this.f_slqcyesl;
    }
    
    public void setF_slqcyesl(String f_slqcyesl) {
        this.f_slqcyesl = f_slqcyesl;
    }
    
    public String getF_slqcyesl_op() {
        return this.f_slqcyesl_op;
    }
    
    public void setF_slqcyesl_op(String f_slqcyesl_op) {
        this.f_slqcyesl_op = f_slqcyesl_op;
    }
   
    public String getF_slqcyedj() {
        return this.f_slqcyedj;
    }
    
    public void setF_slqcyedj(String f_slqcyedj) {
        this.f_slqcyedj = f_slqcyedj;
    }
    
    public String getF_slqcyedj_op() {
        return this.f_slqcyedj_op;
    }
    
    public void setF_slqcyedj_op(String f_slqcyedj_op) {
        this.f_slqcyedj_op = f_slqcyedj_op;
    }
   
    public String getF_slqmyesl() {
        return this.f_slqmyesl;
    }
    
    public void setF_slqmyesl(String f_slqmyesl) {
        this.f_slqmyesl = f_slqmyesl;
    }
    
    public String getF_slqmyesl_op() {
        return this.f_slqmyesl_op;
    }
    
    public void setF_slqmyesl_op(String f_slqmyesl_op) {
        this.f_slqmyesl_op = f_slqmyesl_op;
    }
   
    public String getF_slqmyedj() {
        return this.f_slqmyedj;
    }
    
    public void setF_slqmyedj(String f_slqmyedj) {
        this.f_slqmyedj = f_slqmyedj;
    }
    
    public String getF_slqmyedj_op() {
        return this.f_slqmyedj_op;
    }
    
    public void setF_slqmyedj_op(String f_slqmyedj_op) {
        this.f_slqmyedj_op = f_slqmyedj_op;
    }
   
    public String getF_fzhs() {
        return this.f_fzhs;
    }
    
    public void setF_fzhs(String f_fzhs) {
        this.f_fzhs = f_fzhs;
    }
    
    public String getF_fzhs_op() {
        return this.f_fzhs_op;
    }
    
    public void setF_fzhs_op(String f_fzhs_op) {
        this.f_fzhs_op = f_fzhs_op;
    }
   
    public String getF_kjqj() {
        return this.f_kjqj;
    }
    
    public void setF_kjqj(String f_kjqj) {
        this.f_kjqj = f_kjqj;
    }
    
    public String getF_kjqj_op() {
        return this.f_kjqj_op;
    }
    
    public void setF_kjqj_op(String f_kjqj_op) {
        this.f_kjqj_op = f_kjqj_op;
    }
   
    public String getF_jldw() {
        return this.f_jldw;
    }
    
    public void setF_jldw(String f_jldw) {
        this.f_jldw = f_jldw;
    }
    
    public String getF_jldw_op() {
        return this.f_jldw_op;
    }
    
    public void setF_jldw_op(String f_jldw_op) {
        this.f_jldw_op = f_jldw_op;
    }
   
    public String getF_qcye() {
        return this.f_qcye;
    }
    
    public void setF_qcye(String f_qcye) {
        this.f_qcye = f_qcye;
    }
    
    public String getF_qcye_op() {
        return this.f_qcye_op;
    }
    
    public void setF_qcye_op(String f_qcye_op) {
        this.f_qcye_op = f_qcye_op;
    }
   
    public String getF_cshbwb() {
        return this.f_cshbwb;
    }
    
    public void setF_cshbwb(String f_cshbwb) {
        this.f_cshbwb = f_cshbwb;
    }
    
    public String getF_cshbwb_op() {
        return this.f_cshbwb_op;
    }
    
    public void setF_cshbwb_op(String f_cshbwb_op) {
        this.f_cshbwb_op = f_cshbwb_op;
    }
   
    public String getF_wbqmye() {
        return this.f_wbqmye;
    }
    
    public void setF_wbqmye(String f_wbqmye) {
        this.f_wbqmye = f_wbqmye;
    }
    
    public String getF_wbqmye_op() {
        return this.f_wbqmye_op;
    }
    
    public void setF_wbqmye_op(String f_wbqmye_op) {
        this.f_wbqmye_op = f_wbqmye_op;
    }
   
    public String getF_qcbnjf() {
        return this.f_qcbnjf;
    }
    
    public void setF_qcbnjf(String f_qcbnjf) {
        this.f_qcbnjf = f_qcbnjf;
    }
    
    public String getF_qcbnjf_op() {
        return this.f_qcbnjf_op;
    }
    
    public void setF_qcbnjf_op(String f_qcbnjf_op) {
        this.f_qcbnjf_op = f_qcbnjf_op;
    }
   
    public String getF_qcbndf() {
        return this.f_qcbndf;
    }
    
    public void setF_qcbndf(String f_qcbndf) {
        this.f_qcbndf = f_qcbndf;
    }
    
    public String getF_qcbndf_op() {
        return this.f_qcbndf_op;
    }
    
    public void setF_qcbndf_op(String f_qcbndf_op) {
        this.f_qcbndf_op = f_qcbndf_op;
    }
   
    public String getF_qcbnjfbwb() {
        return this.f_qcbnjfbwb;
    }
    
    public void setF_qcbnjfbwb(String f_qcbnjfbwb) {
        this.f_qcbnjfbwb = f_qcbnjfbwb;
    }
    
    public String getF_qcbnjfbwb_op() {
        return this.f_qcbnjfbwb_op;
    }
    
    public void setF_qcbnjfbwb_op(String f_qcbnjfbwb_op) {
        this.f_qcbnjfbwb_op = f_qcbnjfbwb_op;
    }
   
    public String getF_qcbndfbwb() {
        return this.f_qcbndfbwb;
    }
    
    public void setF_qcbndfbwb(String f_qcbndfbwb) {
        this.f_qcbndfbwb = f_qcbndfbwb;
    }
    
    public String getF_qcbndfbwb_op() {
        return this.f_qcbndfbwb_op;
    }
    
    public void setF_qcbndfbwb_op(String f_qcbndfbwb_op) {
        this.f_qcbndfbwb_op = f_qcbndfbwb_op;
    }
   
    public String getF_jzqyeljs() {
        return this.f_jzqyeljs;
    }
    
    public void setF_jzqyeljs(String f_jzqyeljs) {
        this.f_jzqyeljs = f_jzqyeljs;
    }
    
    public String getF_jzqyeljs_op() {
        return this.f_jzqyeljs_op;
    }
    
    public void setF_jzqyeljs_op(String f_jzqyeljs_op) {
        this.f_jzqyeljs_op = f_jzqyeljs_op;
    }
   
    public String getF_jzqyebqs() {
        return this.f_jzqyebqs;
    }
    
    public void setF_jzqyebqs(String f_jzqyebqs) {
        this.f_jzqyebqs = f_jzqyebqs;
    }
    
    public String getF_jzqyebqs_op() {
        return this.f_jzqyebqs_op;
    }
    
    public void setF_jzqyebqs_op(String f_jzqyebqs_op) {
        this.f_jzqyebqs_op = f_jzqyebqs_op;
    }
   
    public String getF_bzname() {
        return this.f_bzname;
    }
    
    public void setF_bzname(String f_bzname) {
        this.f_bzname = f_bzname;
    }
    
    public String getF_bzname_op() {
        return this.f_bzname_op;
    }
    
    public void setF_bzname_op(String f_bzname_op) {
        this.f_bzname_op = f_bzname_op;
    }
   
    public String getF_fzhsnr() {
        return this.f_fzhsnr;
    }
    
    public void setF_fzhsnr(String f_fzhsnr) {
        this.f_fzhsnr = f_fzhsnr;
    }
    
    public String getF_fzhsnr_op() {
        return this.f_fzhsnr_op;
    }
    
    public void setF_fzhsnr_op(String f_fzhsnr_op) {
        this.f_fzhsnr_op = f_fzhsnr_op;
    }
   
	public KjkmPageInfo getKmmclookup() {
		return kmmclookup;
	}

	public void setKmmclookup(KjkmPageInfo kmmclookup) {
		this.kmmclookup = kmmclookup;
	}
	public CompanyPageInfo getGsid() {
		return gsid;
	}

	public void setGsid(CompanyPageInfo gsid) {
		this.gsid = gsid;
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
