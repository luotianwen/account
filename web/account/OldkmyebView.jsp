<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="上传科目余额表"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="附件" entity="Oldkmyeb"/>：</dt>
			<dd>
				<c:if test="${not empty oldkmyeb.att_attachment}">
				<a href="<hi:url>attachmentView.action?attachment.id=${oldkmyeb.att_attachment.id}</hi:url>" target="_blank">
					${oldkmyeb.att_attachment.fileNameImage}
				</a>
				</c:if>
			</dd>				  
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Oldkmyeb"/>：</dt><dd>${oldkmyeb.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
