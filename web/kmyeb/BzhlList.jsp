<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="bzhlList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="bzhlList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="部门名称" entity="Bzhl"/>:</label>
				<input type="text" name="pageInfo.orgs.f_orgName" value="${pageInfo.orgs.f_orgName}"/>
			</li>	  
			<li>

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
				<authz:authorize ifAnyGranted="BZHL_SAVE"><li><a class="add" href="<hi:url>bzhlEdit.action?bzhl.id=-1</hi:url>" target="navTab" rel="bzhl"><span><hi:text key="新建" parameterLanguageKeys="期末调汇"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="BZHL_DEL"><li><a class="delete" href="<hi:url>bzhlRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', bzname:'',qchl:'',qmhl:'',kjqj:'',flg:'',flg2:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="bzname" class="${pageInfo.sorterName eq 'bzname' ? pageInfo.sorterDirection : ''}"><hi:text key="币种名称" entity="Bzhl"/></th>
				<th orderField="qchl" class="${pageInfo.sorterName eq 'qchl' ? pageInfo.sorterDirection : ''}"><hi:text key="期初汇率" entity="Bzhl"/></th>
				<th orderField="qmhl" class="${pageInfo.sorterName eq 'qmhl' ? pageInfo.sorterDirection : ''}"><hi:text key="期末汇率" entity="Bzhl"/></th>
				<th orderField="kjqj" class="${pageInfo.sorterName eq 'kjqj' ? pageInfo.sorterDirection : ''}"><hi:text key="会计期间" entity="Bzhl"/></th>
				<th orderField="flg" class="${pageInfo.sorterName eq 'flg' ? pageInfo.sorterDirection : ''}"><hi:text key="column_6" entity="Bzhl"/></th>
				<th orderField="flg2" class="${pageInfo.sorterName eq 'flg2' ? pageInfo.sorterDirection : ''}"><hi:text key="column_7" entity="Bzhl"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Bzhl"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${bzhls}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.bzname}</td>
				    <td>${item.qchl}</td>
				    <td>${item.qmhl}</td>
				    <td>${item.kjqj}</td>
				    <td>${item.flg}</td>
				    <td>${item.flg2}</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="BZHL_DEL">
				      <a class="btnDel" href="<hi:url>bzhlRemove.action?ajax=1&bzhl.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="期末调汇"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="BZHL_VIEW">
				      <a class="btnView" href="<hi:url>bzhlView.action?bzhl.id=${item.id}</hi:url>" target="navTab" rel="bzhl" title="<hi:text key="查看" parameterLanguageKeys="期末调汇"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="BZHL_SAVE">
				      <a class="btnEdit" href="<hi:url>bzhlEdit.action?bzhl.id=${item.id}</hi:url>" target="navTab" rel="bzhl" title="<hi:text key="编辑" parameterLanguageKeys="期末调汇"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', bzname:'${item.bzname}',qchl:'${item.qchl}',qmhl:'${item.qmhl}',kjqj:'${item.kjqj}',flg:'${item.flg}',flg2:'${item.flg2}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
