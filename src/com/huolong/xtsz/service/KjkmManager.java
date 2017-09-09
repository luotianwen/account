package com.huolong.xtsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.xtsz.model.Kjkm;
import org.hi.framework.service.Manager;

public interface KjkmManager extends Manager{
    
    public void saveKjkm(Kjkm kjkm);

    public void removeKjkmById(Integer id);

    public Kjkm getKjkmById(Integer id);

    public List<Kjkm> getKjkmList(PageInfo pageInfo);
    
    public void saveSecurityKjkm(Kjkm kjkm);

    public void removeSecurityKjkmById(Integer id);

    public Kjkm getSecurityKjkmById(Integer id);

    public List<Kjkm> getSecurityKjkmList(PageInfo pageInfo);    
}
