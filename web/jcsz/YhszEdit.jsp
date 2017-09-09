<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="开户银行设置
"/></h2>
<form action="yhszSave.action?navTabId=yhszList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="银行名称" entity="Yhsz"/>：</dt><dd><input type="text" name="yhsz.yhmc" class="textInput required" value="${yhsz.yhmc}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="账户号" entity="Yhsz"/>：</dt><dd><input type="text" name="yhsz.zhh" class="textInput required" value="${yhsz.zhh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="账户性质" entity="Yhsz"/>：</dt><dd><hi:select emu="zhxz" name="yhsz.zhxz"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="币种名称" entity="Yhsz"/>：</dt>
			<dd>
				<input type="hidden" name="yhsz.ckbz.id" value="${yhsz.ckbz.id}"/>
				<input type="text" class="textInput" name="yhsz.hi_ckbz.b_name" value="${yhsz.ckbz.b_name}"
					autocomplete="off" lookupGroup="yhsz" lookupName="ckbz" suggestClass="com.huolong.jcsz.model.Bzsz" searchFields="b_name"/>
				<a class="btnLook" href="<hi:url>bzszLookup.action?lookup=1</hi:url>" lookupGroup="yhsz" lookupName="ckbz"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人" entity="Yhsz"/>：</dt><dd><input type="text" name="yhsz.lxr" class="textInput" value="${yhsz.lxr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Yhsz"/>：</dt><dd><input type="text" name="yhsz.lxdh" class="textInput mobile" value="${yhsz.lxdh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Yhsz"/>：</dt>
			<dd>
				<input type="hidden" name="yhsz.orgs.id" value="${yhsz.orgs.id}"/>
				<input type="text" class="textInput" name="yhsz.hi_orgs.orgName" value="${yhsz.orgs.orgName}"
					autocomplete="off" lookupGroup="yhsz" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="yhsz" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="yhsz.id" value="${yhsz.id}"/>
				<input type="hidden" name="yhsz.creator.id" value="${yhsz.creator.id}"/>
				<input type="hidden" name="yhsz.version" value="${yhsz.version}"/>

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
