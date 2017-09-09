package com.huolong.jzpz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Pzzh;
import org.hi.framework.service.Manager;

public interface PzzhManager extends Manager{
    
    public void savePzzh(Pzzh pzzh);

    public void removePzzhById(Integer id);

    public Pzzh getPzzhById(Integer id);

    public List<Pzzh> getPzzhList(PageInfo pageInfo);
    
    public void saveSecurityPzzh(Pzzh pzzh);

    public void removeSecurityPzzhById(Integer id);

    public Pzzh getSecurityPzzhById(Integer id);

    public List<Pzzh> getSecurityPzzhList(PageInfo pageInfo); 


}
