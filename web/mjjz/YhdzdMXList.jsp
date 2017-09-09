<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="yhdzdMXList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="yhdzdMXList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
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
				<authz:authorize ifAnyGranted="YHDZDMX_SAVE"><li><a class="add" href="<hi:url>yhdzdMXEdit.action?yhdzdMX.id=-1</hi:url>" target="navTab" rel="yhdzdMX"><span><hi:text key="新建" parameterLanguageKeys="银行对账单明细"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="YHDZDMX_DEL"><li><a class="delete" href="<hi:url>yhdzdMXRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', name:'',yhje:'',fjs:'',wldw:'',biaos:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="sfk.name" class="${pageInfo.sorterName eq 'sfk.name' ? pageInfo.sorterDirection : ''}"><hi:text key="收付款类型" entity="YhdzdMX"/></th>
				<th orderField="yhje" class="${pageInfo.sorterName eq 'yhje' ? pageInfo.sorterDirection : ''}"><hi:text key="金额" entity="YhdzdMX"/></th>
				<th orderField="fjs" class="${pageInfo.sorterName eq 'fjs' ? pageInfo.sorterDirection : ''}"><hi:text key="发票张数" entity="YhdzdMX"/></th>
				<th orderField="wldw" class="${pageInfo.sorterName eq 'wldw' ? pageInfo.sorterDirection : ''}"><hi:text key="对方单位名称" entity="YhdzdMX"/></th>
				<th orderField="biaos" class="${pageInfo.sorterName eq 'biaos' ? pageInfo.sorterDirection : ''}"><hi:text key="备注" entity="YhdzdMX"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${yhdzdMXs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td><authz:authorize ifAnyGranted="SFK_VIEW"><a href="<hi:url>sfkView.action?sfk.id=${item.sfk.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.sfk.name}
					<authz:authorize ifAnyGranted="SFK_VIEW"></a></authz:authorize>
					</td>
				    <td>${item.yhje}</td>
				    <td>${item.fjs}</td>
				    <td>${item.wldw}</td>
				    <td>${item.biaos}</td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="YHDZDMX_DEL">
				      <a class="btnDel" href="<hi:url>yhdzdMXRemove.action?ajax=1&yhdzdMX.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="银行对账单明细"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHDZDMX_VIEW">
				      <a class="btnView" href="<hi:url>yhdzdMXView.action?yhdzdMX.id=${item.id}</hi:url>" target="navTab" rel="yhdzdMX" title="<hi:text key="查看" parameterLanguageKeys="银行对账单明细"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHDZDMX_SAVE">
				      <a class="btnEdit" href="<hi:url>yhdzdMXEdit.action?yhdzdMX.id=${item.id}</hi:url>" target="navTab" rel="yhdzdMX" title="<hi:text key="编辑" parameterLanguageKeys="银行对账单明细"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', name:'${item.sfk.name}',yhje:'${item.yhje}',fjs:'${item.fjs}',wldw:'${item.wldw}',biaos:'${item.biaos}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
