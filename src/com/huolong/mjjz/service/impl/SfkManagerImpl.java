package com.huolong.mjjz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.Sfk;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.mjjz.service.SfkManager;

public class SfkManagerImpl extends ManagerImpl implements SfkManager{
    
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
    
    public void saveSfk(Sfk sfk){
    	saveObject(sfk);
    
    }

    public void removeSfkById(Integer id){
    	removeObjectById(id);
    	
    }

    public Sfk getSfkById(Integer id){
   		return (Sfk) getObjectById(id);
    }

    public List<Sfk> getSfkList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecuritySfk(Sfk sfk){
    	saveObject(sfk);
    
    }

    public void removeSecuritySfkById(Integer id){
    	removeObjectById(id);
    	
    }

    public Sfk getSecuritySfkById(Integer id){
   		return (Sfk) getObjectById(id);
    }

    public List<Sfk> getSecuritySfkList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
