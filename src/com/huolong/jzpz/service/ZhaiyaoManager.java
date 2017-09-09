package com.huolong.jzpz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Zhaiyao;
import org.hi.framework.service.Manager;

public interface ZhaiyaoManager extends Manager{
    
    public void saveZhaiyao(Zhaiyao zhaiyao);

    public void removeZhaiyaoById(Integer id);

    public Zhaiyao getZhaiyaoById(Integer id);

    public List<Zhaiyao> getZhaiyaoList(PageInfo pageInfo);
    
    public void saveSecurityZhaiyao(Zhaiyao zhaiyao);

    public void removeSecurityZhaiyaoById(Integer id);

    public Zhaiyao getSecurityZhaiyaoById(Integer id);

    public List<Zhaiyao> getSecurityZhaiyaoList(PageInfo pageInfo);    
}
