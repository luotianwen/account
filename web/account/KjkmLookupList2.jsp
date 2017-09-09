<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<div class="pageContent">
	<div class="panelBar">
		<ul class="toolBar">
				<authz:authorize ifAnyGranted="KJKM_SAVE"><li><a class="add" href="<hi:url>kjkmEdit2.action?kjkm.id=-1&kjkm.kmlx=${pageInfo.f_kmlx}&condition.condition10=${condition.condition10}</hi:url>" target="navTab" rel="kjkm"><span><hi:text key="新建" parameterLanguageKeys="科目设置"/></span></a></li></authz:authorize>
		</ul>
	</div>
	<table class="table" width="100%" layoutH="120" targetType="${targetType}">
		<thead>
			<tr>
				 
				<th ><hi:text key="科目编号" entity="Kjkm"/></th>
				<th ><hi:text key="科目名称" entity="Kjkm"/></th>
				<th ><hi:text key="科目位置" entity="Kjkm"/></th>
				<th ><hi:text key="操作"/> 	</th>
			</tr>
		</thead>				
		<tbody>
			<c:forEach var="item" items="${kjkms}" varStatus="s">
			<tr>
				 	 
				    <td><c:forEach begin="1" end="${item.kmjc}" step="1">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</c:forEach>${item.kmbh}</td>
				     <td>${item.kmmc}</td>
				    <td>${item.kmwz}</td>
				  
				    <td>
				      <a class="btnDel" href="kjkmRemove.action?ajax=1&kjkm.id=${item.id}&condition.condition10=${condition.condition10}" target="navTabTodo"  > 删除 </a>
				      <a class="btnEdit" href="kjkmEdit2.action?kjkm.id=${item.id}&condition.condition10=${condition.condition10}" target="navTab" rel="kjkm"  > 编辑 </a>
				      <a class="btnView" href="kjkmView.action?kjkm.id=${item.id}" target="navTab" rel="kjkm"  > 查看 </a>
			
				    </td>
			</tr>
			</c:forEach>
		</tbody>
	</table>	
</div>
