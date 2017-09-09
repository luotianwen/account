package com.huolong.jzpz.action.struts;

import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.jcsz.action.CompanyPageInfo;
import com.huolong.jzpz.action.ZhaiyaoPageInfo;
import com.huolong.jzpz.model.Zhaiyao;
import com.huolong.jzpz.service.ZhaiyaoManager;

public class ZhaiyaoAction extends BaseAction{
	private Zhaiyao zhaiyao;
	private ZhaiyaoPageInfo pageInfo;
	private List<Zhaiyao> zhaiyaos;
	private String orderIndexs;
	
	
	/**
	 * 新增/修改保存摘要
	 */
	public String saveZhaiyao() throws Exception {
		ZhaiyaoManager zhaiyaoMgr = (ZhaiyaoManager)SpringContextHolder.getBean(Zhaiyao.class);
		if(super.perExecute(zhaiyao)!= null) return returnCommand();
		zhaiyao.setOrgs(HuolongContextHelper.getCompany());
		zhaiyaoMgr.saveZhaiyao(zhaiyao);
		super.postExecute(zhaiyao);
		return returnCommand();
	}
	
	
	/**
	 * 删除摘要
	 */
	public String removeZhaiyao() throws Exception {
		ZhaiyaoManager zhaiyaoMgr = (ZhaiyaoManager)SpringContextHolder.getBean(Zhaiyao.class);
		zhaiyaoMgr.removeZhaiyaoById(zhaiyao.getId());
		return returnCommand();
	}
	
	/**
	 * 删除指定的某些摘要
	 */
	public String removeAllZhaiyao() throws Exception {
		ZhaiyaoManager zhaiyaoMgr = (ZhaiyaoManager)SpringContextHolder.getBean(Zhaiyao.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer zhaiyaoid = new Integer( ids[i] );
				zhaiyaoMgr.removeZhaiyaoById(zhaiyaoid);
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *查看摘要
	 */
	public String viewZhaiyao() throws Exception {
		ZhaiyaoManager zhaiyaoMgr = (ZhaiyaoManager)SpringContextHolder.getBean(Zhaiyao.class);
		zhaiyao = zhaiyaoMgr.getZhaiyaoById(zhaiyao.getId());
		return returnCommand();
	}
	
	/**
	 * 摘要列表
	 */
	public String zhaiyaoList() throws Exception {
		ZhaiyaoManager zhaiyaoMgr = (ZhaiyaoManager)SpringContextHolder.getBean(Zhaiyao.class);
		pageInfo = pageInfo == null ? new ZhaiyaoPageInfo() : pageInfo;
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		zhaiyaos = zhaiyaoMgr.getSecurityZhaiyaoList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Zhaiyao getZhaiyao() {
		return zhaiyao;
	}

	public void setZhaiyao(Zhaiyao zhaiyao) {
		this.zhaiyao = zhaiyao;
	}
	
	public List<Zhaiyao> getZhaiyaos() {
		return zhaiyaos;
	}

	public void setZhaiyaos(List<Zhaiyao> zhaiyaos) {
		this.zhaiyaos = zhaiyaos;
	}

	public ZhaiyaoPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(ZhaiyaoPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
