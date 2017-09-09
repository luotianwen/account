<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="银行对账单"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="日期" entity="Yhdzd"/>：</dt><dd><fmt:formatDate value="${yhdzd.yhRQ}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="摘要" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhZY}</dd>
		</dl>
		<dl>
			<dt><hi:text key="票据号" entity="Yhdzd"/>：</dt><dd>${yhdzd.pjh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="借方金额" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhJFJE}</dd>
		</dl>
		<dl>
			<dt><hi:text key="贷方金额" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhDFJE}</dd>
		</dl>
		<dl>
			<dt><hi:text key="余额" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhYE}</dd>
		</dl>
		<dl>
			<dt><hi:text key="状态" entity="Yhdzd"/>：</dt><dd><hi:select emu="yhdzdzt" name="yhdzd.ztai" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="发票张数" entity="Yhdzd"/>：</dt><dd>${yhdzd.fjs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="银行名称" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhm.yhmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证字号" entity="Yhdzd"/>：</dt><dd>${yhdzd.yhPZH}</dd>
		</dl>
		<dl>
			<dt><hi:text key="勾对" entity="Yhdzd"/>：</dt><dd><hi:select emu="yesNo" name="yhdzd.tick" isLabel="true"/></dd>
		</dl>

		<div class="divider"></div>
		
		<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="银行对账单明细"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:120px;">
				<div style="overflow: auto">
					<table class="list" width="100%">
						<thead>
							<tr>
								<th><hi:text key="收付款类型" entity="YhdzdMX"/></th>
								<th><hi:text key="金额" entity="YhdzdMX"/></th>
								<th><hi:text key="发票张数" entity="YhdzdMX"/></th>
								<th><hi:text key="对方单位名称" entity="YhdzdMX"/></th>
								<th><hi:text key="备注" entity="YhdzdMX"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${yhdzd.yhdzdMXs}">
							<tr>						
								<td>${item.sfk.name}</td>
								<td>${item.yhje}</td>
								<td>${item.fjs}</td>
								<td>${item.wldw}</td>
								<td>${item.biaos}</td>
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
