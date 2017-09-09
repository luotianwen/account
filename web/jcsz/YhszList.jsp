<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="yhszList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="yhszList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="银行名称" entity="Yhsz"/>:</label>
				<input type="text" name="pageInfo.f_yhmc" value="${pageInfo.f_yhmc}"/>
			</li>	  
			<li>
				<label><hi:text key="账户号" entity="Yhsz"/>:</label>
				<input type="text" name="pageInfo.f_zhh" value="${pageInfo.f_zhh}"/>
			</li>	  
			<li>
				<label><hi:text key="账户性质" entity="Yhsz"/>:</label>
				<hi:search name="pageInfo.f_zhxz" emu="zhxz"/>
			</li>	  
			<li>
				<label><hi:text key="币种名称" entity="Yhsz"/>:</label>
				<input type="text" name="pageInfo.ckbz.f_b_name" value="${pageInfo.ckbz.f_b_name}"/>
			</li>	  
			<li>
				<label><hi:text key="联系人" entity="Yhsz"/>:</label>
				<input type="text" name="pageInfo.f_lxr" value="${pageInfo.f_lxr}"/>
			</li>	  
			<li>
				<label><hi:text key="联系电话" entity="Yhsz"/>:</label>
				<input type="text" name="pageInfo.f_lxdh" value="${pageInfo.f_lxdh}"/>
			</li>	  
			<li>
				<label><hi:text key="部门名称" entity="Yhsz"/>:</label>
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
				<authz:authorize ifAnyGranted="YHSZ_SAVE"><li><a class="add" href="<hi:url>yhszEdit.action?yhsz.id=-1</hi:url>" target="navTab" rel="yhsz"><span><hi:text key="新建" parameterLanguageKeys="开户银行设置
"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="YHSZ_DEL"><li><a class="delete" href="<hi:url>yhszRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', yhmc:'',zhh:'',zhxz:'',b_name:'',lxr:'',lxdh:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="yhmc" class="${pageInfo.sorterName eq 'yhmc' ? pageInfo.sorterDirection : ''}"><hi:text key="银行名称" entity="Yhsz"/></th>
				<th orderField="zhh" class="${pageInfo.sorterName eq 'zhh' ? pageInfo.sorterDirection : ''}"><hi:text key="账户号" entity="Yhsz"/></th>
				<th orderField="zhxz" class="${pageInfo.sorterName eq 'zhxz' ? pageInfo.sorterDirection : ''}"><hi:text key="账户性质" entity="Yhsz"/></th>
				<th orderField="ckbz.b_name" class="${pageInfo.sorterName eq 'ckbz.b_name' ? pageInfo.sorterDirection : ''}"><hi:text key="币种名称" entity="Yhsz"/></th>
				<th orderField="lxr" class="${pageInfo.sorterName eq 'lxr' ? pageInfo.sorterDirection : ''}"><hi:text key="联系人" entity="Yhsz"/></th>
				<th orderField="lxdh" class="${pageInfo.sorterName eq 'lxdh' ? pageInfo.sorterDirection : ''}"><hi:text key="联系电话" entity="Yhsz"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Yhsz"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${yhszs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.yhmc}</td>
				    <td>${item.zhh}</td>
				    <td><hi:select emu="zhxz" name="yhszs[${s.index}].zhxz" isLabel="true"/></td>
				    <td><authz:authorize ifAnyGranted="BZSZ_VIEW"><a href="<hi:url>bzszView.action?bzsz.id=${item.ckbz.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.ckbz.b_name}
					<authz:authorize ifAnyGranted="BZSZ_VIEW"></a></authz:authorize>
					</td>
				    <td>${item.lxr}</td>
				    <td>${item.lxdh}</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="YHSZ_DEL">
				      <a class="btnDel" href="<hi:url>yhszRemove.action?ajax=1&yhsz.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="开户银行设置
"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHSZ_VIEW">
				      <a class="btnView" href="<hi:url>yhszView.action?yhsz.id=${item.id}</hi:url>" target="navTab" rel="yhsz" title="<hi:text key="查看" parameterLanguageKeys="开户银行设置
"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHSZ_SAVE">
				      <a class="btnEdit" href="<hi:url>yhszEdit.action?yhsz.id=${item.id}</hi:url>" target="navTab" rel="yhsz" title="<hi:text key="编辑" parameterLanguageKeys="开户银行设置
"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', yhmc:'${item.yhmc}',zhh:'${item.zhh}',zhxz:'<hi:select emu="zhxz" name="yhszs[${s.index}].zhxz" isLabel="true"/>',b_name:'${item.ckbz.b_name}',lxr:'${item.lxr}',lxdh:'${item.lxdh}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
