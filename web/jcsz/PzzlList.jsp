<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="pzzlList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="pzzlList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="种类名称" entity="Pzzl"/>:</label>
				<input type="text" name="pageInfo.f_name" value="${pageInfo.f_name}"/>
			</li>	  
			<li>
				<label><hi:text key="简称" entity="Pzzl"/>:</label>
				<input type="text" name="pageInfo.f_sname" value="${pageInfo.f_sname}"/>
			</li>	  
			<li>
				<label><hi:text key="简写编码" entity="Pzzl"/>:</label>
				<input type="text" name="pageInfo.f_scode" value="${pageInfo.f_scode}"/>
			</li>	  
			<li>
				<label><hi:text key="部门名称" entity="Pzzl"/>:</label>
				<input type="text" name="pageInfo.orgs.f_orgName" value="${pageInfo.orgs.f_orgName}"/>
			</li>	  
		</ul>
		<div class="subBar">
			<div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
		<c:choose>
			<c:when test="${empty lookup}">
				<authz:authorize ifAnyGranted="PZZL_SAVE"><li><a class="add" href="<hi:url>pzzlEdit.action?pzzl.id=-1</hi:url>" target="navTab" rel="pzzl"><span><hi:text key="新建" parameterLanguageKeys="凭证种类设置
"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="PZZL_DEL"><li><a class="delete" href="<hi:url>pzzlRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', name:'',sname:'',scode:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
			</c:otherwise>
		</c:choose>			
		</ul>
	</div>
	<table class="table" width="100%" layoutH="138" targetType="${targetType}">
		<thead>
			<tr>
				<c:if test="${empty lookup}">
				<th width="22"><input type="checkbox" group="orderIndexs" class="checkboxCtrl"></th>
				</c:if>
				<th orderField="name" class="${pageInfo.sorterName eq 'name' ? pageInfo.sorterDirection : ''}"><hi:text key="种类名称" entity="Pzzl"/></th>
				<th orderField="sname" class="${pageInfo.sorterName eq 'sname' ? pageInfo.sorterDirection : ''}"><hi:text key="简称" entity="Pzzl"/></th>
				<th orderField="scode" class="${pageInfo.sorterName eq 'scode' ? pageInfo.sorterDirection : ''}"><hi:text key="简写编码" entity="Pzzl"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Pzzl"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${pzzls}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.name}</td>
				    <td>${item.sname}</td>
				    <td>${item.scode}</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="PZZL_DEL">
				      <a class="btnDel" href="<hi:url>pzzlRemove.action?ajax=1&pzzl.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="凭证种类设置
"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="PZZL_VIEW">
				      <a class="btnView" href="<hi:url>pzzlView.action?pzzl.id=${item.id}</hi:url>" target="navTab" rel="pzzl" title="<hi:text key="查看" parameterLanguageKeys="凭证种类设置
"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="PZZL_SAVE">
				      <a class="btnEdit" href="<hi:url>pzzlEdit.action?pzzl.id=${item.id}</hi:url>" target="navTab" rel="pzzl" title="<hi:text key="编辑" parameterLanguageKeys="凭证种类设置
"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', name:'${item.name}',sname:'${item.sname}',scode:'${item.scode}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
					</c:otherwise>
				</c:choose>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>	
	<div class="panelBar">
		<div class="pages">
			<span><hi:text key="每页"/></span>
			<c:set var="pageSizeList" value="${fn:split('10|20|50|100', '|')}"/>  
			<select name="pageInfo.pageSize" onchange="dwzPageBreak({targetType:'${targetType}', numPerPage:this.value})">
				<c:forEach var="item" items="${pageSizeList}">
				<option value="${item}" ${item eq pageInfo.pageSize ? 'selected="selected"' : ''}>${item}</option>
				</c:forEach>
			</select>
			<span><hi:text key="条"/>，<hi:text key="共"/>${pageInfo.totalRecords}<hi:text key="条"/></span>
		</div>
		<div class="pagination" targetType="${targetType}" totalCount="${pageInfo.totalRecords}" numPerPage="${pageInfo.pageSize}" pageNumShown="${pageInfo.middlePageNum*2}" currentPage="${pageInfo.currentPage}"></div>
	</div>
</div>
