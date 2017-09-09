<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="辅助管理"/></h2>
<form action="helperSave.action?navTabId=helperList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="辅助编码" entity="Helper"/>：</dt><dd><input type="text" name="helper.helperCode" class="textInput" value="${helper.helperCode}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="标题" entity="Helper"/>：</dt><dd><input type="text" name="helper.title" class="textInput" value="${helper.title}" maxlength="50"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="URL" entity="Helper"/>：</dt><dd><input type="text" name="helper.urlAction" class="textInput" value="${helper.urlAction}" maxlength="200"/></dd>
		</dl>
		<dl  class="nowrap">
			<dt><hi:text key="帮助正文" entity="Helper"/>：</dt>
			<dd>
				<textarea class="editor" name="helper.helpContent" rows="8" cols="95"
					upLinkUrl="xhEditorUpload.action" upLinkExt="zip,rar,txt" 
					upImgUrl="xhEditorUpload.action" upImgExt="jpg,jpeg,gif,png" 
					upFlashUrl="xhEditorUpload.action" upFlashExt="swf"
					upMediaUrl="xhEditorUpload.action" upMediaExt:"avi" html5Upload="false">
				${helper.helpContent}</textarea>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="是否带参数" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.isWithPara"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="激活帮助" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.activeHelp"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="激活编码" entity="Helper"/>：</dt><dd><hi:select emu="yesNo" name="helper.activeCode"/></dd>			
		</dl>
				<input type="hidden" name="helper.id" value="${helper.id}"/>
				<input type="hidden" name="helper.version" value="${helper.version}"/>

		<div class="divider"></div>
		
		<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="相关参考"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:150px;">
				<div>
					<table class="list nowrap" width="100%" itemDetail="helper.helperRefs">
						<thead>
							<tr>
								<th type="lookup" class="" name="title" lookupName="refHelper" lookupUrl="<hi:url>helperLookup.action?lookup=1</hi:url>" suggestClass="org.hi.base.sysapp.model.Helper" searchFields="title" size="12"><hi:text key="相关标题" entity="HelperRef"/></th>
								<th type="del" width="60"><hi:text key="操作"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${helper.helperRefs}"  varStatus="s">
							<tr>
							<input type="hidden" name="helper.helperRefs[${s.index}].id" value="${item.id}"/>
							<input type="hidden" name="helper.helperRefs[${s.index}].version" value="${item.version}"/>
								<td>
									<input type="hidden" name="helper.helperRefs[${s.index}].refHelper.id" value="${item.refHelper.id}"/>
									<input type="text" class="" name="helper.helperRefs[${s.index}].hi_refHelper.title" value="${item.refHelper.title}" size="12" 
										autocomplete="off" lookupGroup="helper.helperRefs" lookupName="refHelper" index="${s.index}" suggestClass="org.hi.base.sysapp.model.Helper" searchFields="title"/>
									<a class="btnLook" href="<hi:url>helperLookup.action?lookup=1</hi:url>" lookupGroup="helper.helperRefs" lookupName="refHelper" index="${s.index}" title="<hi:text key="查找带回"/>"><hi:text key="查找带回"/></a>
								</td>
								<td><a href="<hi:url>helperRefRemove.action?ajax=1&helperRef.id=${item.id}</hi:url>" class="btnDel" title="<hi:text key="确定要删除吗?"/>">删除</a></td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>								
				
			</div>
			<div class="tabsFooter">
				<div class="tabsFooterContent"></div>
			</div>
		</div>				
	</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
</div>
</form>
