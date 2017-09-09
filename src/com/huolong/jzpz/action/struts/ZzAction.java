package com.huolong.jzpz.action.struts;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.hi.SpringContextHolder;
import org.hi.common.util.JSONObject;
import org.hi.framework.security.context.UserContextHelper;
import org.hi.framework.web.BusinessException;
import org.hi.framework.web.struts.BaseAction;

import com.huolong.cache.HuolongContextHelper;
import com.huolong.cache.Kjqj;
import com.huolong.common.Common;
import com.huolong.common.Condition;
import com.huolong.jcsz.model.Company;
import com.huolong.jcsz.model.Yhsz;
import com.huolong.jcsz.service.CompanyManager;
import com.huolong.jcsz.service.YhszManager;

@SuppressWarnings("all")    public class ZzAction extends BaseAction {
	private String json;
	private Condition condition;
	public String getJson() {
		return json;
	}

	public void setJson(String json) {
		this.json = json;
	}

	public Condition getCondition() {
		return condition;
	}

	public void setCondition(Condition condition) {
		this.condition = condition;
	}

	/**
	 *查看总账
	 */
	public String viewZz() throws Exception {
		if (condition != null) {
			if (condition.getCondition5() != null
					&& condition.getCondition5().length() > 0) {
				condition.setCondition9(condition.getCondition5().substring(0,
						4));
				condition.setCondition10(condition.getCondition5().substring(0,
						4)
						+ "999999");
			}

		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			Company company =HuolongContextHelper.getCompany();
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			condition.setCondition3("1");
			condition.setCondition4("4");
			condition.setCondition9("1001");
			condition.setCondition10("99999999");
			condition.setCondition7("101500");
			condition.setCondition8("101500");
			condition.setCondition11("人民币");
		}

		return returnCommand();
	}

