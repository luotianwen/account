package com.huolong.jcsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Bzsz;
import org.hi.framework.service.Manager;

public interface BzszManager extends Manager{
    
    public void saveBzsz(Bzsz bzsz);

    public void removeBzszById(Integer id);

    public Bzsz getBzszById(Integer id);

    public List<Bzsz> getBzszList(PageInfo pageInfo);
    
    public void saveSecurityBzsz(Bzsz bzsz);

    public void removeSecurityBzszById(Integer id);

    public Bzsz getSecurityBzszById(Integer id);

    public List<Bzsz> getSecurityBzszList(PageInfo pageInfo);    
}
