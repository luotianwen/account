package com.huolong.mjjz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.Yhdzd;
import org.hi.framework.service.Manager;

public interface YhdzdManager extends Manager{
    
    public void saveYhdzd(Yhdzd yhdzd);

    public void removeYhdzdById(Integer id);

    public Yhdzd getYhdzdById(Integer id);

    public List<Yhdzd> getYhdzdList(PageInfo pageInfo);
    
    public void saveSecurityYhdzd(Yhdzd yhdzd);

    public void removeSecurityYhdzdById(Integer id);

    public Yhdzd getSecurityYhdzdById(Integer id);

    public List<Yhdzd> getSecurityYhdzdList(PageInfo pageInfo);    
}
