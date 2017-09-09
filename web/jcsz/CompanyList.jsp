<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<div class="pageHeader">
<form id="pagerForm" action="companyList.action">
	<input type="hidden" name="pageInfo.currentPage" value="${pageInfo.currentPage}" />
	<input type="hidden" name="pageInfo.sorterName" value="${pageInfo.sorterName}" />
	<input type="hidden" name="pageInfo.sorterDirection" value="${pageInfo.sorterDirection}" />
	<input type="hidden" name="lookup" value="${lookup}" />
</form>
</div>
<div class="pageHeader">
	<form rel="pagerForm" method="post" action="companyList.action" onsubmit="return dwzSearch(this, '${targetType}');">
	<input type="hidden" name="pageInfo.pageSize" value="${pageInfo.pageSize}" />
	<div class="searchBar">
		<table width="100%">
			<tr>
				<td>
				<label><hi:text key="公司名称" entity="Company"/>:</label>
				<input type="text" name="pageInfo.f_gsmc" value="${pageInfo.f_gsmc}"/>
				</td>
				<td>
					<div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
				</td>
			</tr>
		</table>
		<div class="subBar">
			
		</div>
	</div>
	</form>
</div>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
		<c:choose>
			<c:when test="${empty lookup}">
				<authz:authorize ifAnyGranted="COMPANY_SAVE"><li><a class="add" href="<hi:url>companyEdit.action?company.id=-1</hi:url>" target="navTab" rel="company"><span><hi:text key="新建" parameterLanguageKeys="企业信息"/></span></a></li></authz:authorize>
				<authz:authorize ifAnyGranted="COMPANY_DEL"><li><a class="delete" href="<hi:url>companyRemoveAll.action?ajax=1</hi:url>" target="removeSelected" title="<hi:text key="确实要删除这些记录吗?"/>"><span><hi:text key="批量删除"/></span></a></li></authz:authorize>
			</c:when>
			<c:otherwise>
				<li><a class="icon" href="javascript:$.bringBack({id:'-1', gsmc:'',swdjh:'',jsjdm:'',zzslx:'',yyzhbh:'',zzjgdm:'',zclx:'',zczj:'',sshy:'',frdb:'',lxdh:'',lxcz:'',dzyx:'',lxr:'',lxrdh:'',lxrdzyx:'',lxrcz:'',zcdz:'',jydz:'',txdz:'',yzbm:'',qysj:'',orgName:'',orgNum:'',managerName:'',parentOrgName:''})"><span><hi:text key="重置"/></span></a></li>
			</c:otherwise>
		</c:choose>			
		</ul>
	</div>
	<table class="table" width="100%" layoutH="116" targetType="${targetType}">
		<thead>
			<tr>
				<c:if test="${empty lookup}">
				<th width="22"><input type="checkbox" group="orderIndexs" class="checkboxCtrl"></th>
				</c:if>
				<th orderField="gsmc" class="${pageInfo.sorterName eq 'gsmc' ? pageInfo.sorterDirection : ''}"><hi:text key="公司名称" entity="Company"/></th>
				<th orderField="swdjh" class="${pageInfo.sorterName eq 'swdjh' ? pageInfo.sorterDirection : ''}"><hi:text key="税务登记号" entity="Company"/></th>
				<th orderField="jsjdm" class="${pageInfo.sorterName eq 'jsjdm' ? pageInfo.sorterDirection : ''}"><hi:text key="计算机代码" entity="Company"/></th>
				<th orderField="qysj" class="${pageInfo.sorterName eq 'qysj' ? pageInfo.sorterDirection : ''}"><hi:text key="系统启用时间" entity="Company"/></th>
				<!-- 
				<th orderField="zzslx" class="${pageInfo.sorterName eq 'zzslx' ? pageInfo.sorterDirection : ''}"><hi:text key="增值税类型" entity="Company"/></th>
				<th orderField="yyzhbh" class="${pageInfo.sorterName eq 'yyzhbh' ? pageInfo.sorterDirection : ''}"><hi:text key="营业执照注册号" entity="Company"/></th>
				<th orderField="zzjgdm" class="${pageInfo.sorterName eq 'zzjgdm' ? pageInfo.sorterDirection : ''}"><hi:text key="组织机构代码" entity="Company"/></th>
				<th orderField="zclx" class="${pageInfo.sorterName eq 'zclx' ? pageInfo.sorterDirection : ''}"><hi:text key="企业类型" entity="Company"/></th>
				<th orderField="zczj" class="${pageInfo.sorterName eq 'zczj' ? pageInfo.sorterDirection : ''}"><hi:text key="注册资本" entity="Company"/></th>
				<th orderField="sshy" class="${pageInfo.sorterName eq 'sshy' ? pageInfo.sorterDirection : ''}"><hi:text key="所属行业" entity="Company"/></th>
				<th orderField="frdb" class="${pageInfo.sorterName eq 'frdb' ? pageInfo.sorterDirection : ''}"><hi:text key="法人代表" entity="Company"/></th>
				<th orderField="lxdh" class="${pageInfo.sorterName eq 'lxdh' ? pageInfo.sorterDirection : ''}"><hi:text key="联系电话" entity="Company"/></th>
				<th orderField="lxcz" class="${pageInfo.sorterName eq 'lxcz' ? pageInfo.sorterDirection : ''}"><hi:text key="传真" entity="Company"/></th>
				<th orderField="dzyx" class="${pageInfo.sorterName eq 'dzyx' ? pageInfo.sorterDirection : ''}"><hi:text key="电子邮箱" entity="Company"/></th>
				<th orderField="lxr" class="${pageInfo.sorterName eq 'lxr' ? pageInfo.sorterDirection : ''}"><hi:text key="常用联系人" entity="Company"/></th>
				<th orderField="lxrdh" class="${pageInfo.sorterName eq 'lxrdh' ? pageInfo.sorterDirection : ''}"><hi:text key="联系人电话" entity="Company"/></th>
				<th orderField="lxrdzyx" class="${pageInfo.sorterName eq 'lxrdzyx' ? pageInfo.sorterDirection : ''}"><hi:text key="联系人电子邮箱" entity="Company"/></th>
				<th orderField="lxrcz" class="${pageInfo.sorterName eq 'lxrcz' ? pageInfo.sorterDirection : ''}"><hi:text key="联系人传真" entity="Company"/></th>
				 <th orderField="zcdz" class="${pageInfo.sorterName eq 'zcdz' ? pageInfo.sorterDirection : ''}"><hi:text key="注册地址" entity="Company"/></th>
				<th orderField="jydz" class="${pageInfo.sorterName eq 'jydz' ? pageInfo.sorterDirection : ''}"><hi:text key="经营地址" entity="Company"/></th>
				<th orderField="txdz" class="${pageInfo.sorterName eq 'txdz' ? pageInfo.sorterDirection : ''}"><hi:text key="通讯地址" entity="Company"/></th>
				<th orderField="yzbm" class="${pageInfo.sorterName eq 'yzbm' ? pageInfo.sorterDirection : ''}"><hi:text key="邮政编码" entity="Company"/></th>
				<th orderField="orgName" class="${pageInfo.sorterName eq 'orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门名称" entity="Company"/></th>
				<th orderField="orgNum" class="${pageInfo.sorterName eq 'orgNum' ? pageInfo.sorterDirection : ''}"><hi:text key="部门编号" entity="Company"/></th>
				<th orderField="manager.fullName" class="${pageInfo.sorterName eq 'manager.fullName' ? pageInfo.sorterDirection : ''}"><hi:text key="部门经理" entity="Company"/></th>
				<th orderField="parentOrg.orgName" class="${pageInfo.sorterName eq 'parentOrg.orgName' ? pageInfo.sorterDirection : ''}"><hi:text key="上级部门" entity="Company"/></th>
				--><th width="90">
					<c:choose>
						<c:when test="${empty lookup}"><hi:text key="操作"/></c:when>
						<c:otherwise><hi:text key="查找带回"/></c:otherwise>
					</c:choose>
				</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${companys}" varStatus="s">
			<tr>
				<c:if test="${empty lookup}">
				<td><input name="orderIndexs" value="${item.id}" type="checkbox"></td>
				</c:if>			
				    <td>${item.gsmc}</td>
				    <td>${item.swdjh}</td>
				    <td>${item.jsjdm}</td>
				  
				    <td>${item.qysj}</td>
				     <!--
				      <td><hi:select emu="zzslx" name="companys[${s.index}].zzslx" isLabel="true"/></td>
				    <td>${item.yyzhbh}</td>
				    <td>${item.zzjgdm}</td>
				    <td><hi:select emu="gslz" name="companys[${s.index}].zclx" isLabel="true"/></td>
				    <td>${item.zczj}</td>
				    <td>${item.sshy}</td>
				    <td>${item.frdb}</td>
				    <td>${item.lxdh}</td>
				    <td>${item.lxcz}</td>
				    <td>${item.dzyx}</td>
				    <td>${item.lxr}</td>
				    <td>${item.lxrdh}</td>
				    <td>${item.lxrdzyx}</td>
				    <td>${item.lxrcz}</td>
				  
				    <td>${item.zcdz}</td>
				    <td>${item.jydz}</td>
				    <td>${item.txdz}</td>
				    <td>${item.yzbm}</td>
				  
				    <td>${item.orgName}</td>
				    <td>${item.orgNum}</td>
				    <td><authz:authorize ifAnyGranted="HIUSER_VIEW"><a href="<hi:url>hiUserView.action?hiUser.id=${item.manager.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.manager.fullName}
					<authz:authorize ifAnyGranted="HIUSER_VIEW"></a></authz:authorize>
					</td>
				    <td><authz:authorize ifAnyGranted="HIORG_VIEW"><a href="<hi:url>hiOrgView.action?hiOrg.id=${item.parentOrg.id}&workflow=-1</hi:url>" target="dialog"></authz:authorize>
					${item.parentOrg.orgName}
					<authz:authorize ifAnyGranted="HIORG_VIEW"></a></authz:authorize>
					</td>-->
				<td>
				<c:choose>
					<c:when test="${empty lookup}">
				    <authz:authorize ifAnyGranted="COMPANY_DEL">
				      <a class="btnDel" href="<hi:url>companyRemove.action?ajax=1&company.id=${item.id}</hi:url>" target="navTabTodo" title="<hi:text key="删除" parameterLanguageKeys="企业信息"/>"><hi:text key="删除"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="COMPANY_VIEW">
				      <a class="btnView" href="<hi:url>companyView.action?company.id=${item.id}</hi:url>" target="navTab" rel="company" title="<hi:text key="查看" parameterLanguageKeys="企业信息"/>"><hi:text key="查看"/></a>
				    </authz:authorize>
				    <authz:authorize ifAnyGranted="COMPANY_SAVE">
				      <a class="btnEdit" href="<hi:url>companyEdit.action?company.id=${item.id}</hi:url>" target="navTab" rel="company" title="<hi:text key="编辑" parameterLanguageKeys="企业信息"/>"><hi:text key="编辑"/></a>
				    </authz:authorize>
					</c:when>
					<c:otherwise>
						<a class="btnSelect" href="javascript:$.bringBack({id:'${item.id}', gsmc:'${item.gsmc}',swdjh:'${item.swdjh}',jsjdm:'${item.jsjdm}',zzslx:'<hi:select emu="zzslx" name="companys[${s.index}].zzslx" isLabel="true"/>',yyzhbh:'${item.yyzhbh}',zzjgdm:'${item.zzjgdm}',zclx:'<hi:select emu="gslz" name="companys[${s.index}].zclx" isLabel="true"/>',zczj:'${item.zczj}',sshy:'${item.sshy}',frdb:'${item.frdb}',lxdh:'${item.lxdh}',lxcz:'${item.lxcz}',dzyx:'${item.dzyx}',lxr:'${item.lxr}',lxrdh:'${item.lxrdh}',lxrdzyx:'${item.lxrdzyx}',lxrcz:'${item.lxrcz}',zcdz:'${item.zcdz}',jydz:'${item.jydz}',txdz:'${item.txdz}',yzbm:'${item.yzbm}',qysj:'${item.qysj}',orgName:'${item.orgName}',orgNum:'${item.orgNum}',managerName:'${item.manager.fullName}',parentOrgName:'${item.parentOrg.orgName}'})" title="<hi:text key="查找带回"/>"><hi:text key="选择"/></a>
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
