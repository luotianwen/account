package com.huolong.kmyeb.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.kmyeb.model.Ckyetjb;
import org.hi.framework.service.Manager;

public interface CkyetjbManager extends Manager{
    
    public void saveCkyetjb(Ckyetjb ckyetjb);

    public void removeCkyetjbById(Integer id);

    public Ckyetjb getCkyetjbById(Integer id);

    public List<Ckyetjb> getCkyetjbList(PageInfo pageInfo);
    
    public void saveSecurityCkyetjb(Ckyetjb ckyetjb);

    public void removeSecurityCkyetjbById(Integer id);

    public Ckyetjb getSecurityCkyetjbById(Integer id);

    public List<Ckyetjb> getSecurityCkyetjbList(PageInfo pageInfo);    
}