	/**
	 *查看科目余额表
	 */
	public String viewKmyeb() throws Exception {

		if (condition != null) {
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			Company company =HuolongContextHelper.getCompany();
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			condition.setCondition3("1");
			condition.setCondition4("4");
			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看明细账
	 */
	public String viewMxz() throws Exception {

		if (condition != null) {
			if (condition.getCondition5() != null
					&& condition.getCondition5().length() > 0) {
				condition.setCondition9(condition.getCondition5().substring(0,
						4));
				condition.setCondition10(condition.getCondition5().substring(0,
						4)
						+ "999999");

			}
			 
			 
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( condition
					.getCondition1().trim());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition2().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			Company company =HuolongContextHelper.getCompany();
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());

			condition.setCondition3("1");
			condition.setCondition4("4");
			condition.setCondition9("1001");
			condition.setCondition10("99999999");
			condition.setCondition7("101500");
			condition.setCondition8("101500");
			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看银行存款日记账
	 */
	public String viewYhckrjz() throws Exception {
		Company company =HuolongContextHelper.getCompany();
		if (condition != null) {
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( condition
					.getCondition1().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());
			condition.setCondition1(company.getDqqj());
			/*YhszManager yhszMan = (YhszManager) SpringContextHolder
					.getBean(Yhsz.class);
			List<Yhsz>yhszs=yhszMan.getObjects();
			if(yhszs==null||yhszs.size()==0)throw new BusinessException(Common.XT_JCSZ_YHSZ_MOREONEBANK);
			Yhsz yhsz = yhszs.get(0);*/
			condition.setCondition2("民生银行");
			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看现金日记账
	 */
	public String viewXjrjz() throws Exception {
		Company company =HuolongContextHelper.getCompany();
		if (condition != null) {
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( condition
					.getCondition1().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());
			condition.setCondition1(company.getDqqj());
			condition.setCondition11("人民币");
		}

		return returnCommand();

	}
	/*
	 * 得到时间
	 */
		public String getDateByQj() throws Exception {
			Company company =HuolongContextHelper.getCompany();

			if (condition != null) {
				Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( condition
						.getCondition1().trim());
				Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj( condition
						.getCondition2().trim());
				condition.setKsrq(kskjqj.getKsrq());
				condition.setJsrq(jskjqj.getJsrq());
				condition.setCondition1(kskjqj.getKjqj());
				condition.setCondition2(jskjqj.getKjqj());
			}
			else condition=new Condition();
			HttpServletRequest arg2 = ServletActionContext.getRequest();
			HttpServletResponse arg3 = ServletActionContext.getResponse();
			String op = condition.getKsrq()+","+
			condition.getJsrq()+","+
			condition.getCondition1()+","+
			condition.getCondition2();
			arg3.setCharacterEncoding("GBK");
			PrintWriter out = null;
			try {
				out = arg3.getWriter();
			} catch (IOException e) {
			}
			out.println(op);
			out.close();
			return null;
		}

	/**
	 *查看凭证汇总表
	 */
	public String viewPzhzb() throws Exception {
		Company company =HuolongContextHelper.getCompany();
		if (condition != null) {
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( condition
					.getCondition1().trim());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj( condition
					.getCondition2().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());
			condition.setCondition1(kskjqj.getKjqj());
			condition.setCondition2(jskjqj.getKjqj());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj( company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());

			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看存款余额调节表
	 */
	public String viewCkyetjb() throws Exception {
		Company company =HuolongContextHelper.getCompany();
		if (condition != null) {
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition1().trim());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition2().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
			
				
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());

			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看损益结账
	 */
	public String viewSyjz() throws Exception {

		condition = new Condition();
		condition.setGsid(UserContextHelper.getOrgId() + "");
		
			
		Company company =HuolongContextHelper.getCompany();
		condition.setCondition1(company.getDqqj());
		return returnCommand();

	}

	/**
	 *查看期末调汇
	 */
	public String viewQmth() throws Exception {

		if (condition != null) {
			
				
			
				
				Company company =HuolongContextHelper.getCompany();
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition1().trim());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition2().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());

			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看资产负债表
	 */
	public String viewZzfzb() throws Exception {

		if (condition != null) {
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getDqqj());

		}

		return returnCommand();

	}

	/**
	 *查看利润表
	 */
	public String viewLrb() throws Exception {

		if (condition != null) {
			
				
			
				
				Company company =HuolongContextHelper.getCompany();
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition1().trim());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition2().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getDqqj());
			condition.setCondition2(company.getDqqj());
			
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(jskjqj.getJsrq());

			condition.setCondition11("人民币");
		}

		return returnCommand();

	}

	/**
	 *查看现金流量表
	 */
	public String viewXjllb() throws Exception {

		if (condition != null) {
			
				
			
				
				Company company =HuolongContextHelper.getCompany();
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(condition
					.getCondition1().trim());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getDqqj());
			
				
			Kjqj kskjqj = HuolongContextHelper.processKjqjByKjqj(company.getDqqj());
			Kjqj jskjqj = HuolongContextHelper.processKjqjByKjqj(company.getQysj());
			condition.setKsrq(kskjqj.getKsrq());
			condition.setJsrq(kskjqj.getJsrq());

			condition.setCondition11(jskjqj.getKsrq() + "");
		}

		return returnCommand();

	}

	/**
	 *查看现金流量表辅助
	 */
	public String viewXjllbfz() throws Exception {

		if (condition != null) {
		}

		else {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getDqqj());
		}

		return returnCommand();

	}

	/**
	 *结账到下期
	 */
	public String viewjz() throws Exception {
		
		CompanyManager 	company1=(CompanyManager)SpringContextHolder.getBean(Company.class);
		String flg = company1.removextyebsj();
		if(flg.equals(Common.XT_SYJZ_YES))
			return returnCommand(flg);
		else 
		{   	Company company =HuolongContextHelper.getCompany(); 
			JSONObject jsonobject=new JSONObject("message","结账到下期成功");
			jsonobject.addJSONObject("qj", company.getDqqj());
			jsonobject.addJSONObject("statusCode", 200);
			json=jsonobject.toString();
			return JSON;
		}
	}

	/**
	 *结账到上期
	 */
	public String viewfjz() throws Exception {
		
		CompanyManager 	company1=(CompanyManager)SpringContextHolder.getBean(Company.class);
		String flg = company1.removextfjz();
		if(flg.equals(Common.XT_SSPH_NO)||flg.equals(Common.XT_QYQJ_YES))
			return returnCommand(flg);
		else 
		{   	Company company =HuolongContextHelper.getCompany(); 
			JSONObject jsonobject=new JSONObject("message","结账到上期成功");
			jsonobject.addJSONObject("qj", company.getDqqj());
			jsonobject.addJSONObject("statusCode", 200);
			json=jsonobject.toString();
			return JSON;
		}
	}

	/**
	 *生成损益凭证
	 */
	public String viewscsypz() throws Exception {
		
		CompanyManager 	company1=(CompanyManager)SpringContextHolder.getBean(Company.class);
		String flg = company1.removextjz();
		 if(flg.equals(Common.XT_SSPH_NO)||flg.equals(Common.XT_DQPZ_YES))
			return returnCommand(flg);
		else  
		{   	
			Company company =HuolongContextHelper.getCompany(); 
			JSONObject jsonobject=new JSONObject("message","生成损益凭证成功");
			jsonobject.addJSONObject("qj", company.getDqqj());
			jsonobject.addJSONObject("statusCode", 200);
			json=jsonobject.toString();
			return JSON;
		}
	}
	/**
	 *查看损益平衡
	 */
	public String viewSsph() throws Exception {
			condition = new Condition();
			condition.setGsid(UserContextHelper.getOrgId() + "");
			
				
				Company company =HuolongContextHelper.getCompany();
				
			condition.setCondition1(company.getQysj());
			condition.setCondition2(company.getQysj());
			condition.setCondition3("1");
			condition.setCondition4("1");
			condition.setCondition11("综合币种");

		return returnCommand();

	}
}
