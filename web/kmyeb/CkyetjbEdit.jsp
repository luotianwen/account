<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="存款余额调节表"/></h2>
<form action="ckyetjbSave.action?navTabId=ckyetjbList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="币种" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.bzname" class="textInput" value="${ckyetjb.bzname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="企业银行存款日记账余额" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.qeckrj" class="textInput" value="${ckyetjb.qeckrj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行名称" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.yhname" class="textInput" value="${ckyetjb.yhname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.kjqj" class="textInput" value="${ckyetjb.kjqj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行对账单余额" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.yhdzd" class="textInput" value="${ckyetjb.yhdzd}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行已收款入" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.yhysr" class="textInput" value="${ckyetjb.yhysr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行已付款入" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.yhyfr" class="textInput" value="${ckyetjb.yhyfr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="企业已收款入" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.qeysr" class="textInput" value="${ckyetjb.qeysr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="企业已付款入" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.qeyfr" class="textInput" value="${ckyetjb.qeyfr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="企业余额" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.qyye" class="textInput" value="${ckyetjb.qyye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行余额" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.yhye" class="textInput" value="${ckyetjb.yhye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="人员" entity="Ckyetjb"/>：</dt><dd><input type="text" name="ckyetjb.ryname" class="textInput" value="${ckyetjb.ryname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Ckyetjb"/>：</dt>
			<dd>
				<input type="hidden" name="ckyetjb.orgs.id" value="${ckyetjb.orgs.id}"/>
				<input type="text" class="textInput" name="ckyetjb.hi_orgs.orgName" value="${ckyetjb.orgs.orgName}"
					autocomplete="off" lookupGroup="ckyetjb" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="ckyetjb" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="ckyetjb.id" value="${ckyetjb.id}"/>
				<input type="hidden" name="ckyetjb.creator.id" value="${ckyetjb.creator.id}"/>
				<input type="hidden" name="ckyetjb.version" value="${ckyetjb.version}"/>

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
