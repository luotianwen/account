package com.huolong.xtsz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.xtsz.action.OldkmyebPageInfo;
import com.huolong.xtsz.model.Oldkmyeb;
import com.huolong.xtsz.service.OldkmyebManager;

public class OldkmyebAction extends BaseAction{
	private Oldkmyeb oldkmyeb;
	private OldkmyebPageInfo pageInfo;
	private List<Oldkmyeb> oldkmyebs;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存上传科目余额表
	 */
	public String saveOldkmyeb() throws Exception {
		OldkmyebManager oldkmyebMgr = (OldkmyebManager)SpringContextHolder.getBean(Oldkmyeb.class);
		if(super.perExecute(oldkmyeb)!= null) return returnCommand();
		oldkmyebMgr.saveOldkmyeb(oldkmyeb);
		super.postExecute(oldkmyeb);
		return returnCommand();
	}
	
	
	/**
	 * 删除上传科目余额表
	 */
	public String removeOldkmyeb() throws Exception {
		OldkmyebManager oldkmyebMgr = (OldkmyebManager)SpringContextHolder.getBean(Oldkmyeb.class);
		oldkmyebMgr.removeOldkmyebById(oldkmyeb.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些上传科目余额表
	 */
	public String removeAllOldkmyeb() throws Exception {
		OldkmyebManager oldkmyebMgr = (OldkmyebManager)SpringContextHolder.getBean(Oldkmyeb.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer oldkmyebid = new Integer( ids[i] );
				oldkmyebMgr.removeOldkmyebById(oldkmyebid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看上传科目余额表
	 */
	public String viewOldkmyeb() throws Exception {
		OldkmyebManager oldkmyebMgr = (OldkmyebManager)SpringContextHolder.getBean(Oldkmyeb.class);
		oldkmyeb = oldkmyebMgr.getOldkmyebById(oldkmyeb.getId());
		return returnCommand();
	}
	
	/**
	 * 上传科目余额表列表
	 */
	public String oldkmyebList() throws Exception {
		OldkmyebManager oldkmyebMgr = (OldkmyebManager)SpringContextHolder.getBean(Oldkmyeb.class);
		pageInfo = pageInfo == null ? new OldkmyebPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		oldkmyebs = oldkmyebMgr.getSecurityOldkmyebList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Oldkmyeb getOldkmyeb() {
		return oldkmyeb;
	}

	public void setOldkmyeb(Oldkmyeb oldkmyeb) {
		this.oldkmyeb = oldkmyeb;
	}
	
	public List<Oldkmyeb> getOldkmyebs() {
		return oldkmyebs;
	}

	public void setOldkmyebs(List<Oldkmyeb> oldkmyebs) {
		this.oldkmyebs = oldkmyebs;
	}

	public OldkmyebPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(OldkmyebPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
