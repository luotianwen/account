package com.huolong.kmyeb.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.kmyeb.model.Bzhl;
import org.hi.framework.service.Manager;

public interface BzhlManager extends Manager{
    
    public void saveBzhl(Bzhl bzhl);

    public void removeBzhlById(Integer id);

    public Bzhl getBzhlById(Integer id);

    public List<Bzhl> getBzhlList(PageInfo pageInfo);
    
    public void saveSecurityBzhl(Bzhl bzhl);

    public void removeSecurityBzhlById(Integer id);

    public Bzhl getSecurityBzhlById(Integer id);

    public List<Bzhl> getSecurityBzhlList(PageInfo pageInfo);    
}
