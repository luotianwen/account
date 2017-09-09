package com.huolong.jcsz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.jcsz.action.PzzlPageInfo;
import com.huolong.jcsz.model.Pzzl;
import com.huolong.jcsz.service.PzzlManager;

public class PzzlAction extends BaseAction{
	private Pzzl pzzl;
	private PzzlPageInfo pageInfo;
	private List<Pzzl> pzzls;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存凭证种类设置

	 */
	public String savePzzl() throws Exception {
		PzzlManager pzzlMgr = (PzzlManager)SpringContextHolder.getBean(Pzzl.class);
		if(super.perExecute(pzzl)!= null) return returnCommand();
		pzzlMgr.savePzzl(pzzl);
		super.postExecute(pzzl);
		return returnCommand();
	}
	
	
	/**
	 * 删除凭证种类设置

	 */
	public String removePzzl() throws Exception {
		PzzlManager pzzlMgr = (PzzlManager)SpringContextHolder.getBean(Pzzl.class);
		pzzlMgr.removePzzlById(pzzl.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些凭证种类设置

	 */
	public String removeAllPzzl() throws Exception {
		PzzlManager pzzlMgr = (PzzlManager)SpringContextHolder.getBean(Pzzl.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer pzzlid = new Integer( ids[i] );
				pzzlMgr.removePzzlById(pzzlid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看凭证种类设置

	 */
	public String viewPzzl() throws Exception {
		PzzlManager pzzlMgr = (PzzlManager)SpringContextHolder.getBean(Pzzl.class);
		pzzl = pzzlMgr.getPzzlById(pzzl.getId());
		return returnCommand();
	}
	
	/**
	 * 凭证种类设置
列表
	 */
	public String pzzlList() throws Exception {
		PzzlManager pzzlMgr = (PzzlManager)SpringContextHolder.getBean(Pzzl.class);
		pageInfo = pageInfo == null ? new PzzlPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		pzzls = pzzlMgr.getSecurityPzzlList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Pzzl getPzzl() {
		return pzzl;
	}

	public void setPzzl(Pzzl pzzl) {
		this.pzzl = pzzl;
	}
	
	public List<Pzzl> getPzzls() {
		return pzzls;
	}

	public void setPzzls(List<Pzzl> pzzls) {
		this.pzzls = pzzls;
	}

	public PzzlPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PzzlPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
