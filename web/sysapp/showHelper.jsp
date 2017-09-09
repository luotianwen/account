<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<div class="pageContent">
	
	<div class="viewInfo" layoutH="60">
		<dl class="nowrap">
			<dd>${helper.helpContent}</dd>
		</dl>
		<div><span><b><hi:text key="相关参考"/></b></span></div>
	<div>
		<c:forEach var="item" items="${helper.helperRefs}">
		<a href="helper!linkHelper.action?helper.id=${item.refHelper.id}" target="dialog">${item.refHelper.title}</a> &nbsp;
		</c:forEach>
	</div>

</div>
