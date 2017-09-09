package com.huolong.xtsz.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;

import com.huolong.cache.Cache;
import com.huolong.cache.HuolongContextHelper;
import com.huolong.jzpz.action.PzmxPageInfo;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.jzpz.service.PzmxManager;
import com.huolong.kmyeb.action.KmyebPageInfo;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.kmyeb.service.KmyebManager;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.xtsz.model.Kjkm;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.xtsz.service.KjkmManager;

public class KjkmManagerImpl extends ManagerImpl implements KjkmManager{
    
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
    /*
	 * 检测凭证和科目余额表里的是否包含父类科目用当前的会计科目替换父类科目
	 * 
	 * @see
	 * com.huolong.xtsz.service.KjkmManager#saveKjkm(com.huolong.xtsz.model.
	 * Kjkm)
	 */
    public void saveKjkm(Kjkm kjkm){
    	 List<Kjkm>kjkmss=new ArrayList<Kjkm>();
    	 if(kjkm.getId()==null){
    		 kjkmss=(List<Kjkm>) Cache.get("kjkms"+HuolongContextHelper.getCompanyId());
    		 kjkmss.add(kjkm);
    	 }
    	 else{
	    	 for (Kjkm kjkm2 : (List<Kjkm>) Cache.get("kjkms"+HuolongContextHelper.getCompanyId())) {
				if(kjkm2.getId().equals(kjkm.getId())){
					kjkmss.add(kjkm);
				}
				else{
					kjkmss.add(kjkm2);
				}
				
			}
    	 }
    	 Collections.sort(kjkmss, new Comparator(){

			@Override
			public int compare(Object a, Object b) {
				 String one = ((Kjkm)a).getKmbh();
				 String two = ((Kjkm)b).getKmbh();
		         return one.compareTo(two) ;   
				
			}
    		 
    	 });
    	
    	 
    	 
    	
		if (kjkm.getFlkjkm() != null) {
			
			Filter filter =FilterFactory.getSimpleFilter("kjkm.id", kjkm.getFlkjkm().getId(), Filter.OPERATOR_EQ)
					;
			PzmxManager pzmxMgr = (PzmxManager) SpringContextHolder
					.getBean(Pzmx.class);
			List<Pzmx> pzmxs = pzmxMgr.getObjects(filter);

			KmyebManager kmyebMgr = (KmyebManager) SpringContextHolder
					.getBean(Kmyeb.class);
			
			filter =FilterFactory.getSimpleFilter("kmmclookup.id", kjkm.getFlkjkm().getId(), Filter.OPERATOR_EQ)
					;

			List<Kmyeb> kmyebs = kmyebMgr.getObjects(filter);

			for (Pzmx p : pzmxs) {
				p.setKjkm(kjkm);
				pzmxMgr.savePzmx(p);
			}
			for (Kmyeb k : kmyebs) {
				k.setKmmclookup(kjkm);
				kmyebMgr.saveKmyeb(k);
			}
		}
		kjkm.setOrgs(HuolongContextHelper.getCompany());
    	saveObject(kjkm);
        Cache.add("kjkms"+HuolongContextHelper.getCompanyId(),kjkmss);
    }

    public void removeKjkmById(Integer id){
    	 List<Kjkm>kjkmss=new ArrayList<Kjkm>();
    	  for (Kjkm kjkm : (List<Kjkm>) Cache.get("kjkms"+HuolongContextHelper.getCompanyId())) {
			if(!kjkm.getId().equals(id)){
				kjkmss.add(kjkm);
			}
		}
    	removeObjectById(id);
    	 Cache.add("kjkms"+HuolongContextHelper.getCompanyId(),kjkmss);
    }

    public Kjkm getKjkmById(Integer id){
   		return (Kjkm) getObjectById(id);
    }

    public List<Kjkm> getKjkmList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityKjkm(Kjkm kjkm){
    	saveObject(kjkm);
    
    }

    public void removeSecurityKjkmById(Integer id){
    	removeObjectById(id);
    	
    }

    public Kjkm getSecurityKjkmById(Integer id){
   		return (Kjkm) getObjectById(id);
    }

    public List<Kjkm> getSecurityKjkmList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
