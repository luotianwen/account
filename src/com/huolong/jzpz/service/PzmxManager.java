package com.huolong.jzpz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Pzmx;
import org.hi.framework.service.Manager;

public interface PzmxManager extends Manager{
    
    public void savePzmx(Pzmx pzmx);

    public void removePzmxById(Integer id);

    public Pzmx getPzmxById(Integer id);

    public List<Pzmx> getPzmxList(PageInfo pageInfo);
    
    public void saveSecurityPzmx(Pzmx pzmx);

    public void removeSecurityPzmxById(Integer id);

    public Pzmx getSecurityPzmxById(Integer id);

    public List<Pzmx> getSecurityPzmxList(PageInfo pageInfo);    
}
