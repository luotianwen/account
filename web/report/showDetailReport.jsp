<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<script src="../includes/EventJavaScript.js" type="text/javascript"></script>
<html>
<link href="css/style.css" rel="stylesheet" type="text/css">
<link href="css/yybs.css" rel="stylesheet" type="text/css">
<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>
<table id="titleTable"  width="100%"  cellspacing="0" cellpadding="0" border="0" ><tr>
	<td  width="100%" valign="middle"  style="font-size:13px" >
		<table width="100%">
		<tr>
			<td width="53%" align="left"  style="font-size:13px" >&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td width="47%" align="center" valign="middle"   style="font-size:12px" >
				<a href="javaScript:void(0)" onClick="report1_print();return false;">打印</a>
				<a href="javaScript:void(0)" onClick="report1_saveAsExcel();return false;">excel</a>
			  </td>
			  </tr>
	  </table>
	</td>
</table>
<div id="navTab" class="tabsPage">
	<div class="navTab-panel tabsPageContent">
		<div class="pageFormContent" layoutH="50">
<table  align="center">
	<tr><td valign="top">
		<report:html name="report1" reportFileName="${ersDetail.ybb_attachment.attachmentPath}"
			height="-1"
			funcBarLocation="top"
			width="-1"
			needPageMark="no"
			excelPageStyle="0"
			generateParamForm="no"
		/>
	</td></tr>
	</table>
	</div>
	</div>
<script language="javascript">
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	   tab.style.align='center';
	}
</script>

</body>
</html>
