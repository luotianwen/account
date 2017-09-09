package com.huolong.jcsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Yhsz;
import org.hi.framework.service.Manager;

public interface YhszManager extends Manager{
    
    public void saveYhsz(Yhsz yhsz);

    public void removeYhszById(Integer id);

    public Yhsz getYhszById(Integer id);

    public List<Yhsz> getYhszList(PageInfo pageInfo);
    
    public void saveSecurityYhsz(Yhsz yhsz);

    public void removeSecurityYhszById(Integer id);

    public Yhsz getSecurityYhszById(Integer id);

    public List<Yhsz> getSecurityYhszList(PageInfo pageInfo);    
}
