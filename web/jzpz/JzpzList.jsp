<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="jzpzList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="jzpzList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="凭证编号" entity="Jzpz"/>:</label>
				<input type="text" name="pageInfo.f_pzbh" value="${pageInfo.f_pzbh}"/>
			</li>	  
			<li class="dateRange">
				<label><hi:text key="凭证日期" entity="Jzpz"/>:</label>
				<input type="text" name="pageInfo.f_pzrq" class="date" readonly="readonly" value="<fmt:formatDate value='${pageInfo.f_pzrq}' pattern='yyyy-MM-dd'/>"/>
				<input type="hidden" name="pageInfo.f_pzrq_op" value="&gt;="><span class="limit">-</span>
				<input type="text" name="pageInfo.f_pzrq01" class="date" readonly="readonly" value="<fmt:formatDate value='${pageInfo.f_pzrq01}' pattern='yyyy-MM-dd'/>"/>
				<input type="hidden" name="pageInfo.f_pzrq01_op" value="&lt;=">
			</li>	  
			<li>
				<label><hi:text key="状态" entity="Jzpz"/>:</label>
				<hi:search name="pageInfo.f_ztai" emu="pzta"/>
			</li>	  
			<li>
				<label><hi:text key="财务主管" entity="Jzpz"/>:</label>
				<input type="text" name="pageInfo.cwzg.f_fullName" value="${pageInfo.cwzg.f_fullName}"/>
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
				<authz:authorize ifAnyGranted="JZPZ_SAVE"><li><a class="add" href="<hi:url>jzpzEdit.action?jzpz.id=-1</hi:url>" target="navTab" rel="jzpz"><span><hi:text key="新建" parameterLanguageKeys="记账凭证"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="JZPZ_DEL"><li><a class="delete" href="<hi:url>jzpzRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="JZPZ_DEL"><li><a class="delete" href="<hi:url>jzpzPassAll.action?ajax=1</hi:url>" target="removeSelected" msg="请选择要通过的记录" title="<hi:text key="确实要通过这些记录吗?"/>"><span><hi:text key="批量通过"/></span></a></li></authz:authorize>
			    <authz:authorize ifAnyGranted="JZPZ_DEL"><li><a class="delete" href="<hi:url>jzpzBackAll.action?ajax=1</hi:url>" target="removeSelected" msg="请选择要退回的记录" title="<hi:text key="确实要退回这些记录吗?"/>"><span><hi:text key="批量退回"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', pzbh:'',pzrq:'',fjs:'',zje:'',ztai:'',zdr:'',shr:'',fullName:'',zdrq:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="pzbh" class="${pageInfo.sorterName eq 'pzbh' ? pageInfo.sorterDirection : ''}"><hi:text key="凭证编号" entity="Jzpz"/></th>
				<th orderField="pzrq" class="${pageInfo.sorterName eq 'pzrq' ? pageInfo.sorterDirection : ''}"><hi:text key="凭证日期" entity="Jzpz"/></th>
				<th orderField="fjs" class="${pageInfo.sorterName eq 'fjs' ? pageInfo.sorterDirection : ''}"><hi:text key="附件数" entity="Jzpz"/></th>
				<th orderField="zje" class="${pageInfo.sorterName eq 'zje' ? pageInfo.sorterDirection : ''}"><hi:text key="金额" entity="Jzpz"/></th>
				<th orderField="ztai" class="${pageInfo.sorterName eq 'ztai' ? pageInfo.sorterDirection : ''}"><hi:text key="状态" entity="Jzpz"/></th>
				<th orderField="zdr" class="${pageInfo.sorterName eq 'zdr' ? pageInfo.sorterDirection : ''}"><hi:text key="制单人" entity="Jzpz"/></th>
				<th orderField="shr" class="${pageInfo.sorterName eq 'shr' ? pageInfo.sorterDirection : ''}"><hi:text key="审核人" entity="Jzpz"/></th>
				<th orderField="cwzg.fullName" class="${pageInfo.sorterName eq 'cwzg.fullName' ? pageInfo.sorterDirection : ''}"><hi:text key="财务主管" entity="Jzpz"/></th>
				<th orderField="zdrq" class="${pageInfo.sorterName eq 'zdrq' ? pageInfo.sorterDirection : ''}"><hi:text key="制单日期" entity="Jzpz"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Jzpz"/></th>
				
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${jzpzs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.pzbh}</td>
					<td><fmt:formatDate value="${item.pzrq}" pattern="yyyy-MM-dd"/></td>
				    <td>${item.fjs}</td>
				    <td>${item.zje}</td>
				    <td><hi:select emu="pzta" name="jzpzs[${s.index}].ztai" isLabel="true"/></td>
				    <td>${item.zdr}</td>
				    <td>${item.shr}</td>
				    <td><authz:authorize ifAnyGranted="HIUSER_VIEW"><a href="<hi:url>hiUserView.action?hiUser.id=${item.cwzg.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.cwzg.fullName}
					<authz:authorize ifAnyGranted="HIUSER_VIEW"></a></authz:authorize>
					</td>
					<td><fmt:formatDate value="${item.zdrq}" pattern="yyyy-MM-dd"/></td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="JZPZ_DEL">
				      <a class="btnDel" href="<hi:url>jzpzRemove.action?ajax=1&jzpz.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="记账凭证"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="JZPZ_VIEW">
				      <a class="btnView" href="<hi:url>jzpzView.action?jzpz.id=${item.id}</hi:url>" target="navTab" rel="jzpz" title="<hi:text key="查看" parameterLanguageKeys="记账凭证"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="JZPZ_SAVE">
				      <a class="btnEdit" href="<hi:url>jzpzEdit.action?jzpz.id=${item.id}</hi:url>" target="navTab" rel="jzpz" title="<hi:text key="编辑" parameterLanguageKeys="记账凭证"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', pzbh:'${item.pzbh}',pzrq:'${item.pzrq}',fjs:'${item.fjs}',zje:'${item.zje}',ztai:'<hi:select emu="pzta" name="jzpzs[${s.index}].ztai" isLabel="true"/>',zdr:'${item.zdr}',shr:'${item.shr}',fullName:'${item.cwzg.fullName}',zdrq:'${item.zdrq}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
