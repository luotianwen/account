package com.huolong.common;

@SuppressWarnings("all")    public class Common {
	public static String beginScan="beginScan";
	public static String XT_daily_SRZCBT="�������֧��������һ��";
	public static String XT_JZPZ_PZJDWK="���������ͬʱΪ��";
	public static String XT_JZPZ_PZJDBP="�����ƽ";
	public static String XT_JZPZ_PZJDWB="��ҽ�����һ��";
	public static String XT_JZPZ_PZSL="�������۱���";
	public static String XT_JZPZ_PZFZHSNR="�����������ݱ���";
	public static String YhdzdMessage="OK";
	public static String YhdzdSave="�������ж��˵�����";
	public static String YhdzdError="����ƾ֤����";
	public static String YhdzdKmmx="�ո������Ͷ�Ӧ��Ŀ����ϸ ������";
	public static String YhdzdDfdw="�Է���λ���Ʊ���";
	public static String YhdzdDelete="������ƾ֤!����ɾ��ƾ֤";
	public static String YhdzdJzzt="1001";//���ݼ��� ���ж��˵�
	public static String PayableJzzt="1002";//Ӧ��
	public static String ReceivableJzzt="1003";//Ӧ��
	public static String RecoveryJzzt="1007";//�ջ�Ƿ��
	public static String RepaymentJzzt="1008";//Ӧ��
	public static String BaoXiaoJzzt="1009";//����
	public static String XjlszJzzt="1004";//���ݼ��� �ֽ���ˮ
	public static String CashJzzt="1005";//�ֽ��ռ����ֽ� 
	public static String BankJzzt="1006";//�����ռ������� 
	public static String singlePaymentAccount="�����˻�����һ��";
	public static String expensesCostCategories="�������ݱ���";
	public static String collectionAccount="�տ��˻�����һ��";
	public static String collectionCategories="����Ӧ�����ݱ���";
	public static String moduleContorl="modulecontorl.action?module.id=";
	public static String ersDetailReportContorl="�Ƿ�����";
	public static String XT_SSPH_NO="���㲻ƽ��!����δ�ɹ�";//����ƽ��
	public static String XT_QYQJ_YES="�Ѿ�������ʱ�䣡�����ٷ�����";//�����ڼ�
	public static String XT_CZCG_YES="�����ɹ�";//�����ɹ�
	public static String XT_SYJZ_YES="�Ƚ�ת����ƾ֤";//�Ƚ�ת����ƾ֤
	public static String XT_JZCG_YES="���˳ɹ�";//���˳ɹ�
	public static String XT_DQPZ_YES="������δͨ����˵�ƾ֤!";//
	public static String XT_DQSY_YES="����û���漰�������Ŀ�� û�в���ƾ֤!";
	public static String XT_RJZ_SRBT="�������֧��������һ��";
	public static String XT_JCSZ_YHSZ_JBHONLY="������ֻ������һ��";
	public static String XT_JCSZ_YHSZ_MOREONEBANK="��������һ������";
	public static String XT_OUTOFFRange="����2000000000";
	public static String SYSTEMNOTEQUAL="���ݲ�ƽ";
	public static String XT_SGDZ_MOREONEBANK="����ѡ��һ�������ռ���";
	public static String XT_SGDZ_MOREONEYHDZD="����ѡ��һ�����ж��˵�";
	public static String XT_SGDZ_NOTEQUAil="����";
	public static String XT_SGDZ_AFTERDZ="���ȶ���";
	public static String XT_YSYF_MOREONERECEIVABLES="����ѡ��һ��Ӧ���˿";
	public static String XT_YSYF_MOREONEREPAYMENT="����ѡ��һ��Ӧ���˿";
	public static String XT_YSYF_SHK="�ջ�Ƿ��";
	/**
	 * ����������һ���ַ���
	 * @param name ����
	 * @param money Ǯ
	 * @return  �ַ���
	 */
	public static  String xtysyfshk(String name,double money){
		String _return="�ջ�"+name+"Ƿ��"+money;
		return _return;
	}
}
