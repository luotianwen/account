package com.huolong.jcsz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Pzzl;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.jcsz.service.PzzlManager;

public class PzzlManagerImpl extends ManagerImpl implements PzzlManager{
    
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
    
    public void savePzzl(Pzzl pzzl){
    	saveObject(pzzl);
    
    }

    public void removePzzlById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzzl getPzzlById(Integer id){
   		return (Pzzl) getObjectById(id);
    }

    public List<Pzzl> getPzzlList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityPzzl(Pzzl pzzl){
    	saveObject(pzzl);
    
    }

    public void removeSecurityPzzlById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzzl getSecurityPzzlById(Integer id){
   		return (Pzzl) getObjectById(id);
    }

    public List<Pzzl> getSecurityPzzlList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
