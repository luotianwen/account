<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

 <c:choose>
	<c:when test="${empty message.id}">
		<h2 class="contentTitle"><hi:text key="新建－" parameterLanguageKeys="消息"/></h2>
	</c:when>
	<c:otherwise>
		<h2 class="contentTitle"><hi:text key="编辑－" parameterLanguageKeys="消息"/></h2>
	</c:otherwise>
</c:choose>
<form action="messageSave.action?navTabId=messageList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
	  <dl>
			<dt><hi:text key="接收者" entity="Message"/>：</dt>
			<dd>
				<input type="text" name="message.receivers" value="${message.receivers}"/>
			</dd>
		</dl>	 
		<dl>
			<dt><hi:text key="收信人" entity="Message"/>：</dt>
			<dd><input type="text" name="message.receiverNames" class="textInput required" value="${message.receiverNames}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="发信人" entity="Message"/>：</dt>
			<dd><input type="text" name="message.sender" class="textInput" value="${message.sender}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="消息类型" entity="Message"/>：</dt>
			<dd><hi:select emu="messageType" name="message.messageType"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="消息正文" entity="Message"/>：</dt>
			<dd><input type="text" name="message.messageText" class="textInput" value="${message.messageText}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="创建时间" entity="Message"/>：</dt>
			<dd>
			<input type="text" name="message.createDate" class="textInput date required" readonly="readonly"
					value="<fmt:formatDate value='${message.createDate}' pattern='yyyy-MM-dd HH:mm:ss'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="发送时间" entity="Message"/>：</dt>
			<dd>
			<input type="text" name="message.sendDate" class="textInput date required" readonly="readonly"
					value="<fmt:formatDate value='${message.sendDate}' pattern='yyyy-MM-dd HH:mm:ss'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="已发送" entity="Message"/>：</dt>
			<dd><hi:select emu="yesNo" name="message.isSent"/></dd>
		</dl>
		<dl  class="nowrap">
			<dt><hi:text key="描述" entity="Message"/>：</dt>
			<dd>
				<textarea class="editor required" name="message.description" rows="8" cols="95"
					upLinkUrl="xhEditorUpload.action" upLinkExt="zip,rar,txt" 
					upImgUrl="xhEditorUpload.action" upImgExt="jpg,jpeg,gif,png" 
					upFlashUrl="xhEditorUpload.action" upFlashExt="swf"
					upMediaUrl="xhEditorUpload.action" upMediaExt:"avi" html5Upload="false">
				${message.description}</textarea>
			</dd>
		</dl> 
		<input type="hidden" id="message.id" name="message.id" value="${message.id }">
		<input type="hidden" id="message.creator.id" name="message.creator.id" value="${message.creator.id}">
		<input type="hidden" id="message.version" name="message.version" value="${message.version}">
		<div class="divider"></div>
			<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="消息参数"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:150px;">
				<div>
					<table class="list nowrap" width="100%" itemDetail="message.messageParameters">
						<thead>
							<tr>
								<th type="text" class=" required" name="parameterKey" size="12"><hi:text key="参数键" entity="MessageParameter"/></th>
								<th type="text" class=" required" name="parameterValue" size="12"><hi:text key="参数值" entity="MessageParameter"/></th>
 								<th type="del" width="60"><hi:text key="操作"/></th> 
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${message.messageParameters}"  varStatus="s">
							<tr>
							<input type="hidden" name="message.messageParameters[${s.index}].id" value="${item.id}"/>
							<input type="hidden" name="message.messageParameters[${s.index}].version" value="${item.version}"/>
								<td>
								<input type="text" class="textInput" name="message.messageParameters[${s.index}].parameterKey" value="${item.parameterKey}" size="12"/>
								</td>
								<td>
									<input type="text" name="message.messageParameters[${s.index}].parameterValue" value="${item.parameterValue}"  size="12"/>
								</td>
 								<td><a href="<hi:url>messageRemove.action?ajax=1&message.id=${item.id}</hi:url>" class="btnDel" title="<hi:text key="确定要删除吗?"/>">删除</a></td>
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
		