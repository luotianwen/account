<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="期末调汇"/></h2>
<form action="bzhlSave.action?navTabId=bzhlList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="币种名称" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.bzname" class="textInput" value="${bzhl.bzname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初汇率" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.qchl" class="textInput" value="${bzhl.qchl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期末汇率" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.qmhl" class="textInput" value="${bzhl.qmhl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.kjqj" class="textInput" value="${bzhl.kjqj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="column_6" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.flg" class="textInput" value="${bzhl.flg}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="column_7" entity="Bzhl"/>：</dt><dd><input type="text" name="bzhl.flg2" class="textInput" value="${bzhl.flg2}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Bzhl"/>：</dt>
			<dd>
				<input type="hidden" name="bzhl.orgs.id" value="${bzhl.orgs.id}"/>
				<input type="text" class="textInput" name="bzhl.hi_orgs.orgName" value="${bzhl.orgs.orgName}"
					autocomplete="off" lookupGroup="bzhl" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="bzhl" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="bzhl.id" value="${bzhl.id}"/>
				<input type="hidden" name="bzhl.creator.id" value="${bzhl.creator.id}"/>
				<input type="hidden" name="bzhl.version" value="${bzhl.version}"/>

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
