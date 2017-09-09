package com.huolong.jzpz.service.impl;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Zhaiyao;
import org.hi.framework.service.impl.ManagerImpl;
import com.huolong.jzpz.service.ZhaiyaoManager;

public class ZhaiyaoManagerImpl extends ManagerImpl implements ZhaiyaoManager{
    
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
    
    public void saveZhaiyao(Zhaiyao zhaiyao){
    	saveObject(zhaiyao);
    
    }

    public void removeZhaiyaoById(Integer id){
    	removeObjectById(id);
    	
    }

    public Zhaiyao getZhaiyaoById(Integer id){
   		return (Zhaiyao) getObjectById(id);
    }

    public List<Zhaiyao> getZhaiyaoList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityZhaiyao(Zhaiyao zhaiyao){
    	saveObject(zhaiyao);
    
    }

    public void removeSecurityZhaiyaoById(Integer id){
    	removeObjectById(id);
    	
    }

    public Zhaiyao getSecurityZhaiyaoById(Integer id){
   		return (Zhaiyao) getObjectById(id);
    }

    public List<Zhaiyao> getSecurityZhaiyaoList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
}
