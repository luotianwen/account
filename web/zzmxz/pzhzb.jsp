<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<html>
<body>

<div class="pageHeader" >
	<form rel="pagerForm" method="post" action="pzhzbview.action" onsubmit="return dwzSearch(this, '${targetType}');">
	
	<table class="searchBar" style="width: 100%">
		<tr class="searchContent" style="width:100%">
		<td style="width:8%">
				<label><hi:text key="会计期间" entity="Kmyeb"/>:从</label>
			</td>
		<td style="width:12%">		
					<input type="text" name="condition.condition1" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition1} " size="6"/><span>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a></span>
			</td>
         <td style="width:1%;t"><label><hi:text key="到" entity="Kmyeb"/>:</label>
              </td>
         <td style="width:15%">      <input type="text" name="condition.condition2" size="6" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition2} "/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</td>   
					<input type="hidden" name="condition.gsid"  id="condition.gsid"  value="${condition.gsid}"/>  
		  <td style="width:10%">
		 <div class="buttonActive" style="float: right;" ><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
		
		</td>
		</tr>
	</table>
	</form>
</div>
		<iframe src="report/bbzs.jsp?raq=pzhzb.raq&gsid=${condition.gsid}&bz=${condition.condition11}&ksrq=${condition.condition1}&jsrq=${condition.condition2}" frameborder=0 width="100%" height="500" name="rpt_frame">

</body>
	
	
</html>
