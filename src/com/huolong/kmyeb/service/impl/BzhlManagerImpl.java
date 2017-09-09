package com.huolong.kmyeb.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.kmyeb.model.Bzhl;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.kmyeb.service.BzhlManager;

public class BzhlManagerImpl extends ManagerImpl implements BzhlManager{
    
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
    
    public void saveBzhl(Bzhl bzhl){
    	saveObject(bzhl);
    
    }

    public void removeBzhlById(Integer id){
    	removeObjectById(id);
    	
    }

    public Bzhl getBzhlById(Integer id){
   		return (Bzhl) getObjectById(id);
    }

    public List<Bzhl> getBzhlList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityBzhl(Bzhl bzhl){
    	saveObject(bzhl);
    
    }

    public void removeSecurityBzhlById(Integer id){
    	removeObjectById(id);
    	
    }

    public Bzhl getSecurityBzhlById(Integer id){
   		return (Bzhl) getObjectById(id);
    }

    public List<Bzhl> getSecurityBzhlList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
