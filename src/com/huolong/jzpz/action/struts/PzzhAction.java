package com.huolong.jzpz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.jzpz.action.PzzhPageInfo;
import com.huolong.jzpz.model.Pzzh;
import com.huolong.jzpz.service.PzzhManager;

public class PzzhAction extends BaseAction{
	private Pzzh pzzh;
	private PzzhPageInfo pageInfo;
	private List<Pzzh> pzzhs;
	private String orderIndexs;
	
	
	/**
	 * ����/�޸ı���ƾ֤�ֺ�
	 */
	public String savePzzh() throws Exception {
		PzzhManager pzzhMgr = (PzzhManager)SpringContextHolder.getBean(Pzzh.class);
		if(super.perExecute(pzzh)!= null) return returnCommand();
		pzzhMgr.savePzzh(pzzh);
		super.postExecute(pzzh);
		return returnCommand();
	}
	
	
	/**
	 * ɾ��ƾ֤�ֺ�
	 */
	public String removePzzh() throws Exception {
		PzzhManager pzzhMgr = (PzzhManager)SpringContextHolder.getBean(Pzzh.class);
		pzzhMgr.removePzzhById(pzzh.getId());
		return returnCommand();
	}
	
	/**
	 * ɾ��ָ����ĳЩƾ֤�ֺ�
	 */
	public String removeAllPzzh() throws Exception {
		PzzhManager pzzhMgr = (PzzhManager)SpringContextHolder.getBean(Pzzh.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer pzzhid = new Integer( ids[i] );
				pzzhMgr.removePzzhById(pzzhid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *�鿴ƾ֤�ֺ�
	 */
	public String viewPzzh() throws Exception {
		PzzhManager pzzhMgr = (PzzhManager)SpringContextHolder.getBean(Pzzh.class);
		pzzh = pzzhMgr.getPzzhById(pzzh.getId());
		return returnCommand();
	}
	
	/**
	 * ƾ֤�ֺ��б�
	 */
	public String pzzhList() throws Exception {
		PzzhManager pzzhMgr = (PzzhManager)SpringContextHolder.getBean(Pzzh.class);
		pageInfo = pageInfo == null ? new PzzhPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		pzzhs = pzzhMgr.getSecurityPzzhList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Pzzh getPzzh() {
		return pzzh;
	}

	public void setPzzh(Pzzh pzzh) {
		this.pzzh = pzzh;
	}
	
	public List<Pzzh> getPzzhs() {
		return pzzhs;
	}

	public void setPzzhs(List<Pzzh> pzzhs) {
		this.pzzhs = pzzhs;
	}

	public PzzhPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PzzhPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
