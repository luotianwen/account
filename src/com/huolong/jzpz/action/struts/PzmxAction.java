package com.huolong.jzpz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.jzpz.action.PzmxPageInfo;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.jzpz.service.PzmxManager;

public class PzmxAction extends BaseAction{
	private Pzmx pzmx;
	private PzmxPageInfo pageInfo;
	private List<Pzmx> pzmxs;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存凭证明细
	 */
	public String savePzmx() throws Exception {
		PzmxManager pzmxMgr = (PzmxManager)SpringContextHolder.getBean(Pzmx.class);
		if(super.perExecute(pzmx)!= null) return returnCommand();
		pzmxMgr.savePzmx(pzmx);
		super.postExecute(pzmx);
		return returnCommand();
	}
	
	
	/**
	 * 删除凭证明细
	 */
	public String removePzmx() throws Exception {
		PzmxManager pzmxMgr = (PzmxManager)SpringContextHolder.getBean(Pzmx.class);
		pzmxMgr.removePzmxById(pzmx.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些凭证明细
	 */
	public String removeAllPzmx() throws Exception {
		PzmxManager pzmxMgr = (PzmxManager)SpringContextHolder.getBean(Pzmx.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer pzmxid = new Integer( ids[i] );
				pzmxMgr.removePzmxById(pzmxid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看凭证明细
	 */
	public String viewPzmx() throws Exception {
		PzmxManager pzmxMgr = (PzmxManager)SpringContextHolder.getBean(Pzmx.class);
		pzmx = pzmxMgr.getPzmxById(pzmx.getId());
		return returnCommand();
	}
	
	/**
	 * 凭证明细列表
	 */
	public String pzmxList() throws Exception {
		PzmxManager pzmxMgr = (PzmxManager)SpringContextHolder.getBean(Pzmx.class);
		pageInfo = pageInfo == null ? new PzmxPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		pzmxs = pzmxMgr.getSecurityPzmxList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Pzmx getPzmx() {
		return pzmx;
	}

	public void setPzmx(Pzmx pzmx) {
		this.pzmx = pzmx;
	}
	
	public List<Pzmx> getPzmxs() {
		return pzmxs;
	}

	public void setPzmxs(List<Pzmx> pzmxs) {
		this.pzmxs = pzmxs;
	}

	public PzmxPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(PzmxPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
