<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="企业信息"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="公司名称" entity="Company"/>：</dt><dd>${company.gsmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="税务登记号" entity="Company"/>：</dt><dd>${company.swdjh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="计算机代码" entity="Company"/>：</dt><dd>${company.jsjdm}</dd>
		</dl>
		<dl>
			<dt><hi:text key="增值税类型" entity="Company"/>：</dt><dd><hi:select emu="zzslx" name="company.zzslx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="营业执照注册号" entity="Company"/>：</dt><dd>${company.yyzhbh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="组织机构代码" entity="Company"/>：</dt><dd>${company.zzjgdm}</dd>
		</dl>
		<dl>
			<dt><hi:text key="企业类型" entity="Company"/>：</dt><dd><hi:select emu="gslz" name="company.zclx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="注册资本" entity="Company"/>：</dt><dd>${company.zczj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="所属行业" entity="Company"/>：</dt><dd>${company.sshy}</dd>
		</dl>
		<dl>
			<dt><hi:text key="法人代表" entity="Company"/>：</dt><dd>${company.frdb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Company"/>：</dt><dd>${company.lxdh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="传真" entity="Company"/>：</dt><dd>${company.lxcz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="电子邮箱" entity="Company"/>：</dt><dd>${company.dzyx}</dd>
		</dl>
		<dl>
			<dt><hi:text key="常用联系人" entity="Company"/>：</dt><dd>${company.lxr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电话" entity="Company"/>：</dt><dd>${company.lxrdh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电子邮箱" entity="Company"/>：</dt><dd>${company.lxrdzyx}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人传真" entity="Company"/>：</dt><dd>${company.lxrcz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="注册地址" entity="Company"/>：</dt><dd>${company.zcdz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="经营地址" entity="Company"/>：</dt><dd>${company.jydz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="通讯地址" entity="Company"/>：</dt><dd>${company.txdz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="邮政编码" entity="Company"/>：</dt><dd>${company.yzbm}</dd>
		</dl>
		<dl>
			<dt><hi:text key="公司代码" entity="Company"/>：</dt><dd>${company.gsdm}</dd>
		</dl>
		<dl>
			<dt><hi:text key="系统启用时间" entity="Company"/>：</dt><dd>${company.qysj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Company"/>：</dt><dd>${company.orgName}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门编号" entity="Company"/>：</dt><dd>${company.orgNum}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门经理" entity="Company"/>：</dt><dd>${company.manager.fullName}</dd>
		</dl>
		<dl>
			<dt><hi:text key="上级部门" entity="Company"/>：</dt><dd>${company.parentOrg.orgName}</dd>
		</dl>
		<dl>
			<dt><hi:text key="地址" entity="Company"/>：</dt><dd>${company.address}</dd>
		</dl>
		<dl>
			<dt><hi:text key="描述" entity="Company"/>：</dt><dd>${company.description}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
