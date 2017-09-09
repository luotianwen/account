package com.huolong.common;

@SuppressWarnings("all")    public class Common {
	public static String beginScan="beginScan";
	public static String XT_daily_SRZCBT="收入金额或支出金额必填一项";
	public static String XT_JZPZ_PZJDWK="借贷方不能同时为空";
	public static String XT_JZPZ_PZJDBP="借贷不平";
	public static String XT_JZPZ_PZJDWB="外币金额必填一项";
	public static String XT_JZPZ_PZSL="数量单价必填";
	public static String XT_JZPZ_PZFZHSNR="辅助核算内容必填";
	public static String YhdzdMessage="OK";
	public static String YhdzdSave="保存银行对账单出错";
	public static String YhdzdError="生成凭证出错";
	public static String YhdzdKmmx="收付款类型对应科目非明细 请设置";
	public static String YhdzdDfdw="对方单位名称必填";
	public static String YhdzdDelete="已生成凭证!请先删除凭证";
	public static String YhdzdJzzt="1001";//敏捷记账 银行对账单
	public static String PayableJzzt="1002";//应付
	public static String ReceivableJzzt="1003";//应收
	public static String RecoveryJzzt="1007";//收回欠款
	public static String RepaymentJzzt="1008";//应付
	public static String BaoXiaoJzzt="1009";//报销
	public static String XjlszJzzt="1004";//敏捷记账 现金流水
	public static String CashJzzt="1005";//现金日记账现金 
	public static String BankJzzt="1006";//银行日记账银行 
	public static String singlePaymentAccount="付款账户必填一个";
	public static String expensesCostCategories="费用内容必填";
	public static String collectionAccount="收款账户必填一个";
	public static String collectionCategories="其他应收内容必填";
	public static String moduleContorl="modulecontorl.action?module.id=";
	public static String ersDetailReportContorl="非法访问";
	public static String XT_SSPH_NO="试算不平衡!结账未成功";//试算平衡
	public static String XT_QYQJ_YES="已经是启用时间！不能再反结账";//启用期间
	public static String XT_CZCG_YES="操作成功";//操作成功
	public static String XT_SYJZ_YES="先结转损益凭证";//先结转损益凭证
	public static String XT_JZCG_YES="结账成功";//结账成功
	public static String XT_DQPZ_YES="当期有未通过审核的凭证!";//
	public static String XT_DQSY_YES="本期没有涉及损益类科目！ 没有产生凭证!";
	public static String XT_RJZ_SRBT="收入金额或支出金额必填一项";
	public static String XT_JCSZ_YHSZ_JBHONLY="基本户只能设置一个";
	public static String XT_JCSZ_YHSZ_MOREONEBANK="最少设置一个银行";
	public static String XT_OUTOFFRange="超出2000000000";
	public static String SYSTEMNOTEQUAL="数据不平";
	public static String XT_SGDZ_MOREONEBANK="最少选择一个银行日记账";
	public static String XT_SGDZ_MOREONEYHDZD="最少选择一个银行对账单";
	public static String XT_SGDZ_NOTEQUAil="金额不等";
	public static String XT_SGDZ_AFTERDZ="请先对账";
	public static String XT_YSYF_MOREONERECEIVABLES="最少选择一个应收账款单";
	public static String XT_YSYF_MOREONEREPAYMENT="最少选择一个应付账款单";
	public static String XT_YSYF_SHK="收回欠款";
	/**
	 * 创建并返回一个字符串
	 * @param name 姓名
	 * @param money 钱
	 * @return  字符串
	 */
	public static  String xtysyfshk(String name,double money){
		String _return="收回"+name+"欠款"+money;
		return _return;
	}
}
