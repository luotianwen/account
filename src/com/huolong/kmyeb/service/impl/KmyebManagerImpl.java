package com.huolong.kmyeb.service.impl;

import java.math.BigDecimal;
import java.util.List;

import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.service.impl.ManagerImpl;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.jcsz.model.Company;
import com.huolong.kmyeb.dao.KmyebDAO;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.kmyeb.service.KmyebManager;
import com.huolong.xtsz.model.Kmfx;

public class KmyebManagerImpl extends ManagerImpl implements KmyebManager{
    
    protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);

    }

    protected void postSaveObject(Object obj) {
        super.postSaveObject(obj);

    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);
        
    }

    protected void postRemoveObject(Object obj) {
        super.postRemoveObject(obj);
        
    }
    
    public void saveKmyeb(Kmyeb kmyeb){
    	kmyeb.setOrgs(HuolongContextHelper.getCompany());
    	saveObject(kmyeb);
    
    }

    public void removeKmyebById(Integer id){
    	removeObjectById(id);
    	
    }

    public Kmyeb getKmyebById(Integer id){
   		return (Kmyeb) getObjectById(id);
    }

    public List<Kmyeb> getKmyebList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityKmyeb(Kmyeb kmyeb){
    	saveObject(kmyeb);
    
    }

    public void removeSecurityKmyebById(Integer id){
    	removeObjectById(id);
    	
    }

    public Kmyeb getSecurityKmyebById(Integer id){
   		return (Kmyeb) getObjectById(id);
    }

    public List<Kmyeb> getSecurityKmyebList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

	
	public boolean sfjscsh(Company c) {
		StringBuffer hql = new StringBuffer();
		BigDecimal qcjf = new BigDecimal("000000.00");
		BigDecimal qcdf = new BigDecimal("000000.00");
		BigDecimal bnljjfbwb = new BigDecimal("000000.00");
		BigDecimal bnljdfbwb = new BigDecimal("000000.00");
		
		Filter filter=FilterFactory.getSimpleFilter("kjqj", c.getQysj(), Filter.OPERATOR_EQ)
				.addCondition("orgs.id", c.getId(),Filter.OPERATOR_EQ);
		List<Kmyeb> jflis = getObjects(filter);
		
		
		if (jflis != null && jflis.size() > 0)
			for (Kmyeb k : jflis) {
				if (Kmfx.KMFX_JF == k.getKmmclookup().getKmfx() )
					qcjf = qcjf.add(new BigDecimal(k.getQcye()));
				if (k.getKmmclookup().getKmfx() == 101401)
					qcdf = qcdf.add(new BigDecimal(k.getQcye()));
				bnljjfbwb = bnljjfbwb.add(new BigDecimal(k.getBnljjf()));
				bnljdfbwb = bnljdfbwb.add(new BigDecimal(k.getBnljdf()));
			}
		if (!c.getQysj().endsWith("01")) {
			BigDecimal bn = bnljdfbwb.subtract(bnljjfbwb);
			if (bn.doubleValue() > 0 || bn.doubleValue() < 0) {
				return false;
			}
		}
		BigDecimal qc = qcjf.subtract(qcdf);

		if (qc.doubleValue() > 0 || qc.doubleValue() < 0) {
			return false;
		} else {
			return true;
		}

	}

	 
	@Override
	public void saveKmyeb2(Kmyeb kmyeb) {
		Company company = HuolongContextHelper.getCompany();
		String kjqj = company.getQysj();
		
		Filter filter=FilterFactory.getSimpleFilter("kjqj", kjqj, Filter.OPERATOR_EQ)
				.addCondition("kmmclookup.id", kmyeb.getKmmclookup().getId(), Filter.OPERATOR_EQ) 
		     .addCondition("orgs.id", company.getId());
		
			List<Kmyeb> kmyebs =getObjects(filter);
		
		BigDecimal
		qcye= new BigDecimal("00000.00"), 
		bnljdf= new BigDecimal("00000.00"),
		bnljjf= new BigDecimal("00000.00"),
		qmye = new BigDecimal("00000.00");	
		if(!kjqj.endsWith("01")){
			qcye = new BigDecimal(kmyeb.getQcye());
			bnljdf = new BigDecimal(kmyeb.getBnljdf());
			bnljjf = new BigDecimal(kmyeb.getBnljjf());
			qmye = qcye;
		}
		else{
			qcye = new BigDecimal(kmyeb.getNcye());
			qmye = qcye;
			 
		}
		if (kmyebs != null && kmyebs.size() > 0) {
		 
			Kmyeb k1 = kmyebs.get(0);
			
			k1.setNcye(kmyeb.getNcye());
			k1.setQcye(qcye.toString());
			k1.setQmye(qmye.toString());
			k1.setBnljdf(bnljdf.toString());
			k1.setBnljjf(bnljjf.toString());
			
			k1.setJffse("0.0");
			k1.setDffse("0.0");
			saveObject(k1);
			
			
		} else {

				Kmyeb k1 = kmyeb;
				k1.setNcye(kmyeb.getNcye());
				k1.setQcye(qcye.toString());
				k1.setQmye(qmye.toString());
				k1.setBnljdf(bnljdf.toString());
				k1.setBnljjf(bnljjf.toString());
				k1.setJffse("0.0");
				k1.setDffse("0.0");
				k1.setKmmclookup(kmyeb.getKmmclookup());
				k1.setQcyefx(kmyeb.getKmmclookup().getKmfx() + "");
				k1.setQmyefx(kmyeb.getKmmclookup().getKmfx() + "");
				k1.setKjqj(kjqj);
				saveKmyeb(k1);
			 
		}
	}

	@Override
	public List<Kmyeb> getKmyebBykmid(String kmbh, String kjqj,
			Integer gsid) throws Exception {
		// TODO Auto-generated method stub
		return ((KmyebDAO) dao).getKmyebBykmid(kmbh, kjqj, gsid);
	}

	 
	@Override
	public List<Kmyeb> getKmyebListBYkjqj(String dqj, Integer id) throws Exception  {
		// TODO Auto-generated method stub
		return ((KmyebDAO) dao).getKmyebListBYkjqj(dqj, id);
	}  
	public List getKmyebBykmbh(String kmid, String kjqj, Integer gsid)throws Exception{
		return ((KmyebDAO) dao).getKmyebBykmbh(kmid, kjqj, gsid);
	}
}
