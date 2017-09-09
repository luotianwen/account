<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=UTF-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>

<html>
<body>

<div class="pageHeader" >
	<form rel="pagerForm" method="post" action="xjrjzview.action" onsubmit="return dwzSearch(this, '${targetType}');">
	
	<div class="searchBar">
		<ul class="searchContent" style="height: 30px">	
		    <li >
				<label><hi:text key="会计期间" entity="Kmyeb"/>:从</label>
				<input type="text" name="condition.condition1" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition1} " size="6"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</li>
			 
				<input type="hidden" name="condition.gsid"  id="condition.gsid"  value="${condition.gsid}"/>	
			  <div class="buttonActive" style="float: right;" ><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
		
		</ul>
		
	</div>
	</form>
</div>
		<iframe src="report/bbzs.jsp?raq=xjrjz.raq&gsid=${condition.gsid}&qj=${condition.condition1}&yhmc=${condition.condition2}&jsrq=${condition.jsrq}&ksrq=${condition.ksrq}&bz=${condition.condition11}" frameborder=0 width="100%" height="500" name="rpt_frame">

</body>
	
	
</html>
