<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="上传科目余额表"/></h2>
<form action="oldkmyebSave.action?navTabId=oldkmyebList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="附件" entity="Oldkmyeb"/>：</dt>
			<dd>
				<input type="hidden" name="oldkmyeb.att_attachment.id" value="${oldkmyeb.att_attachment.id}"/>
				<input type="text" class="textInput required" name="oldkmyeb.hi_att_attachment.fileName" value="${oldkmyeb.att_attachment.fileName}" readonly="readonly"/>
				<a class="btnAttach" href="<hi:url>attachmentLookup.action?lookup=1&from=attachment&saveType=1</hi:url>" lookupGroup="oldkmyeb" lookupName="att_attachment" width="560" height="300" title="<hi:text key="附件"/>"><hi:text key="附件"/></a>
				<c:if test="${not empty oldkmyeb.att_attachment}">
				<a class="btnView" href="attachmentView.action?attachment.id=${oldkmyeb.att_attachment.id}" target="_blank">
					<hi:text key="查看"/>
				</a>
				</c:if>			
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Oldkmyeb"/>：</dt>
			<dd>
				<input type="hidden" name="oldkmyeb.orgs.id" value="${oldkmyeb.orgs.id}"/>
				<input type="text" class="textInput" name="oldkmyeb.hi_orgs.orgName" value="${oldkmyeb.orgs.orgName}"
					autocomplete="off" lookupGroup="oldkmyeb" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="oldkmyeb" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="oldkmyeb.id" value="${oldkmyeb.id}"/>
				<input type="hidden" name="oldkmyeb.att_attachment" value="${oldkmyeb.att_attachment}"/>
				<input type="hidden" name="oldkmyeb.creator.id" value="${oldkmyeb.creator.id}"/>
				<input type="hidden" name="oldkmyeb.version" value="${oldkmyeb.version}"/>

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
