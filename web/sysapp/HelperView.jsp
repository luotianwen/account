<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="辅助管理"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="辅助编码" entity="Helper"/>：</dt><dd>${helper.helperCode}</dd>
		</dl>
		<dl>
			<dt><hi:text key="标题" entity="Helper"/>：</dt><dd>${helper.title}</dd>
		</dl>
		<dl>
			<dt><hi:text key="URL" entity="Helper"/>：</dt><dd>${helper.urlAction}</dd>
		</dl>
		<dl class="nowrap">
			<dt><hi:text key="帮助正文" entity="Helper"/>：</dt><dd>${helper.helpContent}</dd>
		</dl>
		<dl>
			<dt><hi:text key="是否带参数" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.isWithPara" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="激活帮助" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.activeHelp" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="激活编码" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.activeCode" isLabel="true"/></dd>
		</dl>

		<div class="divider"></div>
		
		<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="相关参考"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:120px;">
				<div style="overflow: auto">
					<table class="list" width="100%">
						<thead>
							<tr>
								<th><hi:text key="相关标题" entity="HelperRef"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${helper.helperRefs}">
							<tr>						
								<td>${item.refHelper.title}</td>
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
