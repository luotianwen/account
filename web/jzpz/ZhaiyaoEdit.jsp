<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="摘要"/></h2>
<form action="zhaiyaoSave.action?navTabId=zhaiyaoList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="摘要内容" entity="Zhaiyao"/>：</dt><dd><input type="text" name="zhaiyao.name" class="textInput required" value="${zhaiyao.name}" maxlength="30"/></dd>
		</dl>
		 
				<input type="hidden" name="zhaiyao.id" value="${zhaiyao.id}"/>
				<input type="hidden" name="zhaiyao.creator.id" value="${zhaiyao.creator.id}"/>
				<input type="hidden" name="zhaiyao.version" value="${zhaiyao.version}"/>

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
