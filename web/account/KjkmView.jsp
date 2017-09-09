<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="科目设置"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="科目编号" entity="Kjkm"/>：</dt><dd>${kjkm.kmbh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Kjkm"/>：</dt><dd>${kjkm.kmmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="科目方向" entity="Kjkm"/>：</dt><dd><hi:select emu="kmfx" name="kjkm.kmfx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目级次" entity="Kjkm"/>：</dt><dd>${kjkm.kmjc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="科目类型" entity="Kjkm"/>：</dt><dd><hi:select emu="kmlx" name="kjkm.kmlx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目位置" entity="Kjkm"/>：</dt><dd>${kjkm.kmwz}</dd>
		</dl>
		<dl>
			<dt><hi:text key="科目明细" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.kmmx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="上级科目" entity="Kjkm"/>：</dt><dd>${kjkm.flkjkm.kmmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币核算" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.wbhs" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="数量金额式核算" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.sljehs" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Kjkm"/>：</dt><dd>${kjkm.fzhs.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Kjkm"/>：</dt><dd>${kjkm.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
