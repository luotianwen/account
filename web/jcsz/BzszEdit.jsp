<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="币种设置"/></h2>
<form action="bzszSave.action?navTabId=bzszList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="币种名称" entity="Bzsz"/>：</dt><dd><input type="text" name="bzsz.b_name" class="textInput required" value="${bzsz.b_name}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="汇率" entity="Bzsz"/>：</dt><dd><input type="text" name="bzsz.b_huilv" class="textInput float" value="${bzsz.b_huilv}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="标识" entity="Bzsz"/>：</dt><dd><input type="text" name="bzsz.flg" class="textInput integer" value="${bzsz.flg}" alt="<hi:text key="请输入整数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Bzsz"/>：</dt>
			<dd>
				<input type="hidden" name="bzsz.orgs.id" value="${bzsz.orgs.id}"/>
				<input type="text" class="textInput" name="bzsz.hi_orgs.orgName" value="${bzsz.orgs.orgName}"
					autocomplete="off" lookupGroup="bzsz" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="bzsz" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="bzsz.id" value="${bzsz.id}"/>
				<input type="hidden" name="bzsz.creator.id" value="${bzsz.creator.id}"/>
				<input type="hidden" name="bzsz.version" value="${bzsz.version}"/>

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
