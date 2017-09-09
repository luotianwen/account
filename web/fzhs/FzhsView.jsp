<%@ page language="java"  pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="查看页面"  parameterLanguageKeys="辅助核算"/></h2>
<div class="pageContent">
	
	<div class="viewInfo" layoutH="97">
				
		<dl>
			<dt><hi:text key="编码" entity="Fzhs"/>：</dt><dd>${fzhs.code}</dd>
		</dl>
		<dl>
			<dt><hi:text key="名称" entity="Fzhs"/>：</dt><dd>${fzhs.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系人" entity="Fzhs"/>：</dt><dd>${fzhs.lxr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="联系电话" entity="Fzhs"/>：</dt><dd>${fzhs.lxdh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="传真号" entity="Fzhs"/>：</dt><dd>${fzhs.czh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="地址" entity="Fzhs"/>：</dt><dd>${fzhs.addr}</dd>
		</dl>
		<dl>
			<dt><hi:text key="启动日期" entity="Fzhs"/>：</dt><dd><fmt:formatDate value="${fzhs.qdrq}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="结束日期" entity="Fzhs"/>：</dt><dd><fmt:formatDate value="${fzhs.jsrq}" pattern="yyyy-MM-dd"/></dd>				  	 
		</dl>
		<dl>
			<dt><hi:text key="往来核算性质" entity="Fzhs"/>：</dt><dd><hi:select emu="wlhsxz" name="fzhs.wlhsxz" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="存货性质" entity="Fzhs"/>：</dt><dd><hi:select emu="chxz" name="fzhs.chxz" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="规格型号" entity="Fzhs"/>：</dt><dd>${fzhs.ggxh}</dd>
		</dl>
		<dl>
			<dt><hi:text key="计量单位" entity="Fzhs"/>：</dt><dd>${fzhs.jldw}</dd>
		</dl>
		<dl>
			<dt><hi:text key="性别" entity="Fzhs"/>：</dt><dd><hi:select emu="gender" name="fzhs.sex" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="辅助核算类型" entity="Fzhs"/>：</dt><dd><hi:select emu="fzhslx" name="fzhs.fzhslx" isLabel="true"/></dd>
		</dl>
		<dl>
			<dt><hi:text key="名称" entity="Fzhs"/>：</dt><dd>${fzhs.myselef.name}</dd>
		</dl>
		<dl>
			<dt><hi:text key="编码" entity="Fzhs"/>：</dt><dd>${fzhs.myselef.code}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门编号" entity="Fzhs"/>：</dt><dd>${fzhs.orgs.orgNum}</dd>
		</dl>
		<dl>
			<dt><hi:text key="部门名称" entity="Fzhs"/>：</dt><dd>${fzhs.orgs.orgName}</dd>
		</dl>

		<div class="divider"></div>
			</div>

	<div class="formBar">
		<ul>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>
</div>
