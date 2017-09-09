<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="凭证字号"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="序号" entity="Pzzh"/>：</dt><dd>${pzzh.numb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证种类" entity="Pzzh"/>：</dt><dd>${pzzh.pzzl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Pzzh"/>：</dt><dd>${pzzh.kjqj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="column_5" entity="Pzzh"/>：</dt><dd>${pzzh.yl1}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
