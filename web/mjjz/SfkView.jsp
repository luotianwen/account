<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="收付款"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="名称" entity="Sfk"/>：</dt><dd>${sfk.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="标识" entity="Sfk"/>：</dt><dd><hi:select emu="sfzbs" name="sfk.biaos" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Sfk"/>：</dt><dd>${sfk.kmm.kmmc}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
