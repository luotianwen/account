package com.huolong.jcsz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.jcsz.action.CompanyPageInfo;
import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.service.CompanyManager;

public class CompanyAction extends BaseAction{
	private Company company;
	private CompanyPageInfo pageInfo;
	private List<Company> companys;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存企业信息
	 */
	public String saveCompany() throws Exception {
		CompanyManager companyMgr = (CompanyManager)SpringContextHolder.getBean(Company.class);
		if(super.perExecute(company)!= null) return returnCommand();
		companyMgr.saveCompany(company);
		super.postExecute(company);
		return returnCommand();
	}
	
	
	/**
	 * 删除企业信息
	 */
	public String removeCompany() throws Exception {
		CompanyManager companyMgr = (CompanyManager)SpringContextHolder.getBean(Company.class);
		companyMgr.removeCompanyById(company.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些企业信息
	 */
	public String removeAllCompany() throws Exception {
		CompanyManager companyMgr = (CompanyManager)SpringContextHolder.getBean(Company.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer companyid = new Integer( ids[i] );
				companyMgr.removeCompanyById(companyid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看企业信息
	 */
	public String viewCompany() throws Exception {
		CompanyManager companyMgr = (CompanyManager)SpringContextHolder.getBean(Company.class);
		company = companyMgr.getCompanyById(company.getId());
		return returnCommand();
	}
	
	/**
	 * 企业信息列表
	 */
	public String companyList() throws Exception {
		CompanyManager companyMgr = (CompanyManager)SpringContextHolder.getBean(Company.class);
		pageInfo = pageInfo == null ? new CompanyPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		companys = companyMgr.getSecurityCompanyList(sarchPageInfo);
		
		return returnCommand();	
	}
	

	/**
	 * 启用企业信息列表
	 */
	public String companyQy() throws Exception {
		CompanyManager companyMgr = (CompanyManager) SpringContextHolder
				.getBean(Company.class);
		company =HuolongContextHelper.getCompany();
		return returnCommand();
	}

	/**
	 * 设置企业信息列表
	 */
	public String companySz() throws Exception {
		CompanyManager companyMgr = (CompanyManager) SpringContextHolder
				.getBean(Company.class);
		company = HuolongContextHelper.getCompany();
		return returnCommand();
	}
	
	
	public Company getCompany() {
		return company;
	}

	public void setCompany(Company company) {
		this.company = company;
	}
	
	public List<Company> getCompanys() {
		return companys;
	}

	public void setCompanys(List<Company> companys) {
		this.companys = companys;
	}

	public CompanyPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CompanyPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
