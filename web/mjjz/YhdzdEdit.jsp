<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="银行对账单"/></h2>
<form action="yhdzdSave.action?navTabId=yhdzdList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="日期" entity="Yhdzd"/>：</dt>
			<dd>
				<input type="text" name="yhdzd.yhRQ" class="textInput date required" readonly="readonly"
					value="<fmt:formatDate value='${yhdzd.yhRQ}' pattern='yyyy-MM-dd'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="摘要" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.yhZY" class="textInput" value="${yhdzd.yhZY}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="票据号" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.pjh" class="textInput" value="${yhdzd.pjh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="借方金额" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.yhJFJE" class="textInput float" value="${yhdzd.yhJFJE}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="贷方金额" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.yhDFJE" class="textInput float" value="${yhdzd.yhDFJE}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="余额" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.yhYE" class="textInput float" value="${yhdzd.yhYE}" alt="<hi:text key="请输浮点数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="状态" entity="Yhdzd"/>：</dt><dd><hi:select emu="yhdzdzt" name="yhdzd.ztai"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="发票张数" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.fjs" class="textInput integer" value="${yhdzd.fjs}" alt="<hi:text key="请输入整数"/>"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="银行名称" entity="Yhdzd"/>：</dt>
			<dd>
				<input type="hidden" name="yhdzd.yhm.id" value="${yhdzd.yhm.id}"/>
				<input type="text" class="textInput" name="yhdzd.hi_yhm.yhmc" value="${yhdzd.yhm.yhmc}"
					autocomplete="off" lookupGroup="yhdzd" lookupName="yhm" suggestClass="com.huolong.jcsz.model.Yhsz" searchFields="yhmc"/>
				<a class="btnLook" href="<hi:url>yhszLookup.action?lookup=1</hi:url>" lookupGroup="yhdzd" lookupName="yhm"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="凭证字号" entity="Yhdzd"/>：</dt><dd><input type="text" name="yhdzd.yhPZH" class="textInput" value="${yhdzd.yhPZH}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="勾对" entity="Yhdzd"/>：</dt><dd><hi:select emu="yesNo" name="yhdzd.tick"/></dd>			
		</dl>
				<input type="hidden" name="yhdzd.id" value="${yhdzd.id}"/>
				<input type="hidden" name="yhdzd.orgName.orgName" value="${yhdzd.orgName.orgName}"/>
				<input type="hidden" name="yhdzd.creator.id" value="${yhdzd.creator.id}"/>
				<input type="hidden" name="yhdzd.version" value="${yhdzd.version}"/>

		<div class="divider"></div>
		
		<div class="tabs">
			<div class="tabsHeader">
				<div class="tabsHeaderContent">
					<ul>
						<li><a href="javascript:void(0)"><span><hi:text key="银行对账单明细"/></span></a></li>
					</ul>
				</div>
			</div>
			<div class="tabsContent" style="height:150px;">
				<div>
					<table class="list nowrap" width="100%" itemDetail="yhdzd.yhdzdMXs">
						<thead>
							<tr>
								<th type="lookup" class="" name="name" lookupName="sfk" lookupUrl="<hi:url>sfkLookup.action?lookup=1</hi:url>" suggestClass="com.huolong.mjjz.model.Sfk" searchFields="name" size="12"><hi:text key="收付款类型" entity="YhdzdMX"/></th>
								<th type="text" class=" float" name="yhje" size="12"><hi:text key="金额" entity="YhdzdMX"/></th>
								<th type="text" class=" integer" name="fjs" size="12"><hi:text key="发票张数" entity="YhdzdMX"/></th>
								<th type="text" class="" name="wldw" size="12" maxlength="30"><hi:text key="对方单位名称" entity="YhdzdMX"/></th>
								<th type="text" class="" name="biaos" size="12" maxlength="30"><hi:text key="备注" entity="YhdzdMX"/></th>
								<th type="del" width="60"><hi:text key="操作"/></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="item" items="${yhdzd.yhdzdMXs}"  varStatus="s">
							<tr>
							<input type="hidden" name="yhdzd.yhdzdMXs[${s.index}].id" value="${item.id}"/>
							<input type="hidden" name="yhdzd.yhdzdMXs[${s.index}].version" value="${item.version}"/>
								<td>
									<input type="hidden" name="yhdzd.yhdzdMXs[${s.index}].sfk.id" value="${item.sfk.id}"/>
									<input type="text" class="" name="yhdzd.yhdzdMXs[${s.index}].hi_sfk.name" value="${item.sfk.name}" size="12" 
										autocomplete="off" lookupGroup="yhdzd.yhdzdMXs" lookupName="sfk" index="${s.index}" suggestClass="com.huolong.mjjz.model.Sfk" searchFields="name"/>
									<a class="btnLook" href="<hi:url>sfkLookup.action?lookup=1</hi:url>" lookupGroup="yhdzd.yhdzdMXs" lookupName="sfk" index="${s.index}" title="<hi:text key="查找带回"/>"><hi:text key="查找带回"/></a>
								</td>
								<td>
									<input type="text" class=" float" name="yhdzd.yhdzdMXs[${s.index}].yhje" value="${item.yhje}" size="12" alt="<hi:text key="请输浮点数"/>"/>
								</td>
								<td>
									<input type="text" class=" integer" name="yhdzd.yhdzdMXs[${s.index}].fjs" value="${item.fjs}" size="12" alt="<hi:text key="请输入整数"/>"/>
								</td>
								<td>
									<input type="text" class="" name="yhdzd.yhdzdMXs[${s.index}].wldw" value="${item.wldw}" size="12" maxlength="30"/>
								</td>
								<td>
									<input type="text" class="" name="yhdzd.yhdzdMXs[${s.index}].biaos" value="${item.biaos}" size="12" maxlength="30"/>
								</td>
								<td><a href="<hi:url>yhdzdMXRemove.action?ajax=1&yhdzdMX.id=${item.id}</hi:url>" class="btnDel" title="<hi:text key="确定要删除吗?"/>">删除</a></td>
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
