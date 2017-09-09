<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="kjkmList2.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
</form>
	

<div class="pageContent">
	 
	<table class="table" width="100%" layoutH="100" targetType="${targetType}">
		<thead>
			<tr>
				<th ><hi:text key="科目编号" entity="Kjkm"/></th>
				<th ><hi:text key="科目名称" entity="Kjkm"/></th>
				<th ><hi:text key="科目位置" entity="Kjkm"/></th>
				<c:if test="${orderIndexs}">
				<th ><hi:text key="初始化" entity="Kjkm"/></th>
			   </c:if>
			   </tr>
			</thead>				
		<tbody>
			<c:forEach var="item" items="${kjkms}" varStatus="s">
			<tr>
					
				  	<td ><c:forEach begin="1" end="${item.kmjc}" step="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:forEach>${item.kmbh}</td>
				    <td>${item.kmmc}</td>
				    <td>${item.kmwz}</td>
				     <c:if test="${orderIndexs}"> 
				     <td> 
				     <c:if test="${item.kmmx==3200}">
				         <a class="btnEdit" href="kjkmCsh.action?kmyeb.kmmclookup.id=${item.id}" width="800" height="400" target="navTab"  rel="kjkm" title="<hi:text key="编辑" parameterLanguageKeys="科目初始化"/>"><hi:text key="录入"/></a>
				     </c:if>
				     </td> 
				     </c:if>
			</tr>
			</c:forEach>
		</tbody>
	</table>	
</div>
