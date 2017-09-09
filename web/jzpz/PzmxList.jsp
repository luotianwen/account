<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="pzmxList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="pzmxList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="部门名称" entity="Pzmx"/>:</label>
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
				<authz:authorize ifAnyGranted="PZMX_SAVE"><li><a class="add" href="<hi:url>pzmxEdit.action?pzmx.id=-1</hi:url>" target="navTab" rel="pzmx"><span><hi:text key="新建" parameterLanguageKeys="凭证明细"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="PZMX_DEL"><li><a class="delete" href="<hi:url>pzmxRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', kmwz:'',dfje:'',jfje:'',kmbz:'',hlv:'',fzhs:'',fzhsnr:'',sliang:'',djia:'',wbjfje:'',wbdfje:'',zhaiyao:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="kjkm.kmwz" class="${pageInfo.sorterName eq 'kjkm.kmwz' ? pageInfo.sorterDirection : ''}"><hi:text key="会计科目" entity="Pzmx"/></th>
				<th orderField="dfje" class="${pageInfo.sorterName eq 'dfje' ? pageInfo.sorterDirection : ''}"><hi:text key="贷方金额" entity="Pzmx"/></th>
				<th orderField="jfje" class="${pageInfo.sorterName eq 'jfje' ? pageInfo.sorterDirection : ''}"><hi:text key="借方金额" entity="Pzmx"/></th>
				<th orderField="kmbz" class="${pageInfo.sorterName eq 'kmbz' ? pageInfo.sorterDirection : ''}"><hi:text key="币种" entity="Pzmx"/></th>
				<th orderField="hlv" class="${pageInfo.sorterName eq 'hlv' ? pageInfo.sorterDirection : ''}"><hi:text key="汇率" entity="Pzmx"/></th>
				<th orderField="fzhs" class="${pageInfo.sorterName eq 'fzhs' ? pageInfo.sorterDirection : ''}"><hi:text key="辅助核算" entity="Pzmx"/></th>
				<th orderField="fzhsnr" class="${pageInfo.sorterName eq 'fzhsnr' ? pageInfo.sorterDirection : ''}"><hi:text key="辅助核算内容" entity="Pzmx"/></th>
				<th orderField="sliang" class="${pageInfo.sorterName eq 'sliang' ? pageInfo.sorterDirection : ''}"><hi:text key="数量" entity="Pzmx"/></th>
				<th orderField="djia" class="${pageInfo.sorterName eq 'djia' ? pageInfo.sorterDirection : ''}"><hi:text key="单价" entity="Pzmx"/></th>
				<th orderField="wbjfje" class="${pageInfo.sorterName eq 'wbjfje' ? pageInfo.sorterDirection : ''}"><hi:text key="外币借方金额" entity="Pzmx"/></th>
				<th orderField="wbdfje" class="${pageInfo.sorterName eq 'wbdfje' ? pageInfo.sorterDirection : ''}"><hi:text key="外币贷方金额" entity="Pzmx"/></th>
				<th orderField="zhaiyao" class="${pageInfo.sorterName eq 'zhaiyao' ? pageInfo.sorterDirection : ''}"><hi:text key="摘要" entity="Pzmx"/></th>
				<th orderField="orgs.orgName" class="${pageInfo.sorterName eq 'orgs.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Pzmx"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${pzmxs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td><authz:authorize ifAnyGranted="KJKM_VIEW"><a href="<hi:url>kjkmView.action?kjkm.id=${item.kjkm.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.kjkm.kmwz}
					<authz:authorize ifAnyGranted="KJKM_VIEW"></a></authz:authorize>
					</td>
				    <td>${item.dfje}</td>
				    <td>${item.jfje}</td>
				    <td>${item.kmbz}</td>
				    <td>${item.hlv}</td>
				    <td>${item.fzhs}</td>
				    <td>${item.fzhsnr}</td>
				    <td>${item.sliang}</td>
				    <td>${item.djia}</td>
				    <td>${item.wbjfje}</td>
				    <td>${item.wbdfje}</td>
				    <td>${item.zhaiyao}</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.orgs.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.orgs.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="PZMX_DEL">
				      <a class="btnDel" href="<hi:url>pzmxRemove.action?ajax=1&pzmx.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="凭证明细"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="PZMX_VIEW">
				      <a class="btnView" href="<hi:url>pzmxView.action?pzmx.id=${item.id}</hi:url>" target="navTab" rel="pzmx" title="<hi:text key="查看" parameterLanguageKeys="凭证明细"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="PZMX_SAVE">
				      <a class="btnEdit" href="<hi:url>pzmxEdit.action?pzmx.id=${item.id}</hi:url>" target="navTab" rel="pzmx" title="<hi:text key="编辑" parameterLanguageKeys="凭证明细"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', kmwz:'${item.kjkm.kmwz}',dfje:'${item.dfje}',jfje:'${item.jfje}',kmbz:'${item.kmbz}',hlv:'${item.hlv}',fzhs:'${item.fzhs}',fzhsnr:'${item.fzhsnr}',sliang:'${item.sliang}',djia:'${item.djia}',wbjfje:'${item.wbjfje}',wbdfje:'${item.wbdfje}',zhaiyao:'${item.zhaiyao}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
