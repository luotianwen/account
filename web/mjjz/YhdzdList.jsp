<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="yhdzdList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="yhdzdList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li class="dateRange">
				<label><hi:text key="日期" entity="Yhdzd"/>:</label>
				<input type="text" name="pageInfo.f_yhRQ" class="date" readonly="readonly" value="<fmt:formatDate value='${pageInfo.f_yhRQ}' pattern='yyyy-MM-dd'/>"/>
				<input type="hidden" name="pageInfo.f_yhRQ_op" value="&gt;="><span class="limit">-</span>
				<input type="text" name="pageInfo.f_yhRQ01" class="date" readonly="readonly" value="<fmt:formatDate value='${pageInfo.f_yhRQ01}' pattern='yyyy-MM-dd'/>"/>
				<input type="hidden" name="pageInfo.f_yhRQ01_op" value="&lt;=">
			</li>	  
			<li>
				<label><hi:text key="银行名称" entity="Yhdzd"/>:</label>
				<input type="text" name="pageInfo.yhm.f_yhmc" value="${pageInfo.yhm.f_yhmc}"/>
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
				<authz:authorize ifAnyGranted="YHDZD_SAVE"><li><a class="add" href="<hi:url>yhdzdEdit.action?yhdzd.id=-1</hi:url>" target="navTab" rel="yhdzd"><span><hi:text key="新建" parameterLanguageKeys="银行对账单"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="YHDZD_DEL"><li><a class="delete" href="<hi:url>yhdzdRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', yhRQ:'',yhZY:'',pjh:'',yhJFJE:'',yhDFJE:'',yhYE:'',ztai:'',fjs:'',yhmc:'',yhPZH:'',tick:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="yhRQ" class="${pageInfo.sorterName eq 'yhRQ' ? pageInfo.sorterDirection : ''}"><hi:text key="日期" entity="Yhdzd"/></th>
				<th orderField="yhZY" class="${pageInfo.sorterName eq 'yhZY' ? pageInfo.sorterDirection : ''}"><hi:text key="摘要" entity="Yhdzd"/></th>
				<th orderField="pjh" class="${pageInfo.sorterName eq 'pjh' ? pageInfo.sorterDirection : ''}"><hi:text key="票据号" entity="Yhdzd"/></th>
				<th orderField="yhJFJE" class="${pageInfo.sorterName eq 'yhJFJE' ? pageInfo.sorterDirection : ''}"><hi:text key="借方金额" entity="Yhdzd"/></th>
				<th orderField="yhDFJE" class="${pageInfo.sorterName eq 'yhDFJE' ? pageInfo.sorterDirection : ''}"><hi:text key="贷方金额" entity="Yhdzd"/></th>
				<th orderField="yhYE" class="${pageInfo.sorterName eq 'yhYE' ? pageInfo.sorterDirection : ''}"><hi:text key="余额" entity="Yhdzd"/></th>
				<th orderField="ztai" class="${pageInfo.sorterName eq 'ztai' ? pageInfo.sorterDirection : ''}"><hi:text key="状态" entity="Yhdzd"/></th>
				<th orderField="fjs" class="${pageInfo.sorterName eq 'fjs' ? pageInfo.sorterDirection : ''}"><hi:text key="发票张数" entity="Yhdzd"/></th>
				<th orderField="yhm.yhmc" class="${pageInfo.sorterName eq 'yhm.yhmc' ? pageInfo.sorterDirection : ''}"><hi:text key="银行名称" entity="Yhdzd"/></th>
				<th orderField="yhPZH" class="${pageInfo.sorterName eq 'yhPZH' ? pageInfo.sorterDirection : ''}"><hi:text key="凭证字号" entity="Yhdzd"/></th>
				<th orderField="tick" class="${pageInfo.sorterName eq 'tick' ? pageInfo.sorterDirection : ''}"><hi:text key="勾对" entity="Yhdzd"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${yhdzds}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
					<td><fmt:formatDate value="${item.yhRQ}" pattern="yyyy-MM-dd"/></td>
				    <td>${item.yhZY}</td>
				    <td>${item.pjh}</td>
				    <td>${item.yhJFJE}</td>
				    <td>${item.yhDFJE}</td>
				    <td>${item.yhYE}</td>
				    <td><hi:select emu="yhdzdzt" name="yhdzds[${s.index}].ztai" isLabel="true"/></td>
				    <td>${item.fjs}</td>
				    <td><authz:authorize ifAnyGranted="YHSZ_VIEW"><a href="<hi:url>yhszView.action?yhsz.id=${item.yhm.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.yhm.yhmc}
					<authz:authorize ifAnyGranted="YHSZ_VIEW"></a></authz:authorize>
					</td>
				    <td>${item.yhPZH}</td>
				    <td><hi:select emu="yesNo" name="yhdzds[${s.index}].tick" isLabel="true"/></td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="YHDZD_DEL">
				      <a class="btnDel" href="<hi:url>yhdzdRemove.action?ajax=1&yhdzd.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="银行对账单"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHDZD_VIEW">
				      <a class="btnView" href="<hi:url>yhdzdView.action?yhdzd.id=${item.id}</hi:url>" target="navTab" rel="yhdzd" title="<hi:text key="查看" parameterLanguageKeys="银行对账单"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="YHDZD_SAVE">
				      <a class="btnEdit" href="<hi:url>yhdzdEdit.action?yhdzd.id=${item.id}</hi:url>" target="navTab" rel="yhdzd" title="<hi:text key="编辑" parameterLanguageKeys="银行对账单"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', yhRQ:'${item.yhRQ}',yhZY:'${item.yhZY}',pjh:'${item.pjh}',yhJFJE:'${item.yhJFJE}',yhDFJE:'${item.yhDFJE}',yhYE:'${item.yhYE}',ztai:'<hi:select emu="yhdzdzt" name="yhdzds[${s.index}].ztai" isLabel="true"/>',fjs:'${item.fjs}',yhmc:'${item.yhm.yhmc}',yhPZH:'${item.yhPZH}',tick:'<hi:select emu="yesNo" name="yhdzds[${s.index}].tick" isLabel="true"/>'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
