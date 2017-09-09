<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="银行对账单明细"/></h2>
<form action="yhdzdMXSave.action?navTabId=yhdzdMXList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="收付款类型" entity="YhdzdMX"/>：</dt>
			<dd>
				<input type="hidden" name="yhdzdMX.sfk.id" value="${yhdzdMX.sfk.id}"/>
				<input type="text" class="textInput" name="yhdzdMX.hi_sfk.name" value="${yhdzdMX.sfk.name}"
					autocomplete="off" lookupGroup="yhdzdMX" lookupName="sfk" suggestClass="com.huolong.mjjz.model.Sfk" searchFields="name"/>
				<a class="btnLook" href="<hi:url>sfkLookup.action?lookup=1</hi:url>" lookupGroup="yhdzdMX" lookupName="sfk"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="金额" entity="YhdzdMX"/>：</dt><dd><input type="text" name="yhdzdMX.yhje" class="textInput float" value="${yhdzdMX.yhje}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="发票张数" entity="YhdzdMX"/>：</dt><dd><input type="text" name="yhdzdMX.fjs" class="textInput integer" value="${yhdzdMX.fjs}" alt="<hi:text key="请输入整数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="对方单位名称" entity="YhdzdMX"/>：</dt><dd><input type="text" name="yhdzdMX.wldw" class="textInput" value="${yhdzdMX.wldw}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="备注" entity="YhdzdMX"/>：</dt><dd><input type="text" name="yhdzdMX.biaos" class="textInput" value="${yhdzdMX.biaos}" maxlength="30"/></dd>
		</dl>
				<input type="hidden" name="yhdzdMX.id" value="${yhdzdMX.id}"/>
				<input type="hidden" name="yhdzdMX.yhdzd.id" value="${yhdzdMX.yhdzd.id}"/>
				<input type="hidden" name="yhdzdMX.orgName.orgName" value="${yhdzdMX.orgName.orgName}"/>
				<input type="hidden" name="yhdzdMX.creator.id" value="${yhdzdMX.creator.id}"/>
				<input type="hidden" name="yhdzdMX.version" value="${yhdzdMX.version}"/>

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
