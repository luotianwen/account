<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="ckyetjbList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="ckyetjbList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="部门名称" entity="Ckyetjb"/>:</label>
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
				<authz:authorize ifAnyGranted="CKYETJB_SAVE"><li><a class="add" href="<hi:url>ckyetjbEdit.action?ckyetjb.id=-1</hi:url>" target="navTab" rel="ckyetjb"><span><hi:text key="新建" parameterLanguageKeys="存款余额调节表"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="CKYETJB_DEL"><li><a class="delete" href="<hi:url>ckyetjbRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', bzname:'',qeckrj:'',yhname:'',kjqj:'',yhdzd:'',yhysr:'',yhyfr:'',qeysr:'',qeyfr:'',qyye:'',yhye:'',ryname:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="bzname" class="${pageInfo.sorterName eq 'bzname' ? pageInfo.sorterDirection : ''}"><hi:text key="币种" entity="Ckyetjb"/></th>
				<th orderField="qeckrj" class="${pageInfo.sorterName eq 'qeckrj' ? pageInfo.sorterDirection : ''}"><hi:text key="企业银行存款日记账余额" entity="Ckyetjb"/></th>
				<th orderField="yhname" class="${pageInfo.sorterName eq 'yhname' ? pageInfo.sorterDirection : ''}"><hi:text key="银行名称" entity="Ckyetjb"/></th>
				<th orderField="kjqj" class="${pageInfo.sorterName eq 'kjqj' ? pageInfo.sorterDirection : ''}"><hi:text key="会计期间" entity="Ckyetjb"/></th>
				<th orderField="yhdzd" class="${pageInfo.sorterName eq 'yhdzd' ? pageInfo.sorterDirection : ''}"><hi:text key="银行对账单余额" entity="Ckyetjb"/></th>
				<th orderField="yhysr" class="${pageInfo.sorterName eq 'yhysr' ? pageInfo.sorterDirection : ''}"><hi:text key="银行已收款入" entity="Ckyetjb"/></th>
				<th orderField="yhyfr" class="${pageInfo.sorterName eq 'yhyfr' ? pageInfo.sorterDirection : ''}"><hi:text key="银行已付款入" entity="Ckyetjb"/></th>
				<th orderField="qeysr" class="${pageInfo.sorterName eq 'qeysr' ? pageInfo.sorterDirection : ''}"><hi:text key="企业已收款入" entity="Ckyetjb"/></th>
				<th orderField="qeyfr" class="${pageInfo.sorterName eq 'qeyfr' ? pageInfo.sorterDirection : ''}"><hi:text key="企业已付款入" entity="Ckyetjb"/></th>
				<th orderField="qyye" class="${pageInfo.sorterName eq 'qyye' ? pageInfo.sorterDirection : ''}"><hi:text key="企业余额" entity="Ckyetjb"/></th>
				<th orderField="yhye" class="${pageInfo.sorterName eq 'yhye' ? pageInfo.sorterDirection : ''}"><hi:text key="银行余额" entity="Ckyetjb"/></th>
				<th orderField="ryname" class="${pageInfo.sorterName eq 'ryname' ? pageInfo.sorterDirection : ''}"><hi:text key="人员" entity="Ckyetjb"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Ckyetjb"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${ckyetjbs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.bzname}</td>
				    <td>${item.qeckrj}</td>
				    <td>${item.yhname}</td>
				    <td>${item.kjqj}</td>
				    <td>${item.yhdzd}</td>
				    <td>${item.yhysr}</td>
				    <td>${item.yhyfr}</td>
				    <td>${item.qeysr}</td>
				    <td>${item.qeyfr}</td>
				    <td>${item.qyye}</td>
				    <td>${item.yhye}</td>
				    <td>${item.ryname}</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="CKYETJB_DEL">
				      <a class="btnDel" href="<hi:url>ckyetjbRemove.action?ajax=1&ckyetjb.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="存款余额调节表"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="CKYETJB_VIEW">
				      <a class="btnView" href="<hi:url>ckyetjbView.action?ckyetjb.id=${item.id}</hi:url>" target="navTab" rel="ckyetjb" title="<hi:text key="查看" parameterLanguageKeys="存款余额调节表"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="CKYETJB_SAVE">
				      <a class="btnEdit" href="<hi:url>ckyetjbEdit.action?ckyetjb.id=${item.id}</hi:url>" target="navTab" rel="ckyetjb" title="<hi:text key="编辑" parameterLanguageKeys="存款余额调节表"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', bzname:'${item.bzname}',qeckrj:'${item.qeckrj}',yhname:'${item.yhname}',kjqj:'${item.kjqj}',yhdzd:'${item.yhdzd}',yhysr:'${item.yhysr}',yhyfr:'${item.yhyfr}',qeysr:'${item.qeysr}',qeyfr:'${item.qeyfr}',qyye:'${item.qyye}',yhye:'${item.yhye}',ryname:'${item.ryname}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
