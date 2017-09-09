<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="企业信息"/></h2>
<form action="companySave.action?navTabId=companyList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="公司名称" entity="Company"/>：</dt><dd><input type="text" name="company.gsmc" class="textInput required" value="${company.gsmc}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="税务登记号" entity="Company"/>：</dt><dd><input type="text" name="company.swdjh" class="textInput" value="${company.swdjh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="计算机代码" entity="Company"/>：</dt><dd><input type="text" name="company.jsjdm" class="textInput integer" value="${company.jsjdm}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="增值税类型" entity="Company"/>：</dt><dd><hi:select emu="zzslx" name="company.zzslx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="营业执照注册号" entity="Company"/>：</dt><dd><input type="text" name="company.yyzhbh" class="textInput integer" value="${company.yyzhbh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="组织机构代码" entity="Company"/>：</dt><dd><input type="text" name="company.zzjgdm" class="textInput" value="${company.zzjgdm}" /></dd>
		</dl>
		<!--<dl>
			<dt><hi:text key="企业类型" entity="Company"/>：</dt><dd><hi:select emu="gslz" name="company.zclx"/></dd>			
		</dl>
		--><dl>
			<dt><hi:text key="注册资本" entity="Company"/>：</dt><dd><input type="text" name="company.zczj" class="textInput" value="${company.zczj}" /></dd>
		</dl>
		<!--<dl>
			<dt><hi:text key="所属行业" entity="Company"/>：</dt><dd><input type="text" name="company.sshy" class="textInput" value="${company.sshy}" /></dd>
		</dl>
		--><dl>
			<dt><hi:text key="法人代表" entity="Company"/>：</dt><dd><input type="text" name="company.frdb" class="textInput" value="${company.frdb}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Company"/>：</dt><dd><input type="text" name="company.lxdh" class="textInput phone" value="${company.lxdh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="传真" entity="Company"/>：</dt><dd><input type="text" name="company.lxcz" class="textInput phone" value="${company.lxcz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="电子邮箱" entity="Company"/>：</dt><dd><input type="text" name="company.dzyx" class="textInput email" value="${company.dzyx}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="常用联系人" entity="Company"/>：</dt><dd><input type="text" name="company.lxr" class="textInput" value="${company.lxr}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电话" entity="Company"/>：</dt><dd><input type="text" name="company.lxrdh" class="textInput phone" value="${company.lxrdh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电子邮箱" entity="Company"/>：</dt><dd><input type="text" name="company.lxrdzyx" class="textInput email" value="${company.lxrdzyx}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人传真" entity="Company"/>：</dt><dd><input type="text" name="company.lxrcz" class="textInput phone" value="${company.lxrcz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="注册地址" entity="Company"/>：</dt><dd><input type="text" name="company.zcdz" class="textInput" value="${company.zcdz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="经营地址" entity="Company"/>：</dt><dd><input type="text" name="company.jydz" class="textInput" value="${company.jydz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="通讯地址" entity="Company"/>：</dt><dd><input type="text" name="company.txdz" class="textInput" value="${company.txdz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="邮政编码" entity="Company"/>：</dt><dd><input type="text" name="company.yzbm" class="textInput integer" value="${company.yzbm}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="公司代码" entity="Company"/>：</dt><dd><input type="text" name="company.gsdm" class="textInput" value="${company.gsdm}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="系统启用时间" entity="Company"/>：</dt><dd><input type="text" name="company.qysj" class="textInput" value="${company.qysj}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Company"/>：</dt><dd><input type="text" name="company.orgName" class="textInput required" value="${company.orgName}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门编号" entity="Company"/>：</dt><dd><input type="text" name="company.orgNum" class="textInput" value="${company.orgNum}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证张数" entity="Company"/>：</dt><dd><input type="text" name="company.pzsize" class="textInput integer " value="${company.pzsize}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门经理" entity="Company"/>：</dt>
			<dd>
				<input type="hidden" name="company.manager.id" value="${company.manager.id}"/>
				<input type="text" class="textInput" name="company.hi_manager.fullName" value="${company.manager.fullName}"
					autocomplete="off" lookupGroup="company" lookupName="manager" suggestClass="org.hi.base.organization.model.HiUser" searchFields="fullName"/>
				<a class="btnLook" href="<hi:url>hiUserLookup.action?lookup=1</hi:url>" lookupGroup="company" lookupName="manager"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="上级部门" entity="Company"/>：</dt>
			<dd>
				<input type="hidden" name="company.parentOrg.id" value="${company.parentOrg.id}"/>
				<input type="text" class="textInput" name="company.hi_parentOrg.orgName" value="${company.parentOrg.orgName}"
					autocomplete="off" lookupGroup="company" lookupName="parentOrg" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="company" lookupName="parentOrg"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="地址" entity="Company"/>：</dt><dd><input type="text" name="company.address" class="textInput" value="${company.address}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="描述" entity="Company"/>：</dt><dd><input type="text" name="company.description" class="textInput" value="${company.description}" /></dd>
		</dl>
				<input type="hidden" name="company.id" value="${company.id}"/>
				<input type="hidden" name="company.dqqj" value="${company.dqqj}"/>
				<input type="hidden" name="company.cshzt" value="${company.cshzt}"/>
				<input type="hidden" name="company.kjqj" value="${company.kjqj}"/>
				<input type="hidden" name="company.creator.id" value="${company.creator.id}"/>
				<input type="hidden" name="company.deleted" value="${company.deleted}"/>
				<input type="hidden" name="company.version" value="${company.version}"/>

		<div class="divider"></div>
			</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
</div>
</form>
