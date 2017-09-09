package com.huolong.jzpz.service;

import java.util.Date;
import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.jzpz.model.Jzpz;
import org.hi.framework.service.Manager;

public interface JzpzManager extends Manager{
    
    public void saveJzpz(Jzpz jzpz);

    public void removeJzpzById(Integer id);

    public Jzpz getJzpzById(Integer id);

    public List<Jzpz> getJzpzList(PageInfo pageInfo);
    
    public void saveSecurityJzpz(Jzpz jzpz);

    public void removeSecurityJzpzById(Integer id);

    public Jzpz getSecurityJzpzById(Integer id);

    public List<Jzpz> getSecurityJzpzList(PageInfo pageInfo);

	public void updateJzpz(Jzpz j);

	public String jzpzGetjzpzh(String pzbh, Date pzrq)  ;    
}
