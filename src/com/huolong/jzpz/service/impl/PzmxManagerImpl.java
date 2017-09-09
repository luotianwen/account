package com.huolong.jzpz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Pzmx;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.jzpz.service.PzmxManager;

public class PzmxManagerImpl extends ManagerImpl implements PzmxManager{
    
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
    
    public void savePzmx(Pzmx pzmx){
    	saveObject(pzmx);
    
    }

    public void removePzmxById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzmx getPzmxById(Integer id){
   		return (Pzmx) getObjectById(id);
    }

    public List<Pzmx> getPzmxList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityPzmx(Pzmx pzmx){
    	saveObject(pzmx);
    
    }

    public void removeSecurityPzmxById(Integer id){
    	removeObjectById(id);
    	
    }

    public Pzmx getSecurityPzmxById(Integer id){
   		return (Pzmx) getObjectById(id);
    }

    public List<Pzmx> getSecurityPzmxList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
