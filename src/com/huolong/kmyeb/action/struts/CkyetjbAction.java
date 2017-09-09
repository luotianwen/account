package com.huolong.kmyeb.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.kmyeb.action.CkyetjbPageInfo;
import com.huolong.kmyeb.model.Ckyetjb;
import com.huolong.kmyeb.service.CkyetjbManager;

public class CkyetjbAction extends BaseAction{
	private Ckyetjb ckyetjb;
	private CkyetjbPageInfo pageInfo;
	private List<Ckyetjb> ckyetjbs;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存存款余额调节表
	 */
	public String saveCkyetjb() throws Exception {
		CkyetjbManager ckyetjbMgr = (CkyetjbManager)SpringContextHolder.getBean(Ckyetjb.class);
		if(super.perExecute(ckyetjb)!= null) return returnCommand();
		ckyetjbMgr.saveCkyetjb(ckyetjb);
		super.postExecute(ckyetjb);
		return returnCommand();
	}
	
	
	/**
	 * 删除存款余额调节表
	 */
	public String removeCkyetjb() throws Exception {
		CkyetjbManager ckyetjbMgr = (CkyetjbManager)SpringContextHolder.getBean(Ckyetjb.class);
		ckyetjbMgr.removeCkyetjbById(ckyetjb.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些存款余额调节表
	 */
	public String removeAllCkyetjb() throws Exception {
		CkyetjbManager ckyetjbMgr = (CkyetjbManager)SpringContextHolder.getBean(Ckyetjb.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer ckyetjbid = new Integer( ids[i] );
				ckyetjbMgr.removeCkyetjbById(ckyetjbid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看存款余额调节表
	 */
	public String viewCkyetjb() throws Exception {
		CkyetjbManager ckyetjbMgr = (CkyetjbManager)SpringContextHolder.getBean(Ckyetjb.class);
		ckyetjb = ckyetjbMgr.getCkyetjbById(ckyetjb.getId());
		return returnCommand();
	}
	
	/**
	 * 存款余额调节表列表
	 */
	public String ckyetjbList() throws Exception {
		CkyetjbManager ckyetjbMgr = (CkyetjbManager)SpringContextHolder.getBean(Ckyetjb.class);
		pageInfo = pageInfo == null ? new CkyetjbPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		ckyetjbs = ckyetjbMgr.getSecurityCkyetjbList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Ckyetjb getCkyetjb() {
		return ckyetjb;
	}

	public void setCkyetjb(Ckyetjb ckyetjb) {
		this.ckyetjb = ckyetjb;
	}
	
	public List<Ckyetjb> getCkyetjbs() {
		return ckyetjbs;
	}

	public void setCkyetjbs(List<Ckyetjb> ckyetjbs) {
		this.ckyetjbs = ckyetjbs;
	}

	public CkyetjbPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(CkyetjbPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
