<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="科目余额表"/></h2>
<form action="kmyebSave.action?navTabId=kmyebList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
		<dl>
			<dt><hi:text key="本年累计借方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.bnljjf" class="textInput" value="${kmyeb.bnljjf}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计贷方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.bnljdf" class="textInput" value="${kmyeb.bnljdf}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计借方(本位币)" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.bnljjfbwb" class="textInput" value="${kmyeb.bnljjfbwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计贷方(本位币)" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.bnljdfbwb" class="textInput" value="${kmyeb.bnljdfbwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生借方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.jffse" class="textInput" value="${kmyeb.jffse}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生贷方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.dffse" class="textInput" value="${kmyeb.dffse}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额方向" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcyefx" class="textInput" value="${kmyeb.qcyefx}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额方向" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qmyefx" class="textInput" value="${kmyeb.qmyefx}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qmye" class="textInput" value="${kmyeb.qmye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="年初数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.ncsl" class="textInput" value="${kmyeb.ncsl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="年初余额外币" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.ncye" class="textInput" value="${kmyeb.ncye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="年初余额本位币" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.ncyebwb" class="textInput" value="${kmyeb.ncyebwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生借方数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.sljffsesl" class="textInput" value="${kmyeb.sljffsesl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生贷方数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.sldffsesl" class="textInput" value="${kmyeb.sldffsesl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本年发生借方数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slbnljjfsl" class="textInput" value="${kmyeb.slbnljjfsl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本年发生贷方数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slbnljdfsl" class="textInput" value="${kmyeb.slbnljdfsl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slqcyesl" class="textInput" value="${kmyeb.slqcyesl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额单价" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slqcyedj" class="textInput" value="${kmyeb.slqcyedj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额数量" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slqmyesl" class="textInput" value="${kmyeb.slqmyesl}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额单价" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.slqmyedj" class="textInput" value="${kmyeb.slqmyedj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.fzhs" class="textInput" value="${kmyeb.fzhs}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.kjqj" class="textInput" value="${kmyeb.kjqj}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="计量单位" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.jldw" class="textInput" value="${kmyeb.jldw}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="本位币期初余额" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcye" class="textInput" value="${kmyeb.qcye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="外币期初余额" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.cshbwb" class="textInput" value="${kmyeb.cshbwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="外币期末余额" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.wbqmye" class="textInput" value="${kmyeb.wbqmye}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本年借方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcbnjf" class="textInput" value="${kmyeb.qcbnjf}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本年贷方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcbndf" class="textInput" value="${kmyeb.qcbndf}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本位币本年借方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcbnjfbwb" class="textInput" value="${kmyeb.qcbnjfbwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本位币本年贷方" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.qcbndfbwb" class="textInput" value="${kmyeb.qcbndfbwb}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="结转前余额累计数" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.jzqyeljs" class="textInput" value="${kmyeb.jzqyeljs}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="结转前余额本期数" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.jzqyebqs" class="textInput" value="${kmyeb.jzqyebqs}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Kmyeb"/>：</dt>
			<dd>
				<input type="hidden" name="kmyeb.kmmclookup.id" value="${kmyeb.kmmclookup.id}"/>
				<input type="text" class="textInput" name="kmyeb.hi_kmmclookup.kmmc" value="${kmyeb.kmmclookup.kmmc}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="kmmclookup" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmmc"/>
				<a class="btnLook" href="<hi:url>kjkmLookup.action?lookup=1</hi:url>" lookupGroup="kmyeb" lookupName="kmmclookup"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="公司名称" entity="Kmyeb"/>：</dt>
			<dd>
				<input type="hidden" name="kmyeb.gsid.id" value="${kmyeb.gsid.id}"/>
				<input type="text" class="textInput" name="kmyeb.hi_gsid.gsmc" value="${kmyeb.gsid.gsmc}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="gsid" suggestClass="com.huolong.jcsz.model.Company" searchFields="gsmc"/>
				<a class="btnLook" href="<hi:url>companyLookup.action?lookup=1</hi:url>" lookupGroup="kmyeb" lookupName="gsid"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
		<dl>
			<dt><hi:text key="币种名称" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.bzname" class="textInput" value="${kmyeb.bzname}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算内容" entity="Kmyeb"/>：</dt><dd><input type="text" name="kmyeb.fzhsnr" class="textInput" value="${kmyeb.fzhsnr}" maxlength="30"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Kmyeb"/>：</dt>
			<dd>
				<input type="hidden" name="kmyeb.orgs.id" value="${kmyeb.orgs.id}"/>
				<input type="text" class="textInput" name="kmyeb.hi_orgs.orgName" value="${kmyeb.orgs.orgName}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="orgs" suggestClass="org.hi.base.organization.model.HiOrg" searchFields="orgName"/>
				<a class="btnLook" href="<hi:url>hiOrgLookup.action?lookup=1</hi:url>" lookupGroup="kmyeb" lookupName="orgs"><hi:text key="查找带回"/></a>		
			</dd>
		</dl>
				<input type="hidden" name="kmyeb.id" value="${kmyeb.id}"/>
				<input type="hidden" name="kmyeb.creator.id" value="${kmyeb.creator.id}"/>
				<input type="hidden" name="kmyeb.version" value="${kmyeb.version}"/>

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
