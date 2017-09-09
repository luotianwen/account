<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="存款余额调节表"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="币种" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.bzname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="企业银行存款日记账余额" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.qeckrj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行名称" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.yhname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.kjqj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行对账单余额" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.yhdzd}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行已收款入" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.yhysr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行已付款入" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.yhyfr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="企业已收款入" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.qeysr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="企业已付款入" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.qeyfr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="企业余额" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.qyye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行余额" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.yhye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="人员" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.ryname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Ckyetjb"/>：</dt><dd>${ckyetjb.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
