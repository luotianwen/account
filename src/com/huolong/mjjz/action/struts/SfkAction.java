package com.huolong.mjjz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.mjjz.action.SfkPageInfo;
import com.huolong.mjjz.model.Sfk;
import com.huolong.mjjz.service.SfkManager;

public class SfkAction extends BaseAction{
	private Sfk sfk;
	private SfkPageInfo pageInfo;
	private List<Sfk> sfks;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存收付款
	 */
	public String saveSfk() throws Exception {
		SfkManager sfkMgr = (SfkManager)SpringContextHolder.getBean(Sfk.class);
		if(super.perExecute(sfk)!= null) return returnCommand();
		sfkMgr.saveSfk(sfk);
		super.postExecute(sfk);
		return returnCommand();
	}
	
	
	/**
	 * 删除收付款
	 */
	public String removeSfk() throws Exception {
		SfkManager sfkMgr = (SfkManager)SpringContextHolder.getBean(Sfk.class);
		sfkMgr.removeSfkById(sfk.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些收付款
	 */
	public String removeAllSfk() throws Exception {
		SfkManager sfkMgr = (SfkManager)SpringContextHolder.getBean(Sfk.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer sfkid = new Integer( ids[i] );
				sfkMgr.removeSfkById(sfkid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看收付款
	 */
	public String viewSfk() throws Exception {
		SfkManager sfkMgr = (SfkManager)SpringContextHolder.getBean(Sfk.class);
		sfk = sfkMgr.getSfkById(sfk.getId());
		return returnCommand();
	}
	
	/**
	 * 收付款列表
	 */
	public String sfkList() throws Exception {
		SfkManager sfkMgr = (SfkManager)SpringContextHolder.getBean(Sfk.class);
		pageInfo = pageInfo == null ? new SfkPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		sfks = sfkMgr.getSecuritySfkList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Sfk getSfk() {
		return sfk;
	}

	public void setSfk(Sfk sfk) {
		this.sfk = sfk;
	}
	
	public List<Sfk> getSfks() {
		return sfks;
	}

	public void setSfks(List<Sfk> sfks) {
		this.sfks = sfks;
	}

	public SfkPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(SfkPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
