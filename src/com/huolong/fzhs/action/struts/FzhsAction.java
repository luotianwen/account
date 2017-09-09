package com.huolong.fzhs.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.fzhs.action.FzhsPageInfo;
import com.huolong.fzhs.model.Fzhs;
import com.huolong.fzhs.service.FzhsManager;

public class FzhsAction extends BaseAction{
	private Fzhs fzhs;
	private FzhsPageInfo pageInfo;
	private List<Fzhs> fzhss;
	private String orderIndexs;
	
	
	/**
	 * ÐÂÔö/ÐÞ¸Ä±£´æ¸¨ÖúºËËã
	 */
	public String saveFzhs() throws Exception {
		FzhsManager fzhsMgr = (FzhsManager)SpringContextHolder.getBean(Fzhs.class);
		if(super.perExecute(fzhs)!= null) return returnCommand();
		fzhsMgr.saveFzhs(fzhs);
		super.postExecute(fzhs);
		return returnCommand();
	}
	
	
	/**
	 * É¾³ý¸¨ÖúºËËã
	 */
	public String removeFzhs() throws Exception {
		FzhsManager fzhsMgr = (FzhsManager)SpringContextHolder.getBean(Fzhs.class);
		fzhsMgr.removeFzhsById(fzhs.getId());
		return returnCommand();
	}
	
	/**
	 * É¾³ýÖ¸¶¨µÄÄ³Ð©¸¨ÖúºËËã
	 */
	public String removeAllFzhs() throws Exception {
		FzhsManager fzhsMgr = (FzhsManager)SpringContextHolder.getBean(Fzhs.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer fzhsid = new Integer( ids[i] );
				fzhsMgr.removeFzhsById(fzhsid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *²é¿´¸¨ÖúºËËã
	 */
	public String viewFzhs() throws Exception {
		FzhsManager fzhsMgr = (FzhsManager)SpringContextHolder.getBean(Fzhs.class);
		fzhs = fzhsMgr.getFzhsById(fzhs.getId());
		return returnCommand();
	}
	
	/**
	 * ¸¨ÖúºËËãÁÐ±í
	 */
	public String fzhsList() throws Exception {
		FzhsManager fzhsMgr = (FzhsManager)SpringContextHolder.getBean(Fzhs.class);
		pageInfo = pageInfo == null ? new FzhsPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		fzhss = fzhsMgr.getSecurityFzhsList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Fzhs getFzhs() {
		return fzhs;
	}

	public void setFzhs(Fzhs fzhs) {
		this.fzhs = fzhs;
	}
	
	public List<Fzhs> getFzhss() {
		return fzhss;
	}

	public void setFzhss(List<Fzhs> fzhss) {
		this.fzhss = fzhss;
	}

	public FzhsPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(FzhsPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
