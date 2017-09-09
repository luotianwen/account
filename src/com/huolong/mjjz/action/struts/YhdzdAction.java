package com.huolong.mjjz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.mjjz.action.YhdzdPageInfo;
import com.huolong.mjjz.model.Yhdzd;
import com.huolong.mjjz.service.YhdzdManager;

public class YhdzdAction extends BaseAction{
	private Yhdzd yhdzd;
	private YhdzdPageInfo pageInfo;
	private List<Yhdzd> yhdzds;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存银行对账单
	 */
	public String saveYhdzd() throws Exception {
		YhdzdManager yhdzdMgr = (YhdzdManager)SpringContextHolder.getBean(Yhdzd.class);
		if(super.perExecute(yhdzd)!= null) return returnCommand();
		yhdzdMgr.saveYhdzd(yhdzd);
		super.postExecute(yhdzd);
		return returnCommand();
	}
	
	
	/**
	 * 删除银行对账单
	 */
	public String removeYhdzd() throws Exception {
		YhdzdManager yhdzdMgr = (YhdzdManager)SpringContextHolder.getBean(Yhdzd.class);
		yhdzdMgr.removeYhdzdById(yhdzd.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些银行对账单
	 */
	public String removeAllYhdzd() throws Exception {
		YhdzdManager yhdzdMgr = (YhdzdManager)SpringContextHolder.getBean(Yhdzd.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer yhdzdid = new Integer( ids[i] );
				yhdzdMgr.removeYhdzdById(yhdzdid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看银行对账单
	 */
	public String viewYhdzd() throws Exception {
		YhdzdManager yhdzdMgr = (YhdzdManager)SpringContextHolder.getBean(Yhdzd.class);
		yhdzd = yhdzdMgr.getYhdzdById(yhdzd.getId());
		return returnCommand();
	}
	
	/**
	 * 银行对账单列表
	 */
	public String yhdzdList() throws Exception {
		YhdzdManager yhdzdMgr = (YhdzdManager)SpringContextHolder.getBean(Yhdzd.class);
		pageInfo = pageInfo == null ? new YhdzdPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		yhdzds = yhdzdMgr.getSecurityYhdzdList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Yhdzd getYhdzd() {
		return yhdzd;
	}

	public void setYhdzd(Yhdzd yhdzd) {
		this.yhdzd = yhdzd;
	}
	
	public List<Yhdzd> getYhdzds() {
		return yhdzds;
	}

	public void setYhdzds(List<Yhdzd> yhdzds) {
		this.yhdzds = yhdzds;
	}

	public YhdzdPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(YhdzdPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
