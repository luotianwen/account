<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="辅助核算"/></h2>
<form action="fzhsSave.action?navTabId=fzhsList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="编码" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.code" class="textInput" value="${fzhs.code}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="名称" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.name" class="textInput required" value="${fzhs.name}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.lxr" class="textInput" value="${fzhs.lxr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.lxdh" class="textInput" value="${fzhs.lxdh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="传真号" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.czh" class="textInput" value="${fzhs.czh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="地址" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.addr" class="textInput" value="${fzhs.addr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="启动日期" entity="Fzhs"/>：</dt>
			<dd>
				<input type="text" name="fzhs.qdrq" class="textInput date" readonly="readonly"
					value="<fmt:formatDate value='${fzhs.qdrq}' pattern='yyyy-MM-dd'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="结束日期" entity="Fzhs"/>：</dt>
			<dd>
				<input type="text" name="fzhs.jsrq" class="textInput date" readonly="readonly"
					value="<fmt:formatDate value='${fzhs.jsrq}' pattern='yyyy-MM-dd'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="往来核算性质" entity="Fzhs"/>：</dt><dd><hi:select emu="wlhsxz" name="fzhs.wlhsxz"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="存货性质" entity="Fzhs"/>：</dt><dd><hi:select emu="chxz" name="fzhs.chxz"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="规格型号" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.ggxh" class="textInput" value="${fzhs.ggxh}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="计量单位" entity="Fzhs"/>：</dt><dd><input type="text" name="fzhs.jldw" class="textInput" value="${fzhs.jldw}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="性别" entity="Fzhs"/>：</dt><dd><hi:select emu="gender" name="fzhs.sex"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="辅助核算类型" entity="Fzhs"/>：</dt><dd><hi:select emu="fzhslx" name="fzhs.fzhslx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="名称" entity="Fzhs"/>：</dt>
			<dd>
				<input type="text" class="textInput" name="fzhs.hi_myselef.name" value="${fzhs.myselef.name}" readonly="readonly"/>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="编码" entity="Fzhs"/>：</dt>
			<dd>
				<input type="hidden" name="fzhs.myselef.id" value="${fzhs.myselef.id}"/>
				<input type="text" class="textInput" name="fzhs.hi_myselef.code" value="${fzhs.myselef.code}"
					autocomplete="off" lookupGroup="fzhs" lookupName="myselef" suggestClass="com.huolong.fzhs.model.Fzhs" searchFields="name,code"/>
				<a class="btnLook" href="<hi:url>fzhsLookup.action?lookup=1</hi:url>" lookupGroup="fzhs" lookupName="myselef"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门编号" entity="Fzhs"/>：</dt>
			<dd>
				<input type="text" class="textInput" name="fzhs.hi_orgs.orgNum" value="${fzhs.orgs.orgNum}" readonly="readonly"/>
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Fzhs"/>：</dt>
			<dd>
				<input type="hidden" name="fzhs.orgs.id" value="${fzhs.orgs.id}"/>
				<input type="text" class="textInput" name="fzhs.hi_orgs.orgName" value="${fzhs.orgs.orgName}"
					autocomplete="off" lookupGroup="fzhs" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgNum,orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="fzhs" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="fzhs.id" value="${fzhs.id}"/>
				<input type="hidden" name="fzhs.creator.id" value="${fzhs.creator.id}"/>
				<input type="hidden" name="fzhs.version" value="${fzhs.version}"/>

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
