<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="期末调汇"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="币种名称" entity="Bzhl"/>：</dt><dd>${bzhl.bzname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初汇率" entity="Bzhl"/>：</dt><dd>${bzhl.qchl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期末汇率" entity="Bzhl"/>：</dt><dd>${bzhl.qmhl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Bzhl"/>：</dt><dd>${bzhl.kjqj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="column_6" entity="Bzhl"/>：</dt><dd>${bzhl.flg}</dd>
		</dl>
		<dl>
			<dt><hi:text key="column_7" entity="Bzhl"/>：</dt><dd>${bzhl.flg2}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Bzhl"/>：</dt><dd>${bzhl.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
