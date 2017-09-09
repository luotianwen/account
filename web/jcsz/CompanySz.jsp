<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle" align="center" style=" border-bottom: 0px">公司信息</h2>
<form action="companySzSave.action?navTabId=companySz&callbackType=&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="公司名称" entity="Company"/>：</dt><dd><input type="text" name="company.gsmc" readonly="readonly" class="textInput" value="${company.gsmc}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="税务登记号" entity="Company"/>：</dt><dd><input type="text" name="company.swdjh" class="textInput" value="${company.swdjh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="计算机代码" entity="Company"/>：</dt><dd><input type="text" name="company.jsjdm" class="textInput integer" value="${company.jsjdm}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="增值税类型" entity="Company"/>：</dt><dd><hi:select cssClass="combox" emu="zzslx" name="company.zzslx"/></dd>			
		</dl>
		<dl>
			<dt><hi:text key="营业执照注册号" entity="Company"/>：</dt><dd><input type="text" name="company.yyzhbh" class="textInput integer" value="${company.yyzhbh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="组织机构代码" entity="Company"/>：</dt><dd><input type="text" name="company.zzjgdm" class="textInput" value="${company.zzjgdm}" /></dd>
		</dl>
		<!--<dl>
			<dt><hi:text key="企业类型" entity="Company"/>：</dt><dd><hi:select cssClass="combox" emu="gslz" name="company.zclx"/></dd>			
		</dl>
		--><dl>
			<dt><hi:text key="注册资本" entity="Company"/>：</dt><dd><input type="text" name="company.zczj" class="textInput" value="${company.zczj}" /></dd>
		</dl>
		<!--<dl>
			<dt><hi:text key="所属行业" entity="Company"/>：</dt><dd><input type="text" name="company.sshy" class="textInput" value="${company.sshy}" /></dd>
		</dl>
		--><dl>
			<dt><hi:text key="法人代表" entity="Company"/>：</dt><dd><input type="text" name="company.frdb" class="textInput" value="${company.frdb}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Company"/>：</dt><dd><input type="text" name="company.lxdh" class="textInput phone" value="${company.lxdh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="传真" entity="Company"/>：</dt><dd><input type="text" name="company.lxcz" class="textInput phone" value="${company.lxcz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="电子邮箱" entity="Company"/>：</dt><dd><input type="text" name="company.dzyx" class="textInput email" value="${company.dzyx}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="常用联系人" entity="Company"/>：</dt><dd><input type="text" name="company.lxr" class="textInput" value="${company.lxr}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电话" entity="Company"/>：</dt><dd><input type="text" name="company.lxrdh" class="textInput phone" value="${company.lxrdh}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人电子邮箱" entity="Company"/>：</dt><dd><input type="text" name="company.lxrdzyx" class="textInput email" value="${company.lxrdzyx}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人传真" entity="Company"/>：</dt><dd><input type="text" name="company.lxrcz" class="textInput phone" value="${company.lxrcz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="注册地址" entity="Company"/>：</dt><dd><input type="text" name="company.zcdz" class="textInput" value="${company.zcdz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="经营地址" entity="Company"/>：</dt><dd><input type="text" name="company.jydz" class="textInput" value="${company.jydz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="通讯地址" entity="Company"/>：</dt><dd><input type="text" name="company.txdz" class="textInput" value="${company.txdz}" /></dd>
		</dl>
		<dl>
			<dt><hi:text key="邮政编码" entity="Company"/>：</dt><dd><input type="text" name="company.yzbm" class="textInput integer" value="${company.yzbm}" /></dd>
		</dl>
				<input type="hidden" name="company.id" value="${company.id}"/>
				<input type="hidden" name="company.dqqj" value="${company.dqqj}"/>
				<input type="hidden" name="company.cshzt" value="${company.cshzt}"/>
				<input type="hidden" name="company.creator.id" value="${company.creator.id}"/>
				<input type="hidden" value="${company.version}"/>

		<!-- <div class="divider"></div> -->
			</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
  <hi:token mothed="post"></hi:token>
</div>
</form>
