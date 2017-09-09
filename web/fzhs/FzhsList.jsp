<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="fzhsList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="fzhsList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="部门编号" entity="Fzhs"/>:</label>
				<input type="text" name="pageInfo.orgs.f_orgNum" value="${pageInfo.orgs.f_orgNum}"/>
			</li>	  
			<li>
				<label><hi:text key="部门名称" entity="Fzhs"/>:</label>
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
				<authz:authorize ifAnyGranted="FZHS_SAVE"><li><a class="add" href="<hi:url>fzhsEdit.action?fzhs.id=-1</hi:url>" target="navTab" rel="fzhs"><span><hi:text key="新建" parameterLanguageKeys="辅助核算"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="FZHS_DEL"><li><a class="delete" href="<hi:url>fzhsRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', code:'',name:'',lxr:'',ggxh:'',jldw:'',fzhslx:'',myname:'',mycode:'',orgNum:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="code" class="${pageInfo.sorterName eq 'code' ? pageInfo.sorterDirection : ''}"><hi:text key="编码" entity="Fzhs"/></th>
				<th orderField="name" class="${pageInfo.sorterName eq 'name' ? pageInfo.sorterDirection : ''}"><hi:text key="名称" entity="Fzhs"/></th>
				<th orderField="lxr" class="${pageInfo.sorterName eq 'lxr' ? pageInfo.sorterDirection : ''}"><hi:text key="联系人" entity="Fzhs"/></th>
				<th orderField="ggxh" class="${pageInfo.sorterName eq 'ggxh' ? pageInfo.sorterDirection : ''}"><hi:text key="规格型号" entity="Fzhs"/></th>
				<th orderField="jldw" class="${pageInfo.sorterName eq 'jldw' ? pageInfo.sorterDirection : ''}"><hi:text key="计量单位" entity="Fzhs"/></th>
				<th orderField="fzhslx" class="${pageInfo.sorterName eq 'fzhslx' ? pageInfo.sorterDirection : ''}"><hi:text key="辅助核算类型" entity="Fzhs"/></th>
				<th orderField="myselef.name" class="${pageInfo.sorterName eq 'myselef.name' ? pageInfo.sorterDirection : ''}"><hi:text key="名称" entity="Fzhs"/></th>
				<th orderField="myselef.code" class="${pageInfo.sorterName eq 'myselef.code' ? pageInfo.sorterDirection : ''}"><hi:text key="编码" entity="Fzhs"/></th>
				<th orderField="orgs.orgNum" class="${pageInfo.sorterName eq 'orgs.orgNum' ? pageInfo.sorterDirection : ''}"><hi:text key="部门编号" entity="Fzhs"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Fzhs"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${fzhss}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.code}</td>
				    <td>${item.name}</td>
				    <td>${item.lxr}</td>
				    <td>${item.ggxh}</td>
				    <td>${item.jldw}</td>
				    <td><hi:select emu="fzhslx" name="fzhss[${s.index}].fzhslx" isLabel="true"/></td>
				    <td><authz:authorize ifAnyGranted="FZHS_VIEW"><a href="<hi:url>fzhsView.action?fzhs.id=${item.myselef.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.myselef.name}
					<authz:authorize ifAnyGranted="FZHS_VIEW"></a></authz:authorize>
					</td>
				    <td><authz:authorize ifAnyGranted="FZHS_VIEW"><a href="<hi:url>fzhsView.action?fzhs.id=${item.myselef.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.myselef.code}
					<authz:authorize ifAnyGranted="FZHS_VIEW"></a></authz:authorize>
					</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgNum}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="FZHS_DEL">
				      <a class="btnDel" href="<hi:url>fzhsRemove.action?ajax=1&fzhs.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="辅助核算"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="FZHS_VIEW">
				      <a class="btnView" href="<hi:url>fzhsView.action?fzhs.id=${item.id}</hi:url>" target="navTab" rel="fzhs" title="<hi:text key="查看" parameterLanguageKeys="辅助核算"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="FZHS_SAVE">
				      <a class="btnEdit" href="<hi:url>fzhsEdit.action?fzhs.id=${item.id}</hi:url>" target="navTab" rel="fzhs" title="<hi:text key="编辑" parameterLanguageKeys="辅助核算"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', code:'${item.code}',name:'${item.name}',lxr:'${item.lxr}',ggxh:'${item.ggxh}',jldw:'${item.jldw}',fzhslx:'<hi:select emu="fzhslx" name="fzhss[${s.index}].fzhslx" isLabel="true"/>',myname:'${item.myselef.name}',mycode:'${item.myselef.code}',orgNum:'${item.orgs.orgNum}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
