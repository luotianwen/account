<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="凭证种类设置
"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="种类名称" entity="Pzzl"/>：</dt><dd>${pzzl.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="简称" entity="Pzzl"/>：</dt><dd>${pzzl.sname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="简写编码" entity="Pzzl"/>：</dt><dd>${pzzl.scode}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Pzzl"/>：</dt><dd>${pzzl.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
