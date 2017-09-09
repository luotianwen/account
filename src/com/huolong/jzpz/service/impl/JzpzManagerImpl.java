package com.huolong.jzpz.service.impl;

import java.math.BigDecimal;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.hi.SpringContextHolder;
import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.security.context.UserContextHelper;
import org.hi.framework.service.impl.ManagerImpl;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.cache.Kjqj;
import com.huolong.jcsz.model.Company;
import com.huolong.jzpz.model.Jzpz;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.jzpz.model.Pzta;
import com.huolong.jzpz.model.Pzzh;
import com.huolong.jzpz.service.JzpzManager;
import com.huolong.jzpz.service.PzzhManager;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.kmyeb.service.KmyebManager;
import com.huolong.xtsz.model.Kmfx;

public class JzpzManagerImpl extends ManagerImpl implements JzpzManager{
    
    protected void preSaveObject(Object obj) {
        super.preSaveObject(obj);

    }

    protected void postSaveObject(Object obj) {
        super.postSaveObject(obj);

    }

    protected void preRemoveObject(Object obj) {
        super.preRemoveObject(obj);
        
    }

    protected void postRemoveObject(Object obj) {
        super.postRemoveObject(obj);
        
    }
    
    public void saveJzpz(Jzpz jzpz){
    	jzpz.setOrgs( HuolongContextHelper.getCompany());
    	if (jzpz.getId() == null) {
			String pzzlString=jzpz.getPzbh().split("-")[0];
			String num=jzpzGetjzpzh(jzpz.getPzbh(), jzpz.getPzrq());
			jzpz.setPzbh(pzzlString+"-"+ num);
			
			Kjqj kjqj1 =HuolongContextHelper.processKjqjByKjqj(jzpz.getPzrq());
			Pzzh p=new Pzzh();
			
			PzzhManager pzzhMgr = (PzzhManager) SpringContextHolder.getBean(Pzzh.class);
			Filter filter = FilterFactory.getSimpleFilter("kjqj", kjqj1.getKjqj(), Filter.OPERATOR_GREATER_EQ) 
					.addCondition("pzzl", pzzlString, Filter.OPERATOR_EQ )
					.addCondition("yl1", HuolongContextHelper.getCompanyId(), Filter.OPERATOR_EQ);
			List<Pzzh> pzzhs = pzzhMgr.getObjects(filter);
			if(pzzhs!=null&&pzzhs.size()>0){
				p=pzzhs.get(0);
			}
			p.setKjqj(kjqj1.getKjqj());
			p.setPzzl(pzzlString);
			p.setNumb(num);
			p.setYl1(HuolongContextHelper.getCompanyId()+"");
			pzzhMgr.savePzzh(p);
    	}
    	saveObject(jzpz);
    
    }

    public void removeJzpzById(Integer id){
    	removeObjectById(id);
    	
    }

    public Jzpz getJzpzById(Integer id){
   		return (Jzpz) getObjectById(id);
    }

    public List<Jzpz> getJzpzList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityJzpz(Jzpz jzpz){
    	saveObject(jzpz);
    
    }

    public void removeSecurityJzpzById(Integer id){
    	removeObjectById(id);
    	
    }

    public Jzpz getSecurityJzpzById(Integer id){
   		return (Jzpz) getObjectById(id);
    }

    public List<Jzpz> getSecurityJzpzList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

