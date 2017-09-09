package com.huolong.kmyeb.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.service.CompanyManager;
import com.huolong.kmyeb.action.KmyebPageInfo;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.kmyeb.service.KmyebManager;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.xtsz.model.Kjkm;
import com.huolong.xtsz.service.KjkmManager;

public class KmyebAction extends BaseAction{
	private Kmyeb kmyeb;
	private KmyebPageInfo pageInfo;
	private List<Kmyeb> kmyebs;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存科目余额表
	 */
	public String saveKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		if(super.perExecute(kmyeb)!= null) return returnCommand();
		kmyebMgr.saveKmyeb(kmyeb);
		super.postExecute(kmyeb);
		return returnCommand();
	}
	
	
	/**
	 * 删除科目余额表
	 */
	public String removeKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		kmyebMgr.removeKmyebById(kmyeb.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些科目余额表
	 */
	public String removeAllKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer kmyebid = new Integer( ids[i] );
				kmyebMgr.removeKmyebById(kmyebid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看科目余额表
	 */
	public String viewKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		kmyeb = kmyebMgr.getKmyebById(kmyeb.getId());
		return returnCommand();
	}
	/**
	 * 新增/修改保存科目余额表
	 */
	public String saveKmyeb2() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		if (super.perExecute(kmyeb) != null)
			return returnCommand();

		kmyebMgr.saveKmyeb2(kmyeb);
		super.postExecute(kmyeb);
		return returnCommand();
	}

	/**
	 * 科目余额表列表
	 */
	public String kmyebList() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		pageInfo = pageInfo == null ? new KmyebPageInfo() : pageInfo;

		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		kmyebs = kmyebMgr.getSecurityKmyebList(sarchPageInfo);
		
		return returnCommand();	
	}
	

	/**
	 *查看科目设置
	 */
	public String cshkjkm() throws Exception {
		Company company = HuolongContextHelper.getCompany();
		if (!company.getQysj().equals(company.getDqqj())) {
			return returnCommand("不是启用期间不能初始化!");
		}
		
		if(!company.getQysj().split("-")[1].equals("01")){
			orderIndexs="true";
		}else{
			orderIndexs="false";
		}
		KmyebManager kmyebMgr = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		pageInfo = pageInfo == null ? new KmyebPageInfo() : pageInfo;
		Filter filter =FilterFactory.getSimpleFilter("kmmclookup.id", kmyeb.getKmmclookup().getId(), Filter.OPERATOR_EQ)
				.addCondition("kjqj", company.getQysj(), Filter.OPERATOR_EQ)
				.addCondition("orgs.id", company.getId(), Filter.OPERATOR_EQ);
		kmyebs = kmyebMgr.getObjects(filter);
		if (kmyebs != null && kmyebs.size() > 0) {
			kmyeb = kmyebs.get(0);
			if (Double.parseDouble(kmyeb.getDffse())!=0
					|| Double.parseDouble(kmyeb.getJffse())!=0)
				return returnCommand("此科目已用不能初始化");
		} else {
			/*// 数量 币种 辅助核算3201否
			KjkmManager kjkmMgr = (KjkmManager) SpringContextHolder
					.getBean(Kjkm.class);
			Kjkm kjkm = kjkmMgr.getKjkmById(kmyeb.getKmmclookup().getId());
			kmyeb.setKmmclookup(kjkm);
			*/
			
		}
		return returnCommand();
	}
	
	
	public Kmyeb getKmyeb() {
		return kmyeb;
	}

	public void setKmyeb(Kmyeb kmyeb) {
		this.kmyeb = kmyeb;
	}
	
	public List<Kmyeb> getKmyebs() {
		return kmyebs;
	}

	public void setKmyebs(List<Kmyeb> kmyebs) {
		this.kmyebs = kmyebs;
	}

	public KmyebPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(KmyebPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
