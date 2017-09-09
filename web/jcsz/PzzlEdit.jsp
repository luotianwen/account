<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="凭证种类设置
"/></h2>
<form action="pzzlSave.action?navTabId=pzzlList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="种类名称" entity="Pzzl"/>：</dt><dd><input type="text" name="pzzl.name" class="textInput required" value="${pzzl.name}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="简称" entity="Pzzl"/>：</dt><dd><input type="text" name="pzzl.sname" class="textInput" value="${pzzl.sname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="简写编码" entity="Pzzl"/>：</dt><dd><input type="text" name="pzzl.scode" class="textInput" value="${pzzl.scode}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Pzzl"/>：</dt>
			<dd>
				<input type="hidden" name="pzzl.orgs.id" value="${pzzl.orgs.id}"/>
				<input type="text" class="textInput" name="pzzl.hi_orgs.orgName" value="${pzzl.orgs.orgName}"
					autocomplete="off" lookupGroup="pzzl" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="pzzl" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="pzzl.id" value="${pzzl.id}"/>
				<input type="hidden" name="pzzl.creator.id" value="${pzzl.creator.id}"/>
				<input type="hidden" name="pzzl.version" value="${pzzl.version}"/>

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
