<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="开户银行设置
"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="银行名称" entity="Yhsz"/>：</dt><dd>${yhsz.yhmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="账户号" entity="Yhsz"/>：</dt><dd>${yhsz.zhh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="账户性质" entity="Yhsz"/>：</dt><dd><hi:select emu="zhxz" name="yhsz.zhxz" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="币种名称" entity="Yhsz"/>：</dt><dd>${yhsz.ckbz.b_name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人" entity="Yhsz"/>：</dt><dd>${yhsz.lxr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Yhsz"/>：</dt><dd>${yhsz.lxdh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Yhsz"/>：</dt><dd>${yhsz.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
