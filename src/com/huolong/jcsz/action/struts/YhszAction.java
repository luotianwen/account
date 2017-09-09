package com.huolong.jcsz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.jcsz.action.YhszPageInfo;
import com.huolong.jcsz.model.Yhsz;
import com.huolong.jcsz.service.YhszManager;

public class YhszAction extends BaseAction{
	private Yhsz yhsz;
	private YhszPageInfo pageInfo;
	private List<Yhsz> yhszs;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存开户银行设置

	 */
	public String saveYhsz() throws Exception {
		YhszManager yhszMgr = (YhszManager)SpringContextHolder.getBean(Yhsz.class);
		if(super.perExecute(yhsz)!= null) return returnCommand();
		yhszMgr.saveYhsz(yhsz);
		super.postExecute(yhsz);
		return returnCommand();
	}
	
	
	/**
	 * 删除开户银行设置

	 */
	public String removeYhsz() throws Exception {
		YhszManager yhszMgr = (YhszManager)SpringContextHolder.getBean(Yhsz.class);
		yhszMgr.removeYhszById(yhsz.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些开户银行设置

	 */
	public String removeAllYhsz() throws Exception {
		YhszManager yhszMgr = (YhszManager)SpringContextHolder.getBean(Yhsz.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer yhszid = new Integer( ids[i] );
				yhszMgr.removeYhszById(yhszid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看开户银行设置

	 */
	public String viewYhsz() throws Exception {
		YhszManager yhszMgr = (YhszManager)SpringContextHolder.getBean(Yhsz.class);
		yhsz = yhszMgr.getYhszById(yhsz.getId());
		return returnCommand();
	}
	
	/**
	 * 开户银行设置
列表
	 */
	public String yhszList() throws Exception {
		YhszManager yhszMgr = (YhszManager)SpringContextHolder.getBean(Yhsz.class);
		pageInfo = pageInfo == null ? new YhszPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		yhszs = yhszMgr.getSecurityYhszList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Yhsz getYhsz() {
		return yhsz;
	}

	public void setYhsz(Yhsz yhsz) {
		this.yhsz = yhsz;
	}
	
	public List<Yhsz> getYhszs() {
		return yhszs;
	}

	public void setYhszs(List<Yhsz> yhszs) {
		this.yhszs = yhszs;
	}

	public YhszPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(YhszPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
