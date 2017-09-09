<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<form id="pagerForm" action="kmyebList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>

<div class="pageHeader">
	<form rel="pagerForm" method="post" action="kmyebList.action?lookup=${lookup}" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<ul class="searchContent">	
			<li>
				<label><hi:text key="会计期间" entity="Kmyeb"/>:</label>
				<input type="text" name="pageInfo.f_kjqj" value="${pageInfo.f_kjqj}"/>
			</li>	  
			<li>
				<label><hi:text key="科目名称" entity="Kmyeb"/>:</label>
				<input type="text" name="pageInfo.kmmclookup.f_kmmc" value="${pageInfo.kmmclookup.f_kmmc}"/>
			</li>	  
			<li>
				<label><hi:text key="部门名称" entity="Kmyeb"/>:</label>
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
				<authz:authorize ifAnyGranted="KMYEB_SAVE"><li><a class="add" href="<hi:url>kmyebEdit.action?kmyeb.id=-1</hi:url>" target="navTab" rel="kmyeb"><span><hi:text key="新建" parameterLanguageKeys="科目余额表"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="KMYEB_DEL"><li><a class="delete" href="<hi:url>kmyebRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', bnljjf:'',bnljdf:'',bnljjfbwb:'',bnljdfbwb:'',jffse:'',dffse:'',qcyefx:'',qmyefx:'',qmye:'',ncsl:'',ncye:'',ncyebwb:'',sljffsesl:'',sldffsesl:'',slbnljjfsl:'',slbnljdfsl:'',slqcyesl:'',slqcyedj:'',slqmyesl:'',slqmyedj:'',fzhs:'',kjqj:'',jldw:'',qcye:'',cshbwb:'',wbqmye:'',qcbnjf:'',qcbndf:'',qcbnjfbwb:'',qcbndfbwb:'',jzqyeljs:'',jzqyebqs:'',kmmc:'',gsmc:'',bzname:'',fzhsnr:'',orgName:''})"><span><hi:text key="重置"/></span></a></li>
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
				<th orderField="bnljjf" class="${pageInfo.sorterName eq 'bnljjf' ? pageInfo.sorterDirection : ''}"><hi:text key="本年累计借方" entity="Kmyeb"/></th>
				<th orderField="bnljdf" class="${pageInfo.sorterName eq 'bnljdf' ? pageInfo.sorterDirection : ''}"><hi:text key="本年累计贷方" entity="Kmyeb"/></th>
				<th orderField="jffse" class="${pageInfo.sorterName eq 'jffse' ? pageInfo.sorterDirection : ''}"><hi:text key="本期发生借方" entity="Kmyeb"/></th>
				<th orderField="dffse" class="${pageInfo.sorterName eq 'dffse' ? pageInfo.sorterDirection : ''}"><hi:text key="本期发生贷方" entity="Kmyeb"/></th>
				<th orderField="qcyefx" class="${pageInfo.sorterName eq 'qcyefx' ? pageInfo.sorterDirection : ''}"><hi:text key="期初余额方向" entity="Kmyeb"/></th>
				<th orderField="qmyefx" class="${pageInfo.sorterName eq 'qmyefx' ? pageInfo.sorterDirection : ''}"><hi:text key="期末余额方向" entity="Kmyeb"/></th>
				<th orderField="qmye" class="${pageInfo.sorterName eq 'qmye' ? pageInfo.sorterDirection : ''}"><hi:text key="期末余额" entity="Kmyeb"/></th>
				<th orderField="ncye" class="${pageInfo.sorterName eq 'ncye' ? pageInfo.sorterDirection : ''}"><hi:text key="年初余额外币" entity="Kmyeb"/></th>
				<th orderField="kjqj" class="${pageInfo.sorterName eq 'kjqj' ? pageInfo.sorterDirection : ''}"><hi:text key="会计期间" entity="Kmyeb"/></th>
				<th orderField="qcye" class="${pageInfo.sorterName eq 'qcye' ? pageInfo.sorterDirection : ''}"><hi:text key="本位币期初余额" entity="Kmyeb"/></th>
				<th orderField="qcbnjf" class="${pageInfo.sorterName eq 'qcbnjf' ? pageInfo.sorterDirection : ''}"><hi:text key="期初本年借方" entity="Kmyeb"/></th>
				<th orderField="qcbndf" class="${pageInfo.sorterName eq 'qcbndf' ? pageInfo.sorterDirection : ''}"><hi:text key="期初本年贷方" entity="Kmyeb"/></th>
				<th orderField="kmmclookup.kmmc" class="${pageInfo.sorterName eq 'kmmclookup.kmmc' ? pageInfo.sorterDirection : ''}"><hi:text key="科目名称" entity="Kmyeb"/></th>
				<th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${kmyebs}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.bnljjf}</td>
				    <td>${item.bnljdf}</td>
				    <td>${item.jffse}</td>
				    <td>${item.dffse}</td>
				    <td>${item.qcyefx}</td>
				    <td>${item.qmyefx}</td>
				    <td>${item.qmye}</td>
				    <td>${item.ncye}</td>
				    <td>${item.kjqj}</td>
				    <td>${item.qcye}</td>
				    <td>${item.qcbnjf}</td>
				    <td>${item.qcbndf}</td>
				    <td><authz:authorize ifAnyGranted="KJKM_VIEW"><a href="<hi:url>kjkmView.action?kjkm.id=${item.kmmclookup.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.kmmclookup.kmmc}
					<authz:authorize ifAnyGranted="KJKM_VIEW"></a></authz:authorize>
					</td>
				    
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="KMYEB_DEL">
				      <a class="btnDel" href="<hi:url>kmyebRemove.action?ajax=1&kmyeb.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="科目余额表"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="KMYEB_VIEW">
				      <a class="btnView" href="<hi:url>kmyebView.action?kmyeb.id=${item.id}</hi:url>" target="navTab" rel="kmyeb" title="<hi:text key="查看" parameterLanguageKeys="科目余额表"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="KMYEB_SAVE">
				      <a class="btnEdit" href="<hi:url>kmyebEdit.action?kmyeb.id=${item.id}</hi:url>" target="navTab" rel="kmyeb" title="<hi:text key="编辑" parameterLanguageKeys="科目余额表"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', bnljjf:'${item.bnljjf}',bnljdf:'${item.bnljdf}',bnljjfbwb:'${item.bnljjfbwb}',bnljdfbwb:'${item.bnljdfbwb}',jffse:'${item.jffse}',dffse:'${item.dffse}',qcyefx:'${item.qcyefx}',qmyefx:'${item.qmyefx}',qmye:'${item.qmye}',ncsl:'${item.ncsl}',ncye:'${item.ncye}',ncyebwb:'${item.ncyebwb}',sljffsesl:'${item.sljffsesl}',sldffsesl:'${item.sldffsesl}',slbnljjfsl:'${item.slbnljjfsl}',slbnljdfsl:'${item.slbnljdfsl}',slqcyesl:'${item.slqcyesl}',slqcyedj:'${item.slqcyedj}',slqmyesl:'${item.slqmyesl}',slqmyedj:'${item.slqmyedj}',fzhs:'${item.fzhs}',kjqj:'${item.kjqj}',jldw:'${item.jldw}',qcye:'${item.qcye}',cshbwb:'${item.cshbwb}',wbqmye:'${item.wbqmye}',qcbnjf:'${item.qcbnjf}',qcbndf:'${item.qcbndf}',qcbnjfbwb:'${item.qcbnjfbwb}',qcbndfbwb:'${item.qcbndfbwb}',jzqyeljs:'${item.jzqyeljs}',jzqyebqs:'${item.jzqyebqs}',kmmc:'${item.kmmclookup.kmmc}',gsmc:'${item.gsid.gsmc}',bzname:'${item.bzname}',fzhsnr:'${item.fzhsnr}',orgName:'${item.orgs.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
