<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="收付款"/></h2>
<form action="sfkSave.action?navTabId=sfkList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="名称" entity="Sfk"/>：</dt><dd><input type="text" name="sfk.name" class="textInput" value="${sfk.name}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="标识" entity="Sfk"/>：</dt><dd><hi:select emu="sfzbs" name="sfk.biaos"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Sfk"/>：</dt>
			<dd>
				<input type="hidden" name="sfk.kmm.id" value="${sfk.kmm.id}"/>
				<input type="text" class="textInput required" name="sfk.hi_kmm.kmmc" value="${sfk.kmm.kmmc}"
					autocomplete="off" lookupGroup="sfk" lookupName="kmm" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmmc"/>
				<a class="btnLook" href="<hi:url>kjkmLookup.action?lookup=1</hi:url>" lookupGroup="sfk" lookupName="kmm"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="sfk.id" value="${sfk.id}"/>
				<input type="hidden" name="sfk.orgName.orgName" value="${sfk.orgName.orgName}"/>
				<input type="hidden" name="sfk.creator.id" value="${sfk.creator.id}"/>
				<input type="hidden" name="sfk.version" value="${sfk.version}"/>

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
