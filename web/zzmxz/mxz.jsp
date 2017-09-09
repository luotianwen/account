<%@ page language="java" pageEncoding="UTF-8" contentType="text/html;charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<html>
<body>

<script language="javascript">
	function mxzz(json){
		$("#condition\\.condition5").val(json.kmbh);
		$("#condition\\.condition6").val(json.kmmc);
	}
	
	
	function mxz(json1,json2){
		$("#condition\\.condition7").val(json1);
		$("#condition\\.condition8").val(json2);
		$("#mxzForm").submit();
	}
</script>
<div class="pageHeader" >
	<form id="mxzForm" rel="pagerForm" method="post" action="mxzview.action" onsubmit="return dwzSearch(this, '${targetType}');">
	<div class="searchBar">
		<ul class="searchContent" style="height:50px">	
		    <li style="width:145px;">
				<label style="width:55px;"><hi:text key="会计期间" entity="Kmyeb"/>:从</label>
				<input type="text" name="condition.condition1" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition1} " size="6"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</li>
            <li style="width:100px;">
            	<label style="width:11px;"><hi:text key="到" entity="Kmyeb"/>:</label>
               	<input type="text" name="condition.condition2" size="6" class="textInput date required" pattern="yyyy-MM" readonly="readonly"
					value="${condition.condition2} "/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</li>  
			<li style="width:111px;">
				<label><hi:text key="科目级次" entity="Kmyeb"/>:从</label>
				<input type="text" name="condition.condition3" class="textInput" value="${condition.condition3}" style="width:15px;" />
			</li >
           	<li style="width:42px;">
            	<label style="width:11px;"><hi:text key="到" entity="Kmyeb"/>:</label>
               	<input type="text" name="condition.condition4" class="textInput" value="${condition.condition4}" style="width:15px;" />
			</li> 
			<li style="width:205px;">
				<label style="width:55px;"><hi:text key="科目名称" entity="Kmyeb"/>:</label>
				<input type="hidden" name="condition.condition5"  id="condition.condition5"  value="${condition.condition5}"/>
				<input type="hidden" name="condition.condition6"  id="condition.condition6"  value="${condition.condition6}"/>
				<input type="hidden" name="condition.condition9"  id="condition.condition9"  value="${condition.condition9}"/>
				<input type="hidden" name="condition.condition10"  id="condition.condition10"  value="${condition.condition10}"/>
				<input type="hidden" name="condition.condition7"  id="condition.condition7"  value="${condition.condition7}"/>
		        <input type="hidden" name="condition.condition8"  id="condition.condition8"  value="${condition.condition8}"/>
				
				<input type="hidden" name="condition.gsid"  id="condition.gsid"  value="${condition.gsid}"/>
				<input type="hidden" name="kmyeb.kmmclookup.id" value="${condition.condition5}"/>
				<input  callback="mxzz" type="text" class="textInput" name="kmyeb.hi_kmmclookup.kmmc" value="${condition.condition6}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="kmmclookup" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmmc,kmbh"/>
				<!--  <a  callback="aa" class="btnLook" href="<hi:url>kjkmLookup.action?lookup=1</hi:url>" lookupGroup="kmyeb" lookupName="kmmclookup"><hi:text key="查找带回"/></a>		
			--></li>	
			
		</ul>
		<div class="subBar">
			<div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="查询"/></button></div></div>
		</div>
	</div>
	</form>
</div>
<style type="text/css">
img {border:none;}
#tabs1{float:left;width:100%;background:#F4F7FB;font-size:93%;line-height:normal;border-bottom:1px solid #BCD2E6;}
#tabs1 ul{margin:0;padding:10px 10px 0 10px;list-style:none;}
#tabs1 li{display:inline;margin:0;padding:0;}
#tabs1 a{float:left;background:url("images/tableft1.gif") no-repeat left top;margin:0;padding:0 0 0 4px;text-decoration:none;}
#tabs1 a span{float:left;display:block;background:url("images/tabright1.gif") no-repeat right top;padding:5px 15px 4px 6px;color:#627EB7;}
/* Commented Backslash Hack hides rule from IE5-Mac \*/
#tabs1 a span{float:none;}
/* End IE5-Mac hack */
#tabs a:hover span{color:#627EB7;}
#tabs1 a:hover{background-position:0% -42px;}
#tabs1 a:hover span{background-position:100% -42px;}
.hoverbh{font-weight:bold;}
</style>
<div id="tabs1">
  	<ul>
  		<li><a href="javascript:void(0)" onclick="mxz(101500,101500)" <c:if test="${condition.condition7==condition.condition8 && condition.condition7==101500}">class="hoverbh"</c:if>><span>资产类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101501,101501)" <c:if test="${condition.condition7==101501}">class="hoverbh"</c:if>><span>负债类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101502,101502)"<c:if test="${condition.condition7==101502}">class="hoverbh"</c:if>><span>共同类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101503,101503)"<c:if test="${condition.condition7==101503}">class="hoverbh"</c:if>><span>权益类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101504,101504)"<c:if test="${condition.condition7==101504}">class="hoverbh"</c:if>><span>成本类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101505,101505)"<c:if test="${condition.condition7==101505}">class="hoverbh"</c:if>><span>损益类</span></a></li>
		<li><a href="javascript:void(0)" onclick="mxz(101500,101505)"<c:if test="${condition.condition7!=condition.condition8}">class="hoverbh"</c:if>><span>所有类</span></a></li>
	</ul>
</div>


<!-- params="&gsid="+gs.getGsid()+"&ksqj="+start+"&jsqj="+end+"&ksrq="+ksrq+"&jsrq="+jsrq+"&jc_s=1&jc_e=4&lx_s=1&lx_e=1&kmbh_s=1001&kmbh_e=1999999999&bz="+bz; -->
<iframe src="report/bbzs.jsp?raq=mxz.raq&gsid=${condition.gsid}&ksqj=${condition.condition1}&jsqj=${condition.condition2}&bz=${condition.condition11}&jc_s=${condition.condition3}&jc_e=${condition.condition4}&lx_s=${condition.condition7}&lx_e=${condition.condition8}&kmbh_s=${condition.condition9}&kmbh_e=${condition.condition10}&ksrq=${condition.ksrq}&jsrq=${condition.jsrq}" frameborder=0 width="100%" height="387" name="rpt_frame">
</body>	
</html>