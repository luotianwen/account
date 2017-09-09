package com.huolong.kmyeb.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;

import com.huolong.jcsz.model.Company;
import com.huolong.kmyeb.model.Kmyeb;
import org.hi.framework.service.Manager;

public interface KmyebManager extends Manager{
    
    public void saveKmyeb(Kmyeb kmyeb);

    public void removeKmyebById(Integer id);

    public Kmyeb getKmyebById(Integer id);

    public List<Kmyeb> getKmyebList(PageInfo pageInfo);
    
    public void saveSecurityKmyeb(Kmyeb kmyeb);

    public void removeSecurityKmyebById(Integer id);

    public Kmyeb getSecurityKmyebById(Integer id);

    public List<Kmyeb> getSecurityKmyebList(PageInfo pageInfo);

	public void saveKmyeb2(Kmyeb kmyeb);    
	public boolean sfjscsh(Company c);
	//科目期间余额
	public List<Kmyeb> getKmyebBykmid(String kmid, String kjqj,
			Integer gsid) throws Exception;
      //期间科目余额
	public List<Kmyeb> getKmyebListBYkjqj(String dqj, Integer id) throws Exception ;
	//科目期间余额
	public List getKmyebBykmbh(String getKmyebBykmid, String kjqj, Integer id)throws Exception;

}
