package com.huolong.jcsz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Bzsz;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.jcsz.service.BzszManager;

public class BzszManagerImpl extends ManagerImpl implements BzszManager{
    
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
    
    public void saveBzsz(Bzsz bzsz){
    	saveObject(bzsz);
    
    }

    public void removeBzszById(Integer id){
    	removeObjectById(id);
    	
    }

    public Bzsz getBzszById(Integer id){
   		return (Bzsz) getObjectById(id);
    }

    public List<Bzsz> getBzszList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityBzsz(Bzsz bzsz){
    	saveObject(bzsz);
    
    }

    public void removeSecurityBzszById(Integer id){
    	removeObjectById(id);
    	
    }

    public Bzsz getSecurityBzszById(Integer id){
   		return (Bzsz) getObjectById(id);
    }

    public List<Bzsz> getSecurityBzszList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
