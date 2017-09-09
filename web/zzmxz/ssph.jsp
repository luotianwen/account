<%@ page language="java" pageEncoding="GBK" contentType="text/html;charset=GBK"%>
<%@ include file="/includes/main.jsp"%><%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<html>
<body leftmargin="0" topmargin="0">
<div  class="panelBar"></div>
<!-- 

<div class="pageHeader" >
	<form rel="pagerForm" method="post" action="ssphview.action" onsubmit="return dwzSearch(this, '${targetType}');">
	
	<div class="searchBar">
		<ul class="searchContent" style="height:50px">	
		   <li style="width:145px;">
				<label style="width:55px;"><hi:text key="会计期间" entity="Kmyeb"/>:从</label>
				<input type="text" name="condition.condition1" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition1} " size="6"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</li>
              <li style="width:100px;"><label style="width:11px;"><hi:text key="到" entity="Kmyeb"/>:</label>
               <input type="text" name="condition.condition2" size="6" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition2} "/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</li>  
			 <li style="width:145px;">
				<label style="width:65px;">科目级次从</label>
				<input type="text" name="condition.condition3" class="textInput"
					value="${condition.condition3} " size="1"/>
				
			</li >
               <li  style="width:62px;"><label style="width:11px;"><hi:text key="到" entity="Kmyeb"/>:</label>
               <input type="text" name="condition.condition4" size="1" class="textInput" 
					value="${condition.condition4} "/>
			
			</li> 
			  <li style="width:137px;"><label style="width:40px;"><hi:text key="币种" entity="Kmyeb"/>:</label>
				  <hi:entitySelect name="condition.condition11" entityName="com.huolong.jcsz.model.Bzsz" filterName="" key="b_name" title="b_name" pattern="" />
		       </li>                        
				<input type="hidden" name="condition.gsid"  id="condition.gsid"  value="${condition.gsid}"/>	
			 
		</ul>
		<div class="subBar">
			<div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
		</div>
	</div>
	</form>
</div> -->
<!-- params = "&arg1=" +1 + "&arg2=" + start + "&arg3=" + end
			+ "&arg5=" + jc_s + "&arg6=" + jc_e + "&arg4=" + bz; -->
		<iframe src="<%=path%>/report/bbzs.jsp?raq=ssph.raq&arg1=${condition.gsid}&arg2=${condition.condition1}&arg3=${condition.condition2}&arg5=${condition.condition3}&arg6=${condition.condition4}&arg4=${condition.condition11}" frameborder=0 width="100%" height="500" name="rpt_frame">
</iframe>
</body>
</html>	