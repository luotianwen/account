package com.huolong.jcsz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Yhsz;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.jcsz.service.YhszManager;

public class YhszManagerImpl extends ManagerImpl implements YhszManager{
    
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
    
    public void saveYhsz(Yhsz yhsz){
    	saveObject(yhsz);
    
    }

    public void removeYhszById(Integer id){
    	removeObjectById(id);
    	
    }

    public Yhsz getYhszById(Integer id){
   		return (Yhsz) getObjectById(id);
    }

    public List<Yhsz> getYhszList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityYhsz(Yhsz yhsz){
    	saveObject(yhsz);
    
    }

    public void removeSecurityYhszById(Integer id){
    	removeObjectById(id);
    	
    }

    public Yhsz getSecurityYhszById(Integer id){
   		return (Yhsz) getObjectById(id);
    }

    public List<Yhsz> getSecurityYhszList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
