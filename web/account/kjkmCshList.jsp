<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<h2 class="contentTitle" align="center" style=" border-bottom: 0px">会计科目</h2>

<div class="pageContent">
	<div class="tabs" currentIndex="0" eventType="click" changRemove="true">
		<div class="tabsHeader">
			<div class="tabsHeaderContent">
				<ul>
				   
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101500&condition.condition10=0" class="j-ajax"><span>资产类</span></a></li>
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101501&condition.condition10=1" class="j-ajax"><span>负债类</span></a></li>
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101502&condition.condition10=2" class="j-ajax"><span>共同类</span></a></li>
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101503&condition.condition10=3" class="j-ajax"><span>权益类</span></a></li>
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101504&condition.condition10=4" class="j-ajax"><span>成本类</span></a></li>
					<li><a href="kjkmList2.action?pageInfo.f_kmlx=101505&condition.condition10=5" class="j-ajax"><span>损益类</span></a></li> 
				    <c:if test="${orderIndexs}"> <li><a href="downloaddemo2.action?condition.condition10=6" target="_blank"><span>下载模板</span></a></li></c:if>
				    <c:if test="${!orderIndexs}"> <li><a href="downloaddemo.action?condition.condition10=6" target="_blank"><span>下载模板</span></a></li></c:if>
				    <li><a href="kjkmAttEdit.action?kjkmAtt.id=-1&condition.condition10=7" class="j-ajax"><span>批量初始化</span></a></li>
		            <li><a href="kmyebview.action?condition.condition10=8" class="j-ajax"><span>初始化查询</span></a></li>
			 </ul>
			</div>
		</div>
		<div class="tabsContent" style="height:100%">
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<div></div>
			<%--<div></div><div></div>
		--%></div>
		<div class="tabsFooter">
			<div class="tabsFooterContent"></div>
		</div>
	</div>
	
	
</div>