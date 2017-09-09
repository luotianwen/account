package com.huolong.mjjz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.mjjz.action.YhdzdMXPageInfo;
import com.huolong.mjjz.model.YhdzdMX;
import com.huolong.mjjz.service.YhdzdMXManager;

public class YhdzdMXAction extends BaseAction{
	private YhdzdMX yhdzdMX;
	private YhdzdMXPageInfo pageInfo;
	private List<YhdzdMX> yhdzdMXs;
	private String orderIndexs;
	
	
	/**
	 * ����/�޸ı������ж��˵���ϸ
	 */
	public String saveYhdzdMX() throws Exception {
		YhdzdMXManager yhdzdMXMgr = (YhdzdMXManager)SpringContextHolder.getBean(YhdzdMX.class);
		if(super.perExecute(yhdzdMX)!= null) return returnCommand();
		yhdzdMXMgr.saveYhdzdMX(yhdzdMX);
		super.postExecute(yhdzdMX);
		return returnCommand();
	}
	
	
	/**
	 * ɾ�����ж��˵���ϸ
	 */
	public String removeYhdzdMX() throws Exception {
		YhdzdMXManager yhdzdMXMgr = (YhdzdMXManager)SpringContextHolder.getBean(YhdzdMX.class);
		yhdzdMXMgr.removeYhdzdMXById(yhdzdMX.getId());
		return returnCommand();
	}
	
	/**
	 * ɾ��ָ����ĳЩ���ж��˵���ϸ
	 */
	public String removeAllYhdzdMX() throws Exception {
		YhdzdMXManager yhdzdMXMgr = (YhdzdMXManager)SpringContextHolder.getBean(YhdzdMX.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer yhdzdMXid = new Integer( ids[i] );
				yhdzdMXMgr.removeYhdzdMXById(yhdzdMXid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *�鿴���ж��˵���ϸ
	 */
	public String viewYhdzdMX() throws Exception {
		YhdzdMXManager yhdzdMXMgr = (YhdzdMXManager)SpringContextHolder.getBean(YhdzdMX.class);
		yhdzdMX = yhdzdMXMgr.getYhdzdMXById(yhdzdMX.getId());
		return returnCommand();
	}
	
	/**
	 * ���ж��˵���ϸ�б�
	 */
	public String yhdzdMXList() throws Exception {
		YhdzdMXManager yhdzdMXMgr = (YhdzdMXManager)SpringContextHolder.getBean(YhdzdMX.class);
		pageInfo = pageInfo == null ? new YhdzdMXPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		yhdzdMXs = yhdzdMXMgr.getSecurityYhdzdMXList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public YhdzdMX getYhdzdMX() {
		return yhdzdMX;
	}

	public void setYhdzdMX(YhdzdMX yhdzdMX) {
		this.yhdzdMX = yhdzdMX;
	}
	
	public List<YhdzdMX> getYhdzdMXs() {
		return yhdzdMXs;
	}

	public void setYhdzdMXs(List<YhdzdMX> yhdzdMXs) {
		this.yhdzdMXs = yhdzdMXs;
	}

	public YhdzdMXPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(YhdzdMXPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
