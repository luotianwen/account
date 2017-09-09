package com.huolong.mjjz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.mjjz.model.YhdzdMX;
import org.hi.framework.service.Manager;

public interface YhdzdMXManager extends Manager{
    
    public void saveYhdzdMX(YhdzdMX yhdzdMX);

    public void removeYhdzdMXById(Integer id);

    public YhdzdMX getYhdzdMXById(Integer id);

    public List<YhdzdMX> getYhdzdMXList(PageInfo pageInfo);
    
    public void saveSecurityYhdzdMX(YhdzdMX yhdzdMX);

    public void removeSecurityYhdzdMXById(Integer id);

    public YhdzdMX getSecurityYhdzdMXById(Integer id);

    public List<YhdzdMX> getSecurityYhdzdMXList(PageInfo pageInfo);    
}
