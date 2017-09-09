package com.huolong.jcsz.service.impl;

import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.hi.SpringContextHolder;
import org.hi.base.organization.service.impl.HiOrgManagerImpl;
import org.hi.framework.dao.Filter;
import org.hi.framework.dao.impl.FilterFactory;
import org.hi.framework.paging.PageInfo;
import org.hi.framework.security.context.UserContextHelper;
import org.hi.framework.web.PageInfoUtil;

import com.huolong.cache.Cache;
import com.huolong.cache.HuolongContextHelper;
import com.huolong.cache.Kjqj;
import com.huolong.common.Common;
import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.service.CompanyManager;
import com.huolong.jzpz.action.JzpzPageInfo;
import com.huolong.jzpz.model.Jzpz;
import com.huolong.jzpz.model.Pzmx;
import com.huolong.jzpz.service.JzpzManager;
import com.huolong.kmyeb.action.KmyebPageInfo;
import com.huolong.kmyeb.model.Kmyeb;
import com.huolong.kmyeb.service.KmyebManager;
import com.huolong.xtsz.action.KjkmPageInfo;
import com.huolong.xtsz.model.Kjkm;
import com.huolong.xtsz.service.KjkmManager;

public class CompanyManagerImpl extends HiOrgManagerImpl implements CompanyManager{
    
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
    
    public void saveCompany(Company company){
    	if(company.getId()==null)
    	company.setOrgName(company.getGsmc());
    	saveObject(company);
    	//Cache.add(company.getId()+"", company);
    }

    public void removeCompanyById(Integer id){
    	removeObjectById(id);
    	
    }

    public Company getCompanyById(Integer id){
   		return (Company) getObjectById(id);
    }

