package com.huolong.fzhs.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.fzhs.model.Fzhs;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.fzhs.service.FzhsManager;

public class FzhsManagerImpl extends ManagerImpl implements FzhsManager{
    
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
    
    public void saveFzhs(Fzhs fzhs){
    	saveObject(fzhs);
    
    }

    public void removeFzhsById(Integer id){
    	removeObjectById(id);
    	
    }

    public Fzhs getFzhsById(Integer id){
   		return (Fzhs) getObjectById(id);
    }

    public List<Fzhs> getFzhsList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityFzhs(Fzhs fzhs){
    	saveObject(fzhs);
    
    }

    public void removeSecurityFzhsById(Integer id){
    	removeObjectById(id);
    	
    }

    public Fzhs getSecurityFzhsById(Integer id){
   		return (Fzhs) getObjectById(id);
    }

    public List<Fzhs> getSecurityFzhsList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
