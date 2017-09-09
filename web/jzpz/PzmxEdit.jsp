<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="凭证明细"/></h2>
<form action="pzmxSave.action?navTabId=pzmxList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="会计科目" entity="Pzmx"/>：</dt>
			<dd>
				<input type="hidden" name="pzmx.kjkm.id" value="${pzmx.kjkm.id}"/>
				<input type="text" class="textInput required" name="pzmx.hi_kjkm.kmwz" value="${pzmx.kjkm.kmwz}"
					autocomplete="off" lookupGroup="pzmx" lookupName="kjkm" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmwz"/>
				<a class="btnLook" href="<hi:url>kjkmLookup.action?lookup=1</hi:url>" lookupGroup="pzmx" lookupName="kjkm"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="贷方金额" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.dfje" class="textInput float" value="${pzmx.dfje}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="借方金额" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.jfje" class="textInput float" value="${pzmx.jfje}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="币种" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.kmbz" class="textInput" value="${pzmx.kmbz}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="汇率" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.hlv" class="textInput" value="${pzmx.hlv}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.fzhs" class="textInput" value="${pzmx.fzhs}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算内容" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.fzhsnr" class="textInput" value="${pzmx.fzhsnr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="数量" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.sliang" class="textInput" value="${pzmx.sliang}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="单价" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.djia" class="textInput" value="${pzmx.djia}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="外币借方金额" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.wbjfje" class="textInput float" value="${pzmx.wbjfje}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="外币贷方金额" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.wbdfje" class="textInput float" value="${pzmx.wbdfje}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="摘要" entity="Pzmx"/>：</dt><dd><input type="text" name="pzmx.zhaiyao" class="textInput" value="${pzmx.zhaiyao}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Pzmx"/>：</dt>
			<dd>
				<input type="hidden" name="pzmx.orgs.id" value="${pzmx.orgs.id}"/>
				<input type="text" class="textInput" name="pzmx.hi_orgs.orgName" value="${pzmx.orgs.orgName}"
					autocomplete="off" lookupGroup="pzmx" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="pzmx" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="pzmx.id" value="${pzmx.id}"/>
				<input type="hidden" name="pzmx.jzpz.id" value="${pzmx.jzpz.id}"/>
				<input type="hidden" name="pzmx.creator.id" value="${pzmx.creator.id}"/>
				<input type="hidden" name="pzmx.version" value="${pzmx.version}"/>

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
