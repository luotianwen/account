<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="helperList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="helperList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="辅助编码" entity="Helper"/>:</label>
				<input type="text" name="pageInfo.f_helperCode" value="${pageInfo.f_helperCode}"/>
			</li>	  
			<li>
				<label><hi:text key="标题" entity="Helper"/>:</label>
				<input type="text" name="pageInfo.f_title" value="${pageInfo.f_title}"/>
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
				<li><a class="add" href="<hi:url>helperEdit.action?helper.id=-1</hi:url>" target="navTab" rel="helper"><span><hi:text key="新建" parameterLanguageKeys="辅助管理"/></span></a></li>
				<li><a class="delete" href="<hi:url>helperRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', helperCode:'',title:'',urlAction:'',isWithPara:'',activeHelp:'',activeCode:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="helperCode" class="${pageInfo.sorterName eq 'helperCode' ? pageInfo.sorterDirection : ''}"><hi:text key="辅助编码" entity="Helper"/></th>
				<th orderField="title" class="${pageInfo.sorterName eq 'title' ? pageInfo.sorterDirection : ''}"><hi:text key="标题" entity="Helper"/></th>
				<th orderField="urlAction" class="${pageInfo.sorterName eq 'urlAction' ? pageInfo.sorterDirection : ''}"><hi:text key="URL" entity="Helper"/></th>
				<th orderField="isWithPara" class="${pageInfo.sorterName eq 'isWithPara' ? pageInfo.sorterDirection : ''}"><hi:text key="是否带参数" entity="Helper"/></th>
				<th orderField="activeHelp" class="${pageInfo.sorterName eq 'activeHelp' ? pageInfo.sorterDirection : ''}"><hi:text key="激活帮助" entity="Helper"/></th>
				<th orderField="activeCode" class="${pageInfo.sorterName eq 'activeCode' ? pageInfo.sorterDirection : ''}"><hi:text key="激活编码" entity="Helper"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${helpers}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.helperCode}</td>
				    <td>${item.title}</td>
				    <td>${item.urlAction}</td>
				    <td><hi:select emu="yesNo" name="helpers[${s.index}].isWithPara" isLabel="true"/></td>
				    <td><hi:select emu="yesNo" name="helpers[${s.index}].activeHelp" isLabel="true"/></td>
				    <td><hi:select emu="yesNo" name="helpers[${s.index}].activeCode" isLabel="true"/></td>
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				      <a class="btnDel" href="<hi:url>helperRemove.action?ajax=1&helper.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="辅助管理"/>"><hi:text key="删除"/></a>
				      <a class="btnView" href="<hi:url>helperView.action?helper.id=${item.id}</hi:url>" target="navTab" rel="helper" title="<hi:text key="查看" parameterLanguageKeys="辅助管理"/>"><hi:text key="查看"/></a>
				      <a class="btnEdit" href="<hi:url>helperEdit.action?helper.id=${item.id}</hi:url>" target="navTab" rel="helper" title="<hi:text key="编辑" parameterLanguageKeys="辅助管理"/>"><hi:text key="编辑"/></a>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', helperCode:'${item.helperCode}',title:'${item.title}',urlAction:'${item.urlAction}',isWithPara:'<hi:select emu="yesNo" name="helpers[${s.index}].isWithPara" isLabel="true"/>',activeHelp:'<hi:select emu="yesNo" name="helpers[${s.index}].activeHelp" isLabel="true"/>',activeCode:'<hi:select emu="yesNo" name="helpers[${s.index}].activeCode" isLabel="true"/>'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
