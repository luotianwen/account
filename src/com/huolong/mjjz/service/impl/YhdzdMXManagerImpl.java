package com.huolong.mjjz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.YhdzdMX;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.mjjz.service.YhdzdMXManager;

public class YhdzdMXManagerImpl extends ManagerImpl implements YhdzdMXManager{
    
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
    
    public void saveYhdzdMX(YhdzdMX yhdzdMX){
    	saveObject(yhdzdMX);
    
    }

    public void removeYhdzdMXById(Integer id){
    	removeObjectById(id);
    	
    }

    public YhdzdMX getYhdzdMXById(Integer id){
   		return (YhdzdMX) getObjectById(id);
    }

    public List<YhdzdMX> getYhdzdMXList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityYhdzdMX(YhdzdMX yhdzdMX){
    	saveObject(yhdzdMX);
    
    }

    public void removeSecurityYhdzdMXById(Integer id){
    	removeObjectById(id);
    	
    }

    public YhdzdMX getSecurityYhdzdMXById(Integer id){
   		return (YhdzdMX) getObjectById(id);
    }

    public List<YhdzdMX> getSecurityYhdzdMXList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
