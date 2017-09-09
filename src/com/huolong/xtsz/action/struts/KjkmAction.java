package com.huolong.xtsz.action.struts;

import java.util.ArrayList;
import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.dao.Filter;
import org.hi.framework.dao.Sorter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.dao.impl.SorterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.Cache;
import com.huolong.cache.HuolongContextHelper;
import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.service.CompanyManager;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.xtsz.model.Kjkm;
import com.huolong.xtsz.service.KjkmManager;

public class KjkmAction extends BaseAction{
	private Kjkm kjkm;
	private KjkmPageInfo pageInfo;
	private List<Kjkm> kjkms;
	private String orderIndexs;
	
	/**
	 * 新增/修改保存科目设置
	 */
	public String saveKjkm() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
				.getBean(Kjkm.class);
		if (super.perExecute(kjkm) != null)
			return returnCommand();
		String kmbh = kjkm.getKmbh();
		Kjkm kjkm2;
		String wz = "";
		if (kjkm.getId() == null || kjkm.getId() == -1) {
			if (kmbh.trim().length() == 4 || kmbh.length() % 2 != 0)
				return returnCommand("科目编号规则是4-2-2-2格式");
			String _kmbh = kmbh.trim().substring(0, kmbh.length() - 2);
			Filter filter = FilterFactory.getSimpleFilter("kmbh", _kmbh,Filter.OPERATOR_EQ);
			List<Kjkm> k = kjkmMgr.getObjects(filter);
			if (k == null || k.size() < 1)
				return returnCommand("上级科目不存在");
			else {
				kjkm2 = k.get(0);
				kjkm2.setKmmx(3201);
				kjkm.setKmfx(kjkm2.getKmfx());
				wz = kjkm2.getKmwz() + "-";
				kjkm.setFlkjkm(kjkm2);
				kjkm.setKmlx(kjkm2.getKmlx());
			}
			kjkm.setKmmx(3200);
			kjkm.setKmjc((kmbh.length() - 4) / 2 + 1 + "");
			kjkm.setKmwz(wz + kjkm.getKmmc());
			if (kjkm.getId() == null) {
				kjkm.setCsh(1);
			}

		}
		kjkm.setKmwz(kjkm.getKmwz().substring(0,kjkm.getKmwz().lastIndexOf("-")) +"-"+ kjkm.getKmmc());
		//kjkm.setOrgs(HuolongContextHelper.getCompany());
		kjkmMgr.saveKjkm(kjkm);
		super.postExecute(kjkm);
		return returnCommand();
	}

	/**
	 * 删除科目设置
	 */
	public String removeKjkm() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
				.getBean(Kjkm.class);
		if (kjkm.getId() != null) {
			Kjkm k = kjkmMgr.getKjkmById(kjkm.getId());
			if (k.getCsh() == 0)
				return returnCommand("初始化科目不能删除");
			else
			    kjkmMgr.removeKjkmById(kjkm.getId());
		}
		return returnCommand();
	}

	/**
	 * 删除指定的某些科目设置
	 */
	public String removeAllKjkm() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
				.getBean(Kjkm.class);
		if (orderIndexs != null && orderIndexs.length() > 0) {
			String[] ids = orderIndexs.split(",");
			for (int i = 0; i < ids.length; i++) {
				if (ids[i].length() > 0) {
					Integer kjkmid = new Integer(ids[i]);
					if (kjkmid != null) {
						Kjkm k = kjkmMgr.getKjkmById(kjkmid);
						if (k.getCsh() == 0)
							return returnCommand("初始化科目不能删除");
						kjkmMgr.removeKjkmById(kjkmid);
					}
				}
			}
		}

		return returnCommand();
	}
	
	/**
	 *查看科目设置
	 */
	public String viewKjkm() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager)SpringContextHolder.getBean(Kjkm.class);
		kjkm = kjkmMgr.getKjkmById(kjkm.getId());
		return returnCommand();
	}
	
	/**
	 * 科目设置列表
	 */
	public String kjkmList() throws Exception {
		/*KjkmManager kjkmMgr = (KjkmManager)SpringContextHolder.getBean(Kjkm.class);
		pageInfo = pageInfo == null ? new KjkmPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		kjkms = kjkmMgr.getSecurityKjkmList(sarchPageInfo);*/
		
		return returnCommand();	
	}
	/**
	 * 科目设置列表
	 */
	public String kjkmList2() throws Exception {
		Company company = HuolongContextHelper.getCompany();
		    orderIndexs="true";
		if (!company.getQysj().equals(company.getDqqj())) {
			orderIndexs="false";
		}
		 
		KjkmManager kjkmMgr = (KjkmManager)SpringContextHolder.getBean(Kjkm.class);
	 
		
		 
	    List<Kjkm>kjkmss=(List<Kjkm>) Cache.get("kjkms"+company.getId());
		if(null==kjkmss||kjkmss.size()==0){
			Sorter sorter =SorterFactory.getSimpleSort("kmbh");
			Filter filter =FilterFactory.getSimpleFilter("orgs.id", company.getId(),Filter.OPERATOR_EQ);
			kjkmss=kjkmMgr.getObjects(filter, sorter);
			Cache.add("kjkms"+company.getId(), kjkmss);
		}
	
		kjkms=new ArrayList<Kjkm>();
		for (Kjkm kjkm : kjkmss) {
			if(kjkm.getKmlx().equals(pageInfo.getF_kmlx())){
				kjkms.add(kjkm);
			}
		}
		return returnCommand();	
	}
	

	/**
	 *查看科目设置
	 */
	public String viewKjkm2() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
				.getBean(Kjkm.class);
		if (kjkm.getKmlx() != null) {
			int kmlx = kjkm.getKmlx();
			kjkm = kjkmMgr.getKjkmById(kjkm.getId());
			kjkm.setKmlx(kmlx);
			kjkm.setSljehs(3201);
			kjkm.setWbhs(3201);
		} else {
			kjkm = kjkmMgr.getKjkmById(kjkm.getId());
		}

		return returnCommand();
	}
	/**
	 * 科目设置列表
	 */
	public String kjkmListLookup() throws Exception {
		  KjkmManager kjkmMgr =
		  (KjkmManager)SpringContextHolder.getBean(Kjkm.class);
		  pageInfo = pageInfo == null ? new KjkmPageInfo() : pageInfo;
		  PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
	 		
		  kjkms = kjkmMgr.getSecurityKjkmList(sarchPageInfo);
		 
		return returnCommand();
	}
	public String kjkmView(){
		CompanyManager company1 = (CompanyManager) SpringContextHolder
		.getBean(Company.class);
		/*Company company = company1.getCompanyById(UserContextHelper.getOrgId());
		if(condition==null){
		    condition = new Condition();
			condition.setCondition10("0");
		}
		if(company.getQysj().endsWith("01")){
			condition.setCondition1("ok");
		}else{
			condition.setCondition1("no");
		}*/
		return returnCommand();
	}
	/**
	 * 科目设置列表
	 */
	public String kjkmLookupList2() throws Exception {
		KjkmManager kjkmMgr = (KjkmManager)SpringContextHolder.getBean(Kjkm.class);
	    List<Kjkm>kjkmss=(List<Kjkm>) Cache.get("kjkms"+HuolongContextHelper.getCompanyId());
		if(null==kjkmss||kjkmss.size()==0){
			Sorter sorter =SorterFactory.getSimpleSort("kmbh");
			Filter filter =FilterFactory.getSimpleFilter("orgs.id",HuolongContextHelper.getCompanyId(),Filter.OPERATOR_EQ);
			kjkmss=kjkmMgr.getObjects(filter, sorter);
			Cache.add("kjkms"+HuolongContextHelper.getCompanyId(), kjkmss);
		}
	
		kjkms=new ArrayList<Kjkm>();
		for (Kjkm kjkm : kjkmss) {
			if(kjkm.getKmlx().equals(pageInfo.getF_kmlx())){
				kjkms.add(kjkm);
			}
		}
		return returnCommand();
	}
	
	
	public Kjkm getKjkm() {
		return kjkm;
	}

	public void setKjkm(Kjkm kjkm) {
		this.kjkm = kjkm;
	}
	
	public List<Kjkm> getKjkms() {
		return kjkms;
	}

	public void setKjkms(List<Kjkm> kjkms) {
		this.kjkms = kjkms;
	}

	public KjkmPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(KjkmPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