	@Override
	public void updateJzpz(Jzpz j) {
		// TODO Auto-generated method stub

		// TODO Auto-generated method stub
		KmyebManager kmyeb = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		Company company=HuolongContextHelper.getCompany();
		 Kjqj kjqj =HuolongContextHelper.processKjqjByKjqj(j.getPzrq());
		j.setShr(UserContextHelper.getUser().getFullName());
		j.setShrq(new java.util.Date());
		j.setOrgs(company);
		saveJzpz(j);
		// 凭证审核通过
		if (j.getZtai() == Pzta.PZTA_TG){
			for (Pzmx p : j.getPzmxs()) {
				if (p.getKjkm() != null) {
					
					Filter filter=FilterFactory.getSimpleFilter("kjqj", kjqj.getKjqj(), Filter.OPERATOR_EQ)
						.addCondition("kmmclookup.id", p.getKjkm().getId(), Filter.OPERATOR_EQ)
						.addCondition("orgs.id", company.getId());
					List<Kmyeb> lis = kmyeb.getObjects(filter);
					Kmyeb list = null;
					if (lis != null && lis.size() > 0)
						list = lis.get(0);
					/*
					 * 此期间不存在余额
					 */
					if (list == null) {
						noteExitKmye(p, kjqj, null, j, kmyeb);
					}
					/*
					 * 如果此期间存在科目余额 更新余额
					 */
					else {
						exitKmye(p, kjqj, null, j, list, kmyeb);
					}

				}
			}
		}
		else if (Pzta.PZTA_TH == j.getZtai()) {
			for (Pzmx p : j.getPzmxs()) {
				if (p.getKjkm() != null) {
					Filter filter=FilterFactory.getSimpleFilter("kjqj", kjqj.getKjqj(), Filter.OPERATOR_EQ)
							.addCondition("kmmclookup.id", p.getKjkm().getId(), Filter.OPERATOR_EQ)
							.addCondition("orgs.id", company.getId());
			    	List<Kmyeb> lis = kmyeb.getObjects(filter);
					Kmyeb list = null;
					if (lis != null && lis.size() > 0){
						list = lis.get(0);
					    backJzpz(p, kjqj, null, j, list, kmyeb);
					}
				}
			}
		}
	
	}   
	private void noteExitKmye(Pzmx p, Kjqj kjqj, Kmyeb listzh, Jzpz j,
			KmyebManager kmyeb) {
		BigDecimal cj = new BigDecimal("0000");
		BigDecimal df = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
		BigDecimal jf = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
		BigDecimal zj = new BigDecimal("0000");
		Kmyeb kmye = new Kmyeb();
		if (Kmfx.KMFX_JF == p.getKjkm().getKmfx()) {
			zj = jf.subtract(df);
		} else {
			zj = df.subtract(jf);
		}

		kmye.setNcsl("0");
		kmye.setQcye("0.00");
		kmye.setQcyefx(p.getKjkm().getKmfx() + "");
		kmye.setQmyefx(p.getKjkm().getKmfx() + "");
		kmye.setDffse(p.getDfje() + "");
		kmye.setJffse(p.getJfje() + "");

		kmye.setBnljdf(p.getDfje() + "");
		kmye.setBnljjf(p.getJfje() + "");
		kmye.setQmye(zj.doubleValue() + "");
		kmye.setKjqj(kjqj.getKjqj());
		kmye.setKmmclookup(p.getKjkm());
		 

		kmye.setQcbnjf("0.00");
		kmye.setQcbndf("0.00");
		kmye.setNcye("0.00");

		boolean flg = false;
		Map map = new HashMap<String, String>();
		map.put("6001", "6001");
		map.put("6051", "6051");
		map.put("6101", "6101");
		map.put("6111", "6111");

		map.put("6301", "6301");
		map.put("6401", "6401");
		map.put("6402", "6402");
		map.put("6403", "6403");

		map.put("6601", "6601");
		map.put("6602", "6602");
		map.put("6603", "6603");
		map.put("6701", "6701");

		map.put("6711", "6711");
		map.put("6801", "6801");
		map.put("6901", "6901");
		if (map.containsValue(p.getKjkm().getKmbh().substring(0, 4))) {
			flg = true;
		}

		if (j.getJzzt() == null) {
			if (flg) {
				BigDecimal jfs = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
				BigDecimal dfs = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
				BigDecimal bq = new BigDecimal("00.00");
				if (Kmfx.KMFX_JF == p.getKjkm().getKmfx()) {
					bq = jfs.subtract(dfs);
				} else {
					bq = dfs.subtract(jfs);
				}
				kmye.setJzqyebqs(bq + "");
				kmye.setJzqyeljs(bq + "");
			}

		}
		kmyeb.saveKmyeb(kmye);

	}
	private void exitKmye(Pzmx p, Kjqj kjqj, Kmyeb listzh, Jzpz j, Kmyeb list,
			KmyebManager kmyeb) {
		BigDecimal df = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
		BigDecimal jf = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
		BigDecimal zj = new BigDecimal("0000");

		if (Kmfx.KMFX_JF == p.getKjkm().getKmfx()) {
			zj = jf.subtract(df);
			 
		} else {
			zj = df.subtract(jf);
			 
		}
		BigDecimal lye = new BigDecimal(list.getQmye());
		BigDecimal lbndse = new BigDecimal(list.getBnljdf());
		BigDecimal ldse = new BigDecimal(list.getDffse());
		BigDecimal ljss = new BigDecimal(list.getJffse());
		BigDecimal lbnjse = new BigDecimal(list.getBnljjf());
		list.setQmye((lye.add(zj)).doubleValue() + "");
		list.setDffse((ldse.add(df)).doubleValue() + "");
		list.setJffse((ljss.add(jf)).doubleValue() + "");
		list.setBnljdf((lbndse.add(df)).doubleValue() + "");
		list.setBnljjf((lbnjse.add(jf)).doubleValue() + "");
		list.setQmyefx(p.getKjkm().getKmfx() + "");
 
		/*
	 * 
	 */

		boolean flg = false;
		Map map = new HashMap<String, String>();
		map.put("6001", "6001");
		map.put("6051", "6051");
		map.put("6101", "6101");
		map.put("6111", "6111");

		map.put("6301", "6301");
		map.put("6401", "6401");
		map.put("6402", "6402");
		map.put("6403", "6403");

		map.put("6601", "6601");
		map.put("6602", "6602");
		map.put("6603", "6603");
		map.put("6701", "6701");

		map.put("6711", "6711");
		map.put("6801", "6801");
		map.put("6901", "6901");
		if (map.containsValue(p.getKjkm().getKmbh().substring(0, 4))) {
			flg = true;
		}
		if (j.getJzzt() == null) {

			if (flg) {
				BigDecimal listgetJzqyebqs = new BigDecimal("00.00");
				BigDecimal listgetJzqyeljs = new BigDecimal("00.00");
				if (list.getJzqyebqs() != null)
					listgetJzqyebqs = new BigDecimal(list.getJzqyebqs());
				if (list.getJzqyeljs() != null)
					listgetJzqyeljs = new BigDecimal(list.getJzqyeljs());
				BigDecimal jfs = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
				BigDecimal dfs = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
				BigDecimal bq = new BigDecimal("00.00");
				if (p.getKjkm().getKmfx() == 101400) {
					bq = listgetJzqyebqs.add(jfs).subtract(dfs);
					
					//bqlj = listgetJzqyeljs.add(dfs).subtract(jfs);

					
				} else {
					bq = listgetJzqyebqs.add(dfs).subtract(jfs);
					
					//bqlj = listgetJzqyeljs.add(jfs).subtract(dfs);
				}
				 BigDecimal lj = bq.add(listgetJzqyeljs);
				list.setJzqyebqs(bq + "");
				list.setJzqyeljs(lj + "");
				 
			}

		}

		kmyeb.saveKmyeb(list);
	}
	private void backJzpz(Pzmx p, Kjqj kjqj, Kmyeb listzh, Jzpz j, Kmyeb list,
			KmyebManager kmyeb) {
		BigDecimal jfzj = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
		BigDecimal dfzj = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
		BigDecimal cj = jfzj.subtract(dfzj);

		BigDecimal df = new BigDecimal(p.getDfje()==null?0d:p.getDfje());
		BigDecimal jf = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
		BigDecimal zj = jf.subtract(df);

		BigDecimal lye = new BigDecimal(list.getQmye());
		BigDecimal lbndse = new BigDecimal(list.getBnljdf());
		BigDecimal ldse = new BigDecimal(list.getDffse());
		BigDecimal ljss = new BigDecimal(list.getJffse());
		BigDecimal lbnjse = new BigDecimal(list.getBnljjf());
 
		 

		if (Kmfx.KMFX_JF == p.getKjkm().getKmfx()) {
			if (p.getJfje() !=null&&p.getJfje()!= 0d) {
				list.setQmye((lye.subtract(jfzj)).toString());
			} else {
				list.setQmye((lye.add(dfzj)) + "");
			}
		} else {
			if (p.getJfje() !=null&&p.getJfje()!= 0d) {
				list.setQmye((lye.add(jfzj)) + "");
			} else {
				list.setQmye((lye.subtract(dfzj)) + "");
			}

		}
		list.setDffse((ldse.subtract(dfzj)) + "");
		list.setJffse((ljss.subtract(jfzj)) + "");
		list.setBnljdf((lbndse.subtract(dfzj)) + "");
		list.setBnljjf((lbnjse.subtract(jfzj)) + "");

		boolean flg = false;
		Map map = new HashMap<String, String>();
		map.put("6001", "6001");
		map.put("6051", "6051");
		map.put("6101", "6101");
		map.put("6111", "6111");

		map.put("6301", "6301");
		map.put("6401", "6401");
		map.put("6402", "6402");
		map.put("6403", "6403");

		map.put("6601", "6601");
		map.put("6602", "6602");
		map.put("6603", "6603");
		map.put("6701", "6701");

		map.put("6711", "6711");
		map.put("6801", "6801");
		map.put("6901", "6901");
		if (map.containsValue(p.getKjkm().getKmbh().substring(0, 4))) {
			flg = true;
		}
		if (j.getJzzt() == null) {

			if (flg) {
				BigDecimal listgetJzqyebqs = new BigDecimal("00.00");
				BigDecimal listgetJzqyeljs = new BigDecimal("00.00");
				if (list.getJzqyebqs() != null)
					listgetJzqyebqs = new BigDecimal(list.getJzqyebqs());
				if (list.getJzqyeljs() != null)
					listgetJzqyeljs = new BigDecimal(list.getJzqyeljs());
				BigDecimal jfs = new BigDecimal(p.getJfje()==null?0d:p.getJfje());
				BigDecimal dfs = new BigDecimal(p.getDfje()==null?0d:p.getDfje());

				BigDecimal bq = new BigDecimal("00.00");
				BigDecimal bqlj = new BigDecimal("00.00");
				if (p.getKjkm().getKmfx() == 101400) {
					bq = listgetJzqyebqs.add(dfs).subtract(jfs);
					bqlj = listgetJzqyeljs.add(dfs).subtract(jfs);

				} else {
					bq = listgetJzqyebqs.add(jfs).subtract(dfs);
					bqlj = listgetJzqyeljs.add(jfs).subtract(dfs);
				}
				list.setJzqyebqs(bq + "");
				list.setJzqyeljs(bqlj + "");
			}

		}
		kmyeb.saveKmyeb(list);

	}
	@Override
	public String jzpzGetjzpzh(String pzzlz, Date pzrq)   {
		PzzhManager pzzhMgr = (PzzhManager) SpringContextHolder.getBean(Pzzh.class);
		pzzlz=pzzlz.split("-")[0];
		Kjqj kjqj1 =HuolongContextHelper.processKjqjByKjqj(pzrq);
		Filter filter = FilterFactory.getSimpleFilter("kjqj", kjqj1.getKjqj(), Filter.OPERATOR_GREATER_EQ) 
				.addCondition("pzzl", pzzlz, Filter.OPERATOR_EQ )
				.addCondition("yl1", HuolongContextHelper.getCompanyId(), Filter.OPERATOR_EQ);
		List<Pzzh> jzpzs = pzzhMgr.getObjects(filter);
		String op = null;
		java.text.DecimalFormat df = new java.text.DecimalFormat("0000");
		if (jzpzs != null && jzpzs.size() > 0){
			op = df.format(Integer.parseInt(jzpzs.get(0).getNumb()) + 1);
		}
		else {
			op = "0001";
		 }
		
		return op;
		
	
	}

	 

}
