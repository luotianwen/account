package com.huolong.mjjz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.Yhdzd;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.mjjz.service.YhdzdManager;

public class YhdzdManagerImpl extends ManagerImpl implements YhdzdManager{
    
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
    
    public void saveYhdzd(Yhdzd yhdzd){
    	saveObject(yhdzd);
    
    }

    public void removeYhdzdById(Integer id){
    	removeObjectById(id);
    	
    }

    public Yhdzd getYhdzdById(Integer id){
   		return (Yhdzd) getObjectById(id);
    }

    public List<Yhdzd> getYhdzdList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityYhdzd(Yhdzd yhdzd){
    	saveObject(yhdzd);
    
    }

    public void removeSecurityYhdzdById(Integer id){
    	removeObjectById(id);
    	
    }

    public Yhdzd getSecurityYhdzdById(Integer id){
   		return (Yhdzd) getObjectById(id);
    }

    public List<Yhdzd> getSecurityYhdzdList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
