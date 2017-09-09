package com.huolong.kmyeb.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.kmyeb.model.Ckyetjb;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.kmyeb.service.CkyetjbManager;

public class CkyetjbManagerImpl extends ManagerImpl implements CkyetjbManager{
    
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
    
    public void saveCkyetjb(Ckyetjb ckyetjb){
    	saveObject(ckyetjb);
    
    }

    public void removeCkyetjbById(Integer id){
    	removeObjectById(id);
    	
    }

    public Ckyetjb getCkyetjbById(Integer id){
   		return (Ckyetjb) getObjectById(id);
    }

    public List<Ckyetjb> getCkyetjbList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityCkyetjb(Ckyetjb ckyetjb){
    	saveObject(ckyetjb);
    
    }

    public void removeSecurityCkyetjbById(Integer id){
    	removeObjectById(id);
    	
    }

    public Ckyetjb getSecurityCkyetjbById(Integer id){
   		return (Ckyetjb) getObjectById(id);
    }

    public List<Ckyetjb> getSecurityCkyetjbList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
