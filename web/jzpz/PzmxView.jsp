<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="凭证明细"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="会计科目" entity="Pzmx"/>：</dt><dd>${pzmx.kjkm.kmwz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="贷方金额" entity="Pzmx"/>：</dt><dd>${pzmx.dfje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="借方金额" entity="Pzmx"/>：</dt><dd>${pzmx.jfje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="币种" entity="Pzmx"/>：</dt><dd>${pzmx.kmbz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="汇率" entity="Pzmx"/>：</dt><dd>${pzmx.hlv}</dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Pzmx"/>：</dt><dd>${pzmx.fzhs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算内容" entity="Pzmx"/>：</dt><dd>${pzmx.fzhsnr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="数量" entity="Pzmx"/>：</dt><dd>${pzmx.sliang}</dd>
		</dl>
		<dl>
			<dt><hi:text key="单价" entity="Pzmx"/>：</dt><dd>${pzmx.djia}</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币借方金额" entity="Pzmx"/>：</dt><dd>${pzmx.wbjfje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币贷方金额" entity="Pzmx"/>：</dt><dd>${pzmx.wbdfje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="摘要" entity="Pzmx"/>：</dt><dd>${pzmx.zhaiyao}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Pzmx"/>：</dt><dd>${pzmx.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
