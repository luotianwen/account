<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="记账凭证"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="凭证编号" entity="Jzpz"/>：</dt><dd>${jzpz.pzbh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证日期" entity="Jzpz"/>：</dt><dd><fmt:formatDate value="${jzpz.pzrq}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="附件数" entity="Jzpz"/>：</dt><dd>${jzpz.fjs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="金额" entity="Jzpz"/>：</dt><dd>${jzpz.zje}</dd>
		</dl>
		<dl>
			<dt><hi:text key="状态" entity="Jzpz"/>：</dt><dd><hi:select emu="pzta" name="jzpz.ztai" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="制单人" entity="Jzpz"/>：</dt><dd>${jzpz.zdr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="审核人" entity="Jzpz"/>：</dt><dd>${jzpz.shr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="财务主管" entity="Jzpz"/>：</dt><dd>${jzpz.cwzg.fullName}</dd>
		</dl>
		<dl>
			<dt><hi:text key="制单日期" entity="Jzpz"/>：</dt><dd><fmt:formatDate value="${jzpz.zdrq}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="审核日期" entity="Jzpz"/>：</dt><dd><fmt:formatDate value="${jzpz.shrq}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="审核意见" entity="Jzpz"/>：</dt><dd>${jzpz.shyj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="记账人" entity="Jzpz"/>：</dt><dd>${jzpz.jzr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Jzpz"/>：</dt><dd>${jzpz.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
		
		<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="凭证明细"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:120px;">
				<div style="overflow: auto">
					<table class="list" width="100%">
						<thead>
							<tr>
								<th><hi:text key="会计科目" entity="Pzmx"/></th>
								<th><hi:text key="贷方金额" entity="Pzmx"/></th>
								<th><hi:text key="借方金额" entity="Pzmx"/></th>
								<th><hi:text key="币种" entity="Pzmx"/></th>
								<th><hi:text key="汇率" entity="Pzmx"/></th>
								<th><hi:text key="辅助核算" entity="Pzmx"/></th>
								<th><hi:text key="辅助核算内容" entity="Pzmx"/></th>
								<th><hi:text key="数量" entity="Pzmx"/></th>
								<th><hi:text key="单价" entity="Pzmx"/></th>
								<th><hi:text key="外币借方金额" entity="Pzmx"/></th>
								<th><hi:text key="外币贷方金额" entity="Pzmx"/></th>
								<th><hi:text key="摘要" entity="Pzmx"/></th>
								<th><hi:text key="部门名称" entity="Pzmx"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${jzpz.pzmxs}">
							<tr>						
								<td>${item.kjkm.kmwz}</td>
								<td>${item.dfje}</td>
								<td>${item.jfje}</td>
								<td>${item.kmbz}</td>
								<td>${item.hlv}</td>
								<td>${item.fzhs}</td>
								<td>${item.fzhsnr}</td>
								<td>${item.sliang}</td>
								<td>${item.djia}</td>
								<td>${item.wbjfje}</td>
								<td>${item.wbdfje}</td>
								<td>${item.zhaiyao}</td>
								<td>${item.orgs.orgName}</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				
			</div>
			<div class="tabsFooter">
				<div class="tabsFooterContent"></div>
			</div>
		</div>				
	</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
