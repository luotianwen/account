package com.huolong.jzpz.service.impl;

import java.util.Date;
import java.util.List;

import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.service.impl.ManagerImpl;

import com.huolong.jzpz.model.Pzzh;
import com.huolong.jzpz.service.PzzhManager;

public class PzzhManagerImpl extends ManagerImpl implements PzzhManager{
    
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
    
    public void savePzzh(Pzzh pzzh){
    	saveObject(pzzh);
    
    }

    public void removePzzhById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzzh getPzzhById(Integer id){
   		return (Pzzh) getObjectById(id);
    }

    public List<Pzzh> getPzzhList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityPzzh(Pzzh pzzh){
    	saveObject(pzzh);
    
    }

    public void removeSecurityPzzhById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzzh getSecurityPzzhById(Integer id){
   		return (Pzzh) getObjectById(id);
    }

    public List<Pzzh> getSecurityPzzhList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }   
}
