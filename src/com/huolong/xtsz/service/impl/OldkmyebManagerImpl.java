package com.huolong.xtsz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.xtsz.model.Oldkmyeb;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.xtsz.service.OldkmyebManager;

public class OldkmyebManagerImpl extends ManagerImpl implements OldkmyebManager{
    
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
    
    public void saveOldkmyeb(Oldkmyeb oldkmyeb){
    	saveObject(oldkmyeb);
    
    }

    public void removeOldkmyebById(Integer id){
    	removeObjectById(id);
    	
    }

    public Oldkmyeb getOldkmyebById(Integer id){
   		return (Oldkmyeb) getObjectById(id);
    }

    public List<Oldkmyeb> getOldkmyebList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityOldkmyeb(Oldkmyeb oldkmyeb){
    	saveObject(oldkmyeb);
    
    }

    public void removeSecurityOldkmyebById(Integer id){
    	removeObjectById(id);
    	
    }

    public Oldkmyeb getSecurityOldkmyebById(Integer id){
   		return (Oldkmyeb) getObjectById(id);
    }

    public List<Oldkmyeb> getSecurityOldkmyebList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
