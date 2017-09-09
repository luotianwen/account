<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="银行对账单明细"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="收付款类型" entity="YhdzdMX"/>：</dt><dd>${yhdzdMX.sfk.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="金额" entity="YhdzdMX"/>：</dt><dd>${yhdzdMX.yhje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="发票张数" entity="YhdzdMX"/>：</dt><dd>${yhdzdMX.fjs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="对方单位名称" entity="YhdzdMX"/>：</dt><dd>${yhdzdMX.wldw}</dd>
		</dl>
		<dl>
			<dt><hi:text key="备注" entity="YhdzdMX"/>：</dt><dd>${yhdzdMX.biaos}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