    public List<Company> getCompanyList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }

    public void saveSecurityCompany(Company company){
    	saveObject(company);
    
    }

    public void removeSecurityCompanyById(Integer id){
    	removeObjectById(id);
    	
    }

    public Company getSecurityCompanyById(Integer id){
   		return (Company) getObjectById(id);
    }

    public List<Company> getSecurityCompanyList(PageInfo pageInfo){
    	return super.getList(pageInfo);
    }    
    //系统结账
	public String removextjz() throws Exception {
		String test = "1",pz="";
		boolean flg = true;
		
		KmyebManager kmyeb = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		Company company = HuolongContextHelper.getCompany();
		
		// 检查初始化是否平等
		if (company.getQysj().equals(company.getDqqj())) {
			flg = kmyeb.sfjscsh(company);
		}
		if (!flg)return Common.XT_SSPH_NO;
			 
			JzpzManager jzpzman = (JzpzManager) SpringContextHolder
					.getBean(Jzpz.class);
			KmyebManager Kmyebman = (KmyebManager) SpringContextHolder
					.getBean(Kmyeb.class);
			KjkmManager kjkmman = (KjkmManager) SpringContextHolder
					.getBean(Kjkm.class);
			Kjqj kjqj1 =HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

			Filter filter = FilterFactory.getSimpleFilter("pzrq", kjqj1.getKsrq(), Filter.OPERATOR_GREATER_EQ) 
					.addCondition("pzrq", kjqj1.getJsrq(),Filter.OPERATOR_LESS_EQ) 
					.addCondition("ztai", 200500, Filter.OPERATOR_NOT_EQ)
					.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ);
			
			List<Jzpz> jzpzs = jzpzman.getObjects(filter);
			// 检查凭证
			if (jzpzs.size() > 0)
				return Common.XT_DQPZ_YES;
			Jzpz jzpz;

			String pzb = jzpzman.jzpzGetjzpzh("记", kjqj1.getJsrq());
			String pzh = "记";
			String pzbh = pzh + "-" + pzb;
			int num = 0, jffs = 0, dffs = 0, strtemp = Integer.parseInt(pzb);
			java.text.DecimalFormat df = new java.text.DecimalFormat("0000");
			String[] jkjkmbh = { "6001", "6051", "6101", "6111", "6301" };
			String[] dkjkmbh = { "6401", "6402", "6403", "6601", "6602",
					"6603", "6701", "6711", "6801", "6901" };
			/*
			 * 先找到明细科目
			 */
			List<Kjkm> jkmsz = new ArrayList(), dkmsz = new ArrayList();
			List<Kmyeb> list = new ArrayList();
			for (int i = 0; i < jkjkmbh.length; i++) {
				list = Kmyebman.getKmyebBykmbh(jkjkmbh[i], kjqj1
						.getKjqj(), company.getId());
				if (list != null && list.size() > 0)
					for (int j = 0; j < list.size(); j++) {
						jkmsz.add(((Kmyeb) list.get(j)).getKmmclookup());
					}
			}
			for (int i = 0; i < dkjkmbh.length; i++) {
				list = Kmyebman.getKmyebBykmbh(dkjkmbh[i], kjqj1
						.getKjqj(), company.getId());

				if (list != null && list.size() > 0)
					for (int j = 0; j < list.size(); j++) {
						dkmsz.add(((Kmyeb) list.get(j)).getKmmclookup());
					}
			}// 本期没有涉及损益类科目！ 没有产生凭证！！,
			if (dkmsz.size() == 0 && jkmsz.size() == 0)
				return Common.XT_DQSY_YES;
			
			BigDecimal jfje = new BigDecimal("00.00");
			BigDecimal dfje = new BigDecimal("00.00");
			BigDecimal cjzs = new BigDecimal("00.00");
			Kjkm kjkm;
			List<Pzmx> pzs;
			pz=pzbh+",";
			Pzmx p;
			String zy;
			jzpz = new Jzpz();
			pzs = new ArrayList();
			jzpz.setZdr(UserContextHelper.getUser().getFullName());
			jzpz.setJzzt("1");
			jzpz.setPzbh(pzbh);
			jzpz.setFjs(0);
			jzpz.setZdrq(new Date(System.currentTimeMillis()));
			jzpz.setPzrq(kjqj1.getJsrq());
			jzpz.setZtai(200500);
			zy = ("结账本期损益");
			/*
			 * 借借方科目 贷本年利润 找到借方科目余额
			 */
			for (int i = 0; i < jkmsz.size(); i++) {
				kjkm = jkmsz.get(i);
				list.clear();
				list = Kmyebman.getKmyebBykmid(kjkm.getId() + "", kjqj1
						.getKjqj(), company.getId());
				if (list != null && list.size() > 0) {
					for (int j = 0; j < list.size(); j++) {
						if(null==list.get(j)||"0.0".equals(list.get(j).getQmye()))
							continue;
						BigDecimal qmye = new BigDecimal(list.get(j).getQmye());
						jfje = jfje.add(qmye);
						if (qmye.doubleValue()!=0d) {
							p = new Pzmx();
							p.setZhaiyao(zy);
							p.setKjkm(kjkm);
							p.setJfje((qmye).doubleValue());
							p.setDfje(0.00);
							pzs.add(p);
							jffs++;
						}
					}
				}
			}
			if (jfje.doubleValue()!=0d) {
				p = new Pzmx();
				p.setZhaiyao(zy);
				filter=FilterFactory.getSimpleFilter("kmmc", "本年利润",Filter.OPERATOR_EQ)
						.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
						;
				
				p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));
				p.setDfje(jfje.doubleValue());
				p.setJfje(0.00);
				pzs.add(p);
				strtemp++;
				jzpz.setPzmxs(pzs);
				//jzpzman.saveJzpz(jzpz);
				jzpzman.updateJzpz(jzpz);
			} else {
				if (jffs != 0) {
					strtemp++;
				}
			}
			if (strtemp != Integer.parseInt(pzb)) {
				pzbh = pzh + "-" + df.format(strtemp);
				pzb = strtemp + "";
				num++;
			}
			
			/*
			 * 借本年利润 贷贷方 科目 找到贷方科目余额
			 */
			pz+=pzbh+",";
			jzpz = new Jzpz();
			pzs = new ArrayList();
			jzpz.setZdr(UserContextHelper.getUser().getFullName());
			jzpz.setJzzt("1");
			jzpz.setFjs(0);
			jzpz.setZdrq(new Date(System.currentTimeMillis()));
			jzpz.setPzrq(kjqj1.getJsrq());
			jzpz.setZtai(200500);
			zy = ("结账本期损益");
			jzpz.setPzbh(pzbh);
			pzs.clear();
			for (int i = 0; i < dkmsz.size(); i++) {

				kjkm = dkmsz.get(i);
				list.clear();
				list = Kmyebman.getKmyebBykmid(kjkm.getId() + "", kjqj1
						.getKjqj(), company.getId());
				if (list != null && list.size() > 0) {
					for (int j = 0; j < list.size(); j++) {
						if(null==list.get(j)||"0.0".equals(list.get(j).getQmye()))
							continue;
						BigDecimal qmye = new BigDecimal(list.get(j).getQmye());
						dfje = dfje.add(qmye);
						if (qmye.doubleValue()!=0d) {
							p = new Pzmx();
							p.setZhaiyao(zy);
							p.setKjkm(kjkm);
							p.setDfje((qmye).doubleValue());
							p.setJfje(0.00);
							pzs.add(p);
							dffs++;
						}
					}
				}
			}
			if (dfje.doubleValue()!=0d) {
				p = new Pzmx();
				p.setZhaiyao(zy);
				filter=FilterFactory.getSimpleFilter("kmmc", "本年利润",Filter.OPERATOR_EQ)
						.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
						;
				
				p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));
				p.setJfje(dfje.doubleValue());
				p.setDfje(0.00);
				pzs.add(p);
				strtemp++;
				jzpz.setPzmxs(pzs);
				//jzpzman.saveJzpz(jzpz);
				jzpzman.updateJzpz(jzpz);
			} else {
				if (jffs != 0) {
					strtemp++;
				}
			}
			if (strtemp != Integer.parseInt(pzb)) {
				pzbh = pzh + "-" + df.format(strtemp);
				pzb = strtemp + "";
				num++;
			}
			
			/*
			 * 结平本年利润
			 */
			pz+=pzbh+",";
			jzpz = new Jzpz();
			pzs = new ArrayList();
			jzpz.setZdr(UserContextHelper.getUser().getFullName());
			jzpz.setJzzt("1");
			jzpz.setPzbh(pzbh);
			jzpz.setFjs(0);
			jzpz.setZdrq(new Date(System.currentTimeMillis()));
			jzpz.setPzrq(kjqj1.getJsrq());
			jzpz.setZtai(200500);
			zy = ("结平本年利润");
			pzs.clear();
			if (company.getDqqj().split("-")[1].equals("12")) {
				cjzs = dfje.subtract(jfje);
				filter=FilterFactory.getSimpleFilter("kmmc", "本年利润",Filter.OPERATOR_EQ)
						.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
						;
				list.clear();
				list = Kmyebman.getKmyebBykmid(((Kjkm)kjkmman.getObjects(filter).get(0)).getId()
						+ "", kjqj1.getKjqj(), company.getId());
				if (list != null && list.size() > 0) {
					for (int j = 0; j < list.size(); j++) {
						if(null==list.get(j)||"0.0".equals(list.get(j).getQmye()))
							continue;
						BigDecimal qmye = new BigDecimal(list.get(j).getQmye());
						cjzs = cjzs.add(qmye);
					}
					if (cjzs.doubleValue() > 0) {

						// 本年利润科目的id
						p = new Pzmx();
						p.setZhaiyao(zy);
						filter=FilterFactory.getSimpleFilter("kmmc", "本年利润",Filter.OPERATOR_EQ)
								.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
								;
						p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));
						p.setJfje(cjzs.doubleValue());
						p.setDfje(0.00);
						p.setZhaiyao(zy);
						pzs.add(p);

						p = new Pzmx();
						filter=FilterFactory.getSimpleFilter("kmmc", "未分配利润",Filter.OPERATOR_EQ)
								.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
								;
						p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));
						p.setZhaiyao(zy);
						p.setDfje(cjzs.doubleValue());
						p.setJfje(0.00);

						pzs.add(p);
						num++;
					} else if (cjzs.doubleValue() < 0) {

						// 本年利润科目的id
						p = new Pzmx();
						filter=FilterFactory.getSimpleFilter("kmmc", "本年利润",Filter.OPERATOR_EQ)
								.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
								;
						p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));
						p.setDfje(cjzs.abs().doubleValue());
						p.setJfje(0.00);
						p.setZhaiyao(zy);
						pzs.add(p);

						p = new Pzmx();
						filter=FilterFactory.getSimpleFilter("kmmc", "未分配利润",Filter.OPERATOR_EQ)
								.addCondition("orgs.id", company.getId(),Filter.OPERATOR_EQ)
								;
						p.setKjkm((Kjkm)kjkmman.getObjects(filter).get(0));

						p.setJfje(cjzs.abs().doubleValue());
						p.setDfje(0.00);
						p.setZhaiyao(zy);
						pzs.add(p);
					}
					jzpz.setPzmxs(pzs);
					//jzpzman.saveJzpz(jzpz);
					jzpzman.updateJzpz(jzpz);
				}
			}
			company.setCshzt("8");
			CompanyManager company1 = (CompanyManager) SpringContextHolder
					.getBean(Company.class);
			company1.saveCompany(company);
		return pz;

	}

	//系统反结账
	public String removextfjz() throws Exception {
		String kjqj = null;
		boolean flg = true;
		CompanyManager company1 = (CompanyManager) SpringContextHolder
				.getBean(Company.class);
		KmyebManager kmyeb = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		Company company = HuolongContextHelper.getCompany();
		if (company.getQysj().equals(company.getDqqj()))
			flg = kmyeb.sfjscsh(company);
		if (!flg) return Common.XT_SSPH_NO;
		if (company.getDqqj().equals(company.getQysj()))return Common.XT_QYQJ_YES;
			
			String[] qj = company.getDqqj().split("-");

			if ("01".equals(qj[1])) {
				kjqj = (Integer.parseInt(qj[0]) - 1) + "-" + "12";
			} else {
				String num = (Integer.parseInt(qj[1]) - 1) + "";
				if (num.length() == 1)
					num = "0" + num;
				kjqj = qj[0] + "-" + num;
			}
			Kjqj kjqj1 = HuolongContextHelper.processKjqjByKjqj( kjqj);
			Kjqj kjqj2 = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			JzpzManager jzpzman = (JzpzManager) SpringContextHolder
					.getBean(Jzpz.class);
			Filter filter = FilterFactory.getSimpleFilter("pzrq", kjqj1.getKsrq(), Filter.OPERATOR_GREATER_EQ) 
				 .addCondition("pzrq", kjqj1.getJsrq(), Filter.OPERATOR_LESS_EQ)
				 .addCondition("jzzt", 1, Filter.OPERATOR_EQ)	
				  .addCondition("orgs.id", company.getId(), Filter.OPERATOR_EQ)	
					;
			List<Jzpz> jzpz = jzpzman.getObjects(filter);
			KmyebManager Kmyebman = (KmyebManager) SpringContextHolder
					.getBean(Kmyeb.class);
			if (jzpz != null && jzpz.size() > 0)
				for (Jzpz j : jzpz) {
					for (Pzmx p : j.getPzmxs()) {

						// kjqj1 kmid fzhs bz
						/*
						 * 先处理本期的借方贷方发生数 期末余额。
						 */
						filter=FilterFactory.getSimpleFilter("kmmclookup.id", p.getKjkm().getId(), Filter.OPERATOR_EQ)
                         .addCondition("kjqj", kjqj1.getKjqj(), Filter.OPERATOR_EQ)
                         .addCondition("orgs.id", company.getId(), Filter.OPERATOR_EQ);
						List<Kmyeb> listye = Kmyebman.getObjects(filter);
						Kmyeb list = listye.get(0);

						BigDecimal df = new BigDecimal(p.getDfje());
						BigDecimal jf = new BigDecimal(p.getJfje());
						BigDecimal zj = jf.subtract(df);

						BigDecimal lye = new BigDecimal(list.getQmye());
						// BigDecimal sqlye = new BigDecimal(sqlist.getQmye());
						BigDecimal lbndse = new BigDecimal(list.getBnljdf());
						BigDecimal ldse = new BigDecimal(list.getDffse());
						BigDecimal ljss = new BigDecimal(list.getJffse());
						BigDecimal lbnjse = new BigDecimal(list.getBnljjf());
						// int wbjf=(int)wbjfs;
						double zhjf = (p.getJfje());
						// zhjf=(int)jfs;
						 
						if (p.getKjkm().getKmfx() == 101400) {
							if (zhjf != 0.0) {
								list.setQmye((lye.subtract(jf)) + "");
								// sqlistzh.setQmye((sqlzye.subtract(jf)) + "");
							} else {
								list.setQmye((lye.add(df)) + "");
								// sqlistzh.setQmye((sqlzye.add(df)) + "");
							}
						} else {
							if (zhjf != 0.0) {
								list.setQmye((lye.add(jf)) + "");
								// sqlistzh.setQmye((sqlzye.add(jf)) + "");
							} else {
								list.setQmye((lye.subtract(df)) + "");
								// sqlistzh.setQmye((sqlzye.subtract(df)) + "");
							}
						}
						list.setDffse((ldse.subtract(df)) + "");
						list.setJffse((ljss.subtract(jf)) + "");
						Kmyebman.saveKmyeb(list);

						 

					}/*
					 * 删除结账凭证
					 */
					jzpzman.removeJzpzById(j.getId());
				}
			//company.setCshzt("9");
			company.setDqqj(kjqj);
			company1.saveCompany(company);

		// "反结账到"+kjqj
		return Common.XT_CZCG_YES;

	}

	/**
	 *结账到下期
	 */
	public String removextyebsj() throws Exception {
		CompanyManager company1 = (CompanyManager) SpringContextHolder
				.getBean(Company.class);
		KmyebManager kmyeb = (KmyebManager) SpringContextHolder
				.getBean(Kmyeb.class);
		Company company = company1.getCompanyById(UserContextHelper.getOrgId());
		if(!company.getCshzt().equals("8"))return Common.XT_SYJZ_YES;
		String kjqj = null;
		String[] qj = company.getDqqj().split("-");
		if ("12".equals(qj[1])) {
			kjqj = (Integer.parseInt(qj[0]) + 1) + "-" + "01";
		} else {
			java.text.DecimalFormat jdf = new java.text.DecimalFormat(
					"00");
			kjqj = qj[0] + "-"
					+ jdf.format(Integer.parseInt(qj[1]) + 1);
		}
		company.setCshzt("9");
		company.setDqqj(kjqj);
		company1.saveCompany(company);
		
		String dqj = company.getDqqj();
		int num1 = Integer.parseInt(dqj.split("-")[1].toString());
		String qj2 = (num1 - 1) + "";
		if (qj2.length() == 1) {
			if (("0").equals(qj2)) {
				qj2 = Integer.parseInt(dqj.split("-")[0].toString()) - 1
						+ "-12";
			} else {
				qj2 = dqj.split("-")[0] + "-0" + qj2;
			}
		} else {
			qj2 = dqj.split("-")[0] + "-" + qj2;
		}
		List<Kmyeb> listqd = kmyeb.getKmyebListBYkjqj(dqj, company.getId());
		List<Kmyeb> list = kmyeb.getKmyebListBYkjqj(qj2, company.getId());

		if (listqd != null && listqd.size() > 0) {

			for (Kmyeb sq : list) {
				boolean flg1=false ,flg= true;

				for (Kmyeb bq : listqd) {
					if ((sq.getKmmclookup().getId()).equals(bq.getKmmclookup()
							.getId())
							&& (sq.getBzname()).equals(bq.getBzname())) {
						flg = false;

						if (!sq.getQmye().equals(bq.getQcye())||sq.getJzqyeljs()!=null) {
							BigDecimal sqqm = new BigDecimal(sq.getQmye());
							BigDecimal bqdf = new BigDecimal(sq.getBnljdf());
							BigDecimal bqjf = new BigDecimal(sq.getBnljjf());
							BigDecimal jzqlj = new BigDecimal("000000.00");
							if(sq.getJzqyeljs()!=null){
							 jzqlj = new BigDecimal(sq.getJzqyeljs());
							 flg1=true;
							}
							// BigDecimal qc = new BigDecimal(bq.getQcye());
							// BigDecimal bqqm = new
							// BigDecimal(bq.getQmye());
							BigDecimal df = null;
							BigDecimal jf = null;
							BigDecimal tbqm ,jzqljs=new BigDecimal("000000.00"),bqqm= null;
							df = new BigDecimal(bq.getDffse());
							jf = new BigDecimal(bq.getJffse());
							// BigDecimal cj = sqqm.subtract(qc);
							if (bq.getKmmclookup().getKmfx() == 101400){
								tbqm = sqqm.add(jf).subtract(df);
								if(flg1)jzqljs=jzqlj.add(jf).subtract(df);
							}
							else {
								tbqm = sqqm.add(df).subtract(jf);
								if(flg1)jzqljs=jzqlj.add(df).subtract(jf);
							}
							bq.setQcye(sqqm + "");
							bq.setQmye(tbqm + "");
							
							bq.setBnljdf(bqdf.add(df) + "");
							bq.setBnljjf(bqjf.add(jf) + "");
							bq.setQcbnjf(sq.getQcbnjf());
							bq.setQcbndf(sq.getQcbndf());
							if(flg1)bq.setJzqyeljs(jzqljs+"");
							bq.setQcbnjfbwb(sq.getQcbnjfbwb());
							bq.setQcbndfbwb(sq.getQcbndfbwb());
							bq.setNcye(sq.getNcye());
							bq.setNcyebwb(sq.getNcyebwb());
							bq.setCshbwb(sq.getCshbwb());//
							kmyeb.saveKmyeb(bq);
						}
					
					}
				}
				if (flg) {

					Kmyeb kmye = new Kmyeb();
					kmye.setBnljdf(sq.getBnljdf());
					kmye.setBnljjf(sq.getBnljjf());
					kmye.setBnljjfbwb(sq.getBnljjfbwb());
					kmye.setBnljdfbwb(sq.getBnljdfbwb());
					// kmye.setGs(gs);
					kmye.setQcye(sq.getQmye());
					kmye.setQmye(sq.getQmye());
					kmye.setQcyefx(sq.getQmyefx());
					kmye.setDffse(sq.getDffse());
					kmye.setJffse(sq.getJffse());
					kmye.setQmyefx(sq.getQmyefx());
					kmye.setKmmclookup(sq.getKmmclookup());
					kmye.setKjqj(dqj);
					kmye.setQcbnjf(sq.getQcbnjf());
					kmye.setQcbndf(sq.getQcbndf());
					kmye.setNcye(sq.getNcye());
					kmye.setJzqyeljs(sq.getJzqyeljs());
					kmyeb.saveKmyeb(kmye);

				} 
			}
			return Common.XT_JZCG_YES;

		} else {

			for (Kmyeb k : list) {
				Kmyeb kmye = new Kmyeb();
				kmye.setBnljdf(k.getBnljdf());
				kmye.setBnljjf(k.getBnljjf());
				kmye.setNcsl(k.getNcsl());
				kmye.setQcye(k.getQmye());
				kmye.setQmye(k.getQmye());
				kmye.setQcyefx(k.getQmyefx());
				kmye.setDffse("0.0");
				kmye.setJffse("0.0");
				kmye.setQmyefx(k.getQmyefx());
				kmye.setKmmclookup(k.getKmmclookup());
				kmye.setKjqj(dqj);
				kmye.setQcbnjf(k.getQcbnjf());
				kmye.setQcbndf(k.getQcbndf());
				kmye.setNcye(k.getNcye());
				kmye.setJzqyeljs(k.getJzqyeljs());
				kmyeb.saveKmyeb(kmye);
			}
			return Common.XT_JZCG_YES;

		}
	
	}

}
