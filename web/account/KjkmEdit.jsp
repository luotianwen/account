<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="科目设置"/></h2>
<form action="kjkmSave.action?navTabId=kjkmList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="科目编号" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmbh" class="textInput required" value="${kjkm.kmbh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmmc" class="textInput required" value="${kjkm.kmmc}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目方向" entity="Kjkm"/>：</dt><dd><hi:select emu="kmfx" name="kjkm.kmfx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="科目级次" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmjc" class="textInput" value="${kjkm.kmjc}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目类型" entity="Kjkm"/>：</dt><dd><hi:select emu="kmlx" name="kjkm.kmlx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="科目位置" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmwz" class="textInput" value="${kjkm.kmwz}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目明细" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.kmmx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="上级科目" entity="Kjkm"/>：</dt>
			<dd>
				<input type="hidden" name="kjkm.flkjkm.id" value="${kjkm.flkjkm.id}"/>
				<input type="text" class="textInput" name="kjkm.hi_flkjkm.kmmc" value="${kjkm.flkjkm.kmmc}"
					autocomplete="off" lookupGroup="kjkm" lookupName="flkjkm" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmmc"/>
				<a class="btnLook" href="<hi:url>kjkmLookup.action?lookup=1</hi:url>" lookupGroup="kjkm" lookupName="flkjkm"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币核算" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.wbhs"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="数量金额式核算" entity="Kjkm"/>：</dt><dd><hi:select emu="yesNo" name="kjkm.sljehs"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Kjkm"/>：</dt>
			<dd>
				<input type="hidden" name="kjkm.fzhs.id" value="${kjkm.fzhs.id}"/>
				<input type="text" class="textInput" name="kjkm.hi_fzhs.name" value="${kjkm.fzhs.name}"
					autocomplete="off" lookupGroup="kjkm" lookupName="fzhs" suggestClass="com.huolong.fzhs.model.Fzhs" searchFields="name"/>
				<a class="btnLook" href="<hi:url>fzhsLookup.action?lookup=1</hi:url>" lookupGroup="kjkm" lookupName="fzhs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Kjkm"/>：</dt>
			<dd>
				<input type="hidden" name="kjkm.orgs.id" value="${kjkm.orgs.id}"/>
				<input type="text" class="textInput" name="kjkm.hi_orgs.orgName" value="${kjkm.orgs.orgName}"
					autocomplete="off" lookupGroup="kjkm" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="kjkm" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="kjkm.id" value="${kjkm.id}"/>
				<input type="hidden" name="kjkm.csh" value="${kjkm.csh}"/>
				<input type="hidden" name="kjkm.creator.id" value="${kjkm.creator.id}"/>
				<input type="hidden" name="kjkm.version" value="${kjkm.version}"/>

		<div class="divider"></div>
			</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
</div>
</form>
