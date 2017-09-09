package com.huolong.xtsz.service;

import java.util.List;

import org.hi.framework.paging.PageInfo;
import com.huolong.xtsz.model.Oldkmyeb;
import org.hi.framework.service.Manager;

public interface OldkmyebManager extends Manager{
    
    public void saveOldkmyeb(Oldkmyeb oldkmyeb);

    public void removeOldkmyebById(Integer id);

    public Oldkmyeb getOldkmyebById(Integer id);

    public List<Oldkmyeb> getOldkmyebList(PageInfo pageInfo);
    
    public void saveSecurityOldkmyeb(Oldkmyeb oldkmyeb);

    public void removeSecurityOldkmyebById(Integer id);

    public Oldkmyeb getSecurityOldkmyebById(Integer id);

    public List<Oldkmyeb> getSecurityOldkmyebList(PageInfo pageInfo);    
}
