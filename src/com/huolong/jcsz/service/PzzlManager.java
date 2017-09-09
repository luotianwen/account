package com.huolong.jcsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jcsz.model.Pzzl;
import org.hi.framework.service.Manager;

public interface PzzlManager extends Manager{
    
    public void savePzzl(Pzzl pzzl);

    public void removePzzlById(Integer id);

    public Pzzl getPzzlById(Integer id);

    public List<Pzzl> getPzzlList(PageInfo pageInfo);
    
    public void saveSecurityPzzl(Pzzl pzzl);

    public void removeSecurityPzzlById(Integer id);

    public Pzzl getSecurityPzzlById(Integer id);

    public List<Pzzl> getSecurityPzzlList(PageInfo pageInfo);    
}
