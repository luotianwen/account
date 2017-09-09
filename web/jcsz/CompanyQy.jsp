<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle" align="center" style=" border-bottom: 0px">系统启用</h2>
<form action="companyQySave.action?navTabId=companyQy&callbackType=&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="公司名称" entity="Company"/>：</dt><dd><input type="text" name="company.gsmc" readonly="readonly" value="${company.gsmc}" /></dd>
		</dl>
		
		<dl>
			<dt><hi:text key="系统启用时间" entity="Company"/>：</dt><dd>
			<input type="text" name="company.qysj" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${company.qysj}"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			
			</dd>
		</dl>
				<input type="hidden" name="company.id" value="${company.id}"/>
				
<!-- 
		<div class="divider"></div> -->
			</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
  
</div>
</form>
