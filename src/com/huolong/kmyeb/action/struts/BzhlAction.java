package com.huolong.kmyeb.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.kmyeb.action.BzhlPageInfo;
import com.huolong.kmyeb.model.Bzhl;
import com.huolong.kmyeb.service.BzhlManager;

public class BzhlAction extends BaseAction{
	private Bzhl bzhl;
	private BzhlPageInfo pageInfo;
	private List<Bzhl> bzhls;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存期末调汇
	 */
	public String saveBzhl() throws Exception {
		BzhlManager bzhlMgr = (BzhlManager)SpringContextHolder.getBean(Bzhl.class);
		if(super.perExecute(bzhl)!= null) return returnCommand();
		bzhlMgr.saveBzhl(bzhl);
		super.postExecute(bzhl);
		return returnCommand();
	}
	
	
	/**
	 * 删除期末调汇
	 */
	public String removeBzhl() throws Exception {
		BzhlManager bzhlMgr = (BzhlManager)SpringContextHolder.getBean(Bzhl.class);
		bzhlMgr.removeBzhlById(bzhl.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些期末调汇
	 */
	public String removeAllBzhl() throws Exception {
		BzhlManager bzhlMgr = (BzhlManager)SpringContextHolder.getBean(Bzhl.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer bzhlid = new Integer( ids[i] );
				bzhlMgr.removeBzhlById(bzhlid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看期末调汇
	 */
	public String viewBzhl() throws Exception {
		BzhlManager bzhlMgr = (BzhlManager)SpringContextHolder.getBean(Bzhl.class);
		bzhl = bzhlMgr.getBzhlById(bzhl.getId());
		return returnCommand();
	}
	
	/**
	 * 期末调汇列表
	 */
	public String bzhlList() throws Exception {
		BzhlManager bzhlMgr = (BzhlManager)SpringContextHolder.getBean(Bzhl.class);
		pageInfo = pageInfo == null ? new BzhlPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		bzhls = bzhlMgr.getSecurityBzhlList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Bzhl getBzhl() {
		return bzhl;
	}

	public void setBzhl(Bzhl bzhl) {
		this.bzhl = bzhl;
	}
	
	public List<Bzhl> getBzhls() {
		return bzhls;
	}

	public void setBzhls(List<Bzhl> bzhls) {
		this.bzhls = bzhls;
	}

	public BzhlPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(BzhlPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
