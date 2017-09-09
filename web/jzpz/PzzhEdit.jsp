<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="凭证字号"/></h2>
<form action="pzzhSave.action?navTabId=pzzhList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="序号" entity="Pzzh"/>：</dt><dd><input type="text" name="pzzh.numb" class="textInput" value="${pzzh.numb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证种类" entity="Pzzh"/>：</dt><dd><input type="text" name="pzzh.pzzl" class="textInput" value="${pzzh.pzzl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Pzzh"/>：</dt><dd><input type="text" name="pzzh.kjqj" class="textInput" value="${pzzh.kjqj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="column_5" entity="Pzzh"/>：</dt><dd><input type="text" name="pzzh.yl1" class="textInput" value="${pzzh.yl1}" maxlength="30"/></dd>
		</dl>
				<input type="hidden" name="pzzh.id" value="${pzzh.id}"/>
				<input type="hidden" name="pzzh.creator.id" value="${pzzh.creator.id}"/>
				<input type="hidden" name="pzzh.version" value="${pzzh.version}"/>

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
