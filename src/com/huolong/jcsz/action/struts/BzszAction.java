package com.huolong.jcsz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.jcsz.action.BzszPageInfo;
import com.huolong.jcsz.model.Bzsz;
import com.huolong.jcsz.service.BzszManager;

public class BzszAction extends BaseAction{
	private Bzsz bzsz;
	private BzszPageInfo pageInfo;
	private List<Bzsz> bzszs;
	private String orderIndexs;
	
	
	/**
	 * ����/�޸ı����������
	 */
	public String saveBzsz() throws Exception {
		BzszManager bzszMgr = (BzszManager)SpringContextHolder.getBean(Bzsz.class);
		if(super.perExecute(bzsz)!= null) return returnCommand();
		bzszMgr.saveBzsz(bzsz);
		super.postExecute(bzsz);
		return returnCommand();
	}
	
	
	/**
	 * ɾ����������
	 */
	public String removeBzsz() throws Exception {
		BzszManager bzszMgr = (BzszManager)SpringContextHolder.getBean(Bzsz.class);
		bzszMgr.removeBzszById(bzsz.getId());
		return returnCommand();
	}
	
	/**
	 * ɾ��ָ����ĳЩ��������
	 */
	public String removeAllBzsz() throws Exception {
		BzszManager bzszMgr = (BzszManager)SpringContextHolder.getBean(Bzsz.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer bzszid = new Integer( ids[i] );
				bzszMgr.removeBzszById(bzszid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *�鿴��������
	 */
	public String viewBzsz() throws Exception {
		BzszManager bzszMgr = (BzszManager)SpringContextHolder.getBean(Bzsz.class);
		bzsz = bzszMgr.getBzszById(bzsz.getId());
		return returnCommand();
	}
	
	/**
	 * ���������б�
	 */
	public String bzszList() throws Exception {
		BzszManager bzszMgr = (BzszManager)SpringContextHolder.getBean(Bzsz.class);
		pageInfo = pageInfo == null ? new BzszPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		bzszs = bzszMgr.getSecurityBzszList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Bzsz getBzsz() {
		return bzsz;
	}

	public void setBzsz(Bzsz bzsz) {
		this.bzsz = bzsz;
	}
	
	public List<Bzsz> getBzszs() {
		return bzszs;
	}

	public void setBzszs(List<Bzsz> bzszs) {
		this.bzszs = bzszs;
	}

	public BzszPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(BzszPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
