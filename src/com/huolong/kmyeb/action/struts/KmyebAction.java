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
	 * ����/�޸ı����Ŀ����
	 */
	public String saveKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		if(super.perExecute(kmyeb)!= null) return returnCommand();
		kmyebMgr.saveKmyeb(kmyeb);
		super.postExecute(kmyeb);
		return returnCommand();
	}
	
	
	/**
	 * ɾ����Ŀ����
	 */
	public String removeKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		kmyebMgr.removeKmyebById(kmyeb.getId());
		return returnCommand();
	}
	
	/**
	 * ɾ��ָ����ĳЩ��Ŀ����
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
	 *�鿴��Ŀ����
	 */
	public String viewKmyeb() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		kmyeb = kmyebMgr.getKmyebById(kmyeb.getId());
		return returnCommand();
	}
	/**
	 * ����/�޸ı����Ŀ����
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
	 * ��Ŀ�����б�
	 */
	public String kmyebList() throws Exception {
		KmyebManager kmyebMgr = (KmyebManager)SpringContextHolder.getBean(Kmyeb.class);
		pageInfo = pageInfo == null ? new KmyebPageInfo() : pageInfo;

		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		kmyebs = kmyebMgr.getSecurityKmyebList(sarchPageInfo);
		
		return returnCommand();	
	}
	

	/**
	 *�鿴��Ŀ����
	 */
	public String cshkjkm() throws Exception {
		Company company = HuolongContextHelper.getCompany();
		if (!company.getQysj().equals(company.getDqqj())) {
			return returnCommand("���������ڼ䲻�ܳ�ʼ��!");
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
				return returnCommand("�˿�Ŀ���ò��ܳ�ʼ��");
		} else {
			/*// ���� ���� ��������3201��
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
