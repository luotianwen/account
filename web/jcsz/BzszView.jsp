<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="币种设置"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="币种名称" entity="Bzsz"/>：</dt><dd>${bzsz.b_name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="汇率" entity="Bzsz"/>：</dt><dd>${bzsz.b_huilv}</dd>
		</dl>
		<dl>
			<dt><hi:text key="标识" entity="Bzsz"/>：</dt><dd>${bzsz.flg}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Bzsz"/>：</dt><dd>${bzsz.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
