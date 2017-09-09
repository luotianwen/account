package com.huolong.mjjz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.Sfk;
import org.hi.framework.service.Manager;

public interface SfkManager extends Manager{
    
    public void saveSfk(Sfk sfk);

    public void removeSfkById(Integer id);

    public Sfk getSfkById(Integer id);

    public List<Sfk> getSfkList(PageInfo pageInfo);
    
    public void saveSecuritySfk(Sfk sfk);

    public void removeSecuritySfkById(Integer id);

    public Sfk getSecuritySfkById(Integer id);

    public List<Sfk> getSecuritySfkList(PageInfo pageInfo);    
}
