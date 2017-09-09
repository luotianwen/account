package com.huolong.fzhs.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.fzhs.model.Fzhs;
import org.hi.framework.service.Manager;

public interface FzhsManager extends Manager{
    
    public void saveFzhs(Fzhs fzhs);

    public void removeFzhsById(Integer id);

    public Fzhs getFzhsById(Integer id);

    public List<Fzhs> getFzhsList(PageInfo pageInfo);
    
    public void saveSecurityFzhs(Fzhs fzhs);

    public void removeSecurityFzhsById(Integer id);

    public Fzhs getSecurityFzhsById(Integer id);

    public List<Fzhs> getSecurityFzhsList(PageInfo pageInfo);    
}
