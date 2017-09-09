<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="科目余额表"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="本年累计借方" entity="Kmyeb"/>：</dt><dd>${kmyeb.bnljjf}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计贷方" entity="Kmyeb"/>：</dt><dd>${kmyeb.bnljdf}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计借方(本位币)" entity="Kmyeb"/>：</dt><dd>${kmyeb.bnljjfbwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本年累计贷方(本位币)" entity="Kmyeb"/>：</dt><dd>${kmyeb.bnljdfbwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生借方" entity="Kmyeb"/>：</dt><dd>${kmyeb.jffse}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生贷方" entity="Kmyeb"/>：</dt><dd>${kmyeb.dffse}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额方向" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcyefx}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额方向" entity="Kmyeb"/>：</dt><dd>${kmyeb.qmyefx}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额" entity="Kmyeb"/>：</dt><dd>${kmyeb.qmye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="年初数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.ncsl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="年初余额外币" entity="Kmyeb"/>：</dt><dd>${kmyeb.ncye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="年初余额本位币" entity="Kmyeb"/>：</dt><dd>${kmyeb.ncyebwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生借方数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.sljffsesl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本期发生贷方数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.sldffsesl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本年发生借方数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.slbnljjfsl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本年发生贷方数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.slbnljdfsl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.slqcyesl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初余额单价" entity="Kmyeb"/>：</dt><dd>${kmyeb.slqcyedj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额数量" entity="Kmyeb"/>：</dt><dd>${kmyeb.slqmyesl}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期末余额单价" entity="Kmyeb"/>：</dt><dd>${kmyeb.slqmyedj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算" entity="Kmyeb"/>：</dt><dd>${kmyeb.fzhs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="会计期间" entity="Kmyeb"/>：</dt><dd>${kmyeb.kjqj}</dd>
		</dl>
		<dl>
			<dt><hi:text key="计量单位" entity="Kmyeb"/>：</dt><dd>${kmyeb.jldw}</dd>
		</dl>
		<dl>
			<dt><hi:text key="本位币期初余额" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币期初余额" entity="Kmyeb"/>：</dt><dd>${kmyeb.cshbwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="外币期末余额" entity="Kmyeb"/>：</dt><dd>${kmyeb.wbqmye}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本年借方" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcbnjf}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本年贷方" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcbndf}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本位币本年借方" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcbnjfbwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="期初本位币本年贷方" entity="Kmyeb"/>：</dt><dd>${kmyeb.qcbndfbwb}</dd>
		</dl>
		<dl>
			<dt><hi:text key="结转前余额累计数" entity="Kmyeb"/>：</dt><dd>${kmyeb.jzqyeljs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="结转前余额本期数" entity="Kmyeb"/>：</dt><dd>${kmyeb.jzqyebqs}</dd>
		</dl>
		<dl>
			<dt><hi:text key="科目名称" entity="Kmyeb"/>：</dt><dd>${kmyeb.kmmclookup.kmmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="公司名称" entity="Kmyeb"/>：</dt><dd>${kmyeb.gsid.gsmc}</dd>
		</dl>
		<dl>
			<dt><hi:text key="币种名称" entity="Kmyeb"/>：</dt><dd>${kmyeb.bzname}</dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算内容" entity="Kmyeb"/>：</dt><dd>${kmyeb.fzhsnr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Kmyeb"/>：</dt><dd>${kmyeb.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
