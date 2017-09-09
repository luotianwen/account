package com.huolong.jzpz.action.struts;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import org.hi.SpringContextHolder;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.security.context.UserContextHelper;
import org.hi.framework.web.BusinessException;
import org.hi.framework.web.PageInfoUtil;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.cache.Kjqj;
import com.huolong.jzpz.action.JzpzPageInfo;
import com.huolong.jzpz.model.Jzpz;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.jzpz.model.Pzta;
import com.huolong.jzpz.service.JzpzManager;

public class JzpzAction extends BaseAction{
	private Jzpz jzpz;
	private JzpzPageInfo pageInfo;
	private List<Jzpz> jzpzs;
	private String orderIndexs;
	
	
	/**
	 * ����/�޸ı������ƾ֤
	 */
	public String saveJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		if(super.perExecute(jzpz)!= null) return returnCommand();
		List<Pzmx>pzmxs=jzpz.getPzmxs();
		List<Pzmx> psList=new ArrayList<Pzmx>();
		for (Pzmx pzmx : pzmxs) {
			if(null==pzmx.getKjkm()||"".equals(pzmx.getKjkm()))
				 continue;
			pzmx.setDfje(pzmx.getDfje()==null?0d:pzmx.getDfje());
			pzmx.setJfje(pzmx.getJfje()==null?0d:pzmx.getJfje());
			psList.add(pzmx);
		}
		jzpz.setOrgs(HuolongContextHelper.getCompany());
		jzpz.setPzmxs(psList);
		jzpz.setZdr(UserContextHelper.getUser().getFullName());
		jzpzMgr.saveJzpz(jzpz);
		
		super.postExecute(jzpz);
		return returnCommand();
	}
	/**
	 * ƾ֤�ֺ�
	 * @throws Exception 
	 */
	public void getjzpzh() throws Exception{
		 JzpzManager jzpzMgr = (JzpzManager) SpringContextHolder
					.getBean(Jzpz.class);
		 String bhString = jzpzMgr.jzpzGetjzpzh(jzpz.getPzbh(), jzpz.getPzrq());
	 
		//����ҳ�治����
		 getResponse().setHeader("Pragma", "No-cache");
		 getResponse().setHeader("Cache-Control", "no-cache");
		 getResponse().setCharacterEncoding("UTF-8");
		PrintWriter out= null;
		out = getResponse().getWriter();
		out.print(bhString);
		out.flush();
		out.close();
	}
	/**
	 * ɾ������ƾ֤
	 */
	public String removeJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		jzpzMgr.removeJzpzById(jzpz.getId());
		return returnCommand();
	}
	
	/**
	 * ɾ��ָ����ĳЩ����ƾ֤
	 */
	public String removeAllJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
	   
	    if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer jzpzid = new Integer(ids[i]);
					Jzpz j = jzpzMgr.getJzpzById(jzpzid);
					if (j.getZtai() == 200500)
						return returnCommand("����ɾ�����ͨ����!");
					jzpzMgr.removeJzpzById(jzpzid);
				}
			}
		}
		
		return returnCommand();
	}
	/**
	 * ͨ��ָ����ĳЩ����ƾ֤
	 */
	public String passAllJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			 Kjqj kskjqj =HuolongContextHelper.processKjqjByDqqqj();
			    Kjqj kskjqj2;
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
					Integer jzpzid = new Integer(ids[i]);
					// jzpzMgr.removeJzpzById(jzpzid);
					Jzpz j = jzpzMgr.getJzpzById(jzpzid);
					if(j.getZtai()==Pzta.PZTA_TG)
						return returnCommand("ֻ�ܲ���δ��˻����˻ص�!");
					kskjqj2 = HuolongContextHelper.processKjqjByKjqj(j.getPzrq());
					if (!kskjqj.getKjqj().equals(kskjqj2.getKjqj()))
						return returnCommand("ֻ�ܲ�����ǰ�ڼ��!");
					// jzpz.getZtai() == 200500
					j.setZtai(200500);
					jzpzMgr.updateJzpz(j);
				}
			}
		}
		
		return returnCommand();
	}
	/**
	 * ͨ��ָ����ĳЩ����ƾ֤
	 */
	public String backAllJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		if (orderIndexs != null && orderIndexs.length()> 0 )
		{
			 Kjqj kskjqj =HuolongContextHelper.processKjqjByDqqqj();
			    Kjqj kskjqj2;
			String[] ids= orderIndexs.split(",");
			for( int i=0; i<ids.length; i++)
			{
				if (ids[i].length()>0)
				{
				Integer jzpzid = new Integer( ids[i] );
				jzpz=jzpzMgr.getJzpzById(jzpzid);
				kskjqj2 = HuolongContextHelper.processKjqjByKjqj(jzpz.getPzrq());
				if (!kskjqj.getKjqj().equals(kskjqj2.getKjqj()))
					return returnCommand("ֻ�ܲ�����ǰ�ڼ��!");
				if(jzpz!=null){
					jzpz.setZtai(Pzta.PZTA_TH);
					jzpzMgr.updateJzpz(jzpz);
				}
				}
			}
		}
		
		return returnCommand();
	}
	
	/**
	 *�鿴����ƾ֤
	 */
	public String viewJzpz() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		jzpz = jzpzMgr.getJzpzById(jzpz.getId());
		if(jzpz.getId()==null){
			jzpz=new Jzpz();
			jzpz.setOrgs(HuolongContextHelper.getCompany());
		} 
		List<Pzmx> pzmxs=jzpz.getPzmxs();
		if(null==pzmxs||pzmxs.size()<=0)
			pzmxs=new ArrayList<Pzmx>();
		int num=10;
		orderIndexs=HuolongContextHelper.getCompany().getPzsize()+"";
		try {
			num=HuolongContextHelper.getCompany().getPzsize()-pzmxs.size();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			throw new BusinessException("û�����ù�˾��Ϣ!");
		}
		
		for (int i = 0; i <num; i++) {
			Pzmx pzmx=new Pzmx();
			pzmxs.add(pzmx);
		}
		jzpz.setPzmxs(pzmxs);
		return returnCommand();
	}
	
	/**
	 * ����ƾ֤�б�
	 */
	public String jzpzList() throws Exception {
		JzpzManager jzpzMgr = (JzpzManager)SpringContextHolder.getBean(Jzpz.class);
		pageInfo = pageInfo == null ? new JzpzPageInfo() : pageInfo;
		
		
		PageInfo sarchPageInfo = PageInfoUtil.populate(pageInfo, this);
		
		jzpzs = jzpzMgr.getSecurityJzpzList(sarchPageInfo);
		
		return returnCommand();	
	}
	
	
	
	
	public Jzpz getJzpz() {
		return jzpz;
	}

	public void setJzpz(Jzpz jzpz) {
		this.jzpz = jzpz;
	}
	
	public List<Jzpz> getJzpzs() {
		return jzpzs;
	}

	public void setJzpzs(List<Jzpz> jzpzs) {
		this.jzpzs = jzpzs;
	}

	public JzpzPageInfo getPageInfo() {
		return pageInfo;
	}

	public void setPageInfo(JzpzPageInfo pageInfo) {
		this.pageInfo = pageInfo;
	}	
	
	public String getOrderIndexs() {
		return orderIndexs;
	}

	public void setOrderIndexs(String orderIndexs) {
		this.orderIndexs = orderIndexs;
	}
	
}
