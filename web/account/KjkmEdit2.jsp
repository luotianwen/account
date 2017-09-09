<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="科目设置"/></h2>
<form action="kjkmSave.action?navTabId=kjkmList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="科目编号" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmbh" class="textInput required" value="${kjkm.kmbh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Kjkm"/>：</dt><dd><input type="text" name="kjkm.kmmc" class="textInput required" value="${kjkm.kmmc}" /></dd>
		</dl>
		 <input type="hidden" name="kjkm.id" value="${kjkm.id}"/>
				<input type="hidden" name="kjkm.creator.id" value="${kjkm.creator.id}"/>
				<input type="hidden" value="${kjkm.version}"/>
               <input type="hidden" name="kjkm.kmwz" value="${kjkm.kmwz}"/>
		
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
