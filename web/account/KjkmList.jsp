<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="kjkmList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="kjkmList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="科目编号" entity="Kjkm"/>:</label>
				<input type="text" name="pageInfo.f_kmbh" value="${pageInfo.f_kmbh}"/>
			</li>	  
			<li>
				<label><hi:text key="科目名称" entity="Kjkm"/>:</label>
				<input type="text" name="pageInfo.f_kmmc" value="${pageInfo.f_kmmc}"/>
			</li>	  
			<li>
				<label><hi:text key="科目方向" entity="Kjkm"/>:</label>
				<hi:search name="pageInfo.f_kmfx" emu="kmfx"/>
			</li>	  
			<li>
				<label><hi:text key="上级科目" entity="Kjkm"/>:</label>
				<input type="text" name="pageInfo.flkjkm.f_kmmc" value="${pageInfo.flkjkm.f_kmmc}"/>
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
				<authz:authorize ifAnyGranted="KJKM_SAVE"><li><a class="add" href="<hi:url>kjkmEdit.action?kjkm.id=-1</hi:url>" target="navTab" rel="kjkm"><span><hi:text key="新建" parameterLanguageKeys="科目设置"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="KJKM_DEL"><li><a class="delete" href="<hi:url>kjkmRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', kmbh:'',kmmc:'',kmfx:'',kmjc:'',kmlx:'',kmwz:'',kmmx:'',sjkmmc:'',wbhs:'',sljehs:'',csh:'',fzhsname:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="kmbh" class="${pageInfo.sorterName eq 'kmbh' ? pageInfo.sorterDirection : ''}"><hi:text key="科目编号" entity="Kjkm"/></th>
				<th orderField="kmmc" class="${pageInfo.sorterName eq 'kmmc' ? pageInfo.sorterDirection : ''}"><hi:text key="科目名称" entity="Kjkm"/></th>
				<th orderField="kmfx" class="${pageInfo.sorterName eq 'kmfx' ? pageInfo.sorterDirection : ''}"><hi:text key="科目方向" entity="Kjkm"/></th>
				<th orderField="kmjc" class="${pageInfo.sorterName eq 'kmjc' ? pageInfo.sorterDirection : ''}"><hi:text key="科目级次" entity="Kjkm"/></th>
				<th orderField="kmlx" class="${pageInfo.sorterName eq 'kmlx' ? pageInfo.sorterDirection : ''}"><hi:text key="科目类型" entity="Kjkm"/></th>
				<th orderField="kmwz" class="${pageInfo.sorterName eq 'kmwz' ? pageInfo.sorterDirection : ''}"><hi:text key="科目位置" entity="Kjkm"/></th>
				<th orderField="kmmx" class="${pageInfo.sorterName eq 'kmmx' ? pageInfo.sorterDirection : ''}"><hi:text key="科目明细" entity="Kjkm"/></th>
				<th orderField="flkjkm.kmmc" class="${pageInfo.sorterName eq 'flkjkm.kmmc' ? pageInfo.sorterDirection : ''}"><hi:text key="上级科目" entity="Kjkm"/></th>
				<th orderField="wbhs" class="${pageInfo.sorterName eq 'wbhs' ? pageInfo.sorterDirection : ''}"><hi:text key="外币核算" entity="Kjkm"/></th>
				<th orderField="sljehs" class="${pageInfo.sorterName eq 'sljehs' ? pageInfo.sorterDirection : ''}"><hi:text key="数量金额式核算" entity="Kjkm"/></th>
				<th orderField="csh" class="${pageInfo.sorterName eq 'csh' ? pageInfo.sorterDirection : ''}"><hi:text key="标识" entity="Kjkm"/></th>
				<th orderField="fzhs.name" class="${pageInfo.sorterName eq 'fzhs.name' ? pageInfo.sorterDirection : ''}"><hi:text key="辅助核算" entity="Kjkm"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Kjkm"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${kjkms}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.kmbh}</td>
				    <td>${item.kmmc}</td>
				    <td><hi:select emu="kmfx" name="kjkms[${s.index}].kmfx" isLabel="true"/></td>
				    <td>${item.kmjc}</td>
				    <td><hi:select emu="kmlx" name="kjkms[${s.index}].kmlx" isLabel="true"/></td>
				    <td>${item.kmwz}</td>
				    <td><hi:select emu="yesNo" name="kjkms[${s.index}].kmmx" isLabel="true"/></td>
				    <td><authz:authorize ifAnyGranted="KJKM_VIEW"><a href="<hi:url>kjkmView.action?kjkm.id=${item.flkjkm.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.flkjkm.kmmc}
					<authz:authorize ifAnyGranted="KJKM_VIEW"></a></authz:authorize>
					</td>
				    <td><hi:select emu="yesNo" name="kjkms[${s.index}].wbhs" isLabel="true"/></td>
				    <td><hi:select emu="yesNo" name="kjkms[${s.index}].sljehs" isLabel="true"/></td>
				    <td>${item.csh}</td>
				    <td><authz:authorize ifAnyGranted="FZHS_VIEW"><a href="<hi:url>fzhsView.action?fzhs.id=${item.fzhs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.fzhs.name}
					<authz:authorize ifAnyGranted="FZHS_VIEW"></a></authz:authorize>
					</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="KJKM_DEL">
				      <a class="btnDel" href="<hi:url>kjkmRemove.action?ajax=1&kjkm.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="科目设置"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="KJKM_VIEW">
				      <a class="btnView" href="<hi:url>kjkmView.action?kjkm.id=${item.id}</hi:url>" target="navTab" rel="kjkm" title="<hi:text key="查看" parameterLanguageKeys="科目设置"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="KJKM_SAVE">
				      <a class="btnEdit" href="<hi:url>kjkmEdit.action?kjkm.id=${item.id}</hi:url>" target="navTab" rel="kjkm" title="<hi:text key="编辑" parameterLanguageKeys="科目设置"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', kmbh:'${item.kmbh}',kmmc:'${item.kmmc}',kmfx:'<hi:select emu="kmfx" name="kjkms[${s.index}].kmfx" isLabel="true"/>',kmjc:'${item.kmjc}',kmlx:'<hi:select emu="kmlx" name="kjkms[${s.index}].kmlx" isLabel="true"/>',kmwz:'${item.kmwz}',kmmx:'<hi:select emu="yesNo" name="kjkms[${s.index}].kmmx" isLabel="true"/>',sjkmmc:'${item.flkjkm.kmmc}',wbhs:'<hi:select emu="yesNo" name="kjkms[${s.index}].wbhs" isLabel="true"/>',sljehs:'<hi:select emu="yesNo" name="kjkms[${s.index}].sljehs" isLabel="true"/>',csh:'${item.csh}',fzhsname:'${item.fzhs.name}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
