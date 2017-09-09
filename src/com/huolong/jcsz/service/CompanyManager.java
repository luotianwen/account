package com.huolong.jcsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Company;
import org.hi.base.organization.service.HiOrgManager;

public interface CompanyManager extends HiOrgManager{
    
    public void saveCompany(Company company);

    public void removeCompanyById(Integer id);

    public Company getCompanyById(Integer id);

    public List<Company> getCompanyList(PageInfo pageInfo);
    
    public void saveSecurityCompany(Company company);

    public void removeSecurityCompanyById(Integer id);

    public Company getSecurityCompanyById(Integer id);

    public List<Company> getSecurityCompanyList(PageInfo pageInfo);

	public String removextjz()throws Exception;

	public String removextfjz()throws Exception;

	public String removextyebsj()throws Exception;    
}
