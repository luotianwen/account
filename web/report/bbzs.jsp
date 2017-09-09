<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*,org.hi.framework.HiConfigHolder"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<html>
<body >
<%
request.setCharacterEncoding("UTF-8");
String report = request.getParameter( "raq" );
String saveAsName = request.getParameter("qj");
saveAsName=saveAsName==null?"":saveAsName;
if(report.contains("lrb"))
	saveAsName="利润表"+saveAsName;
else  if(report.contains("xjllbfz")){
	saveAsName="现金流量附注表"+saveAsName;
}
else  if(report.contains("xjllb")){
	saveAsName="现金流量表"+saveAsName;
}
else  if(report.contains("zzfzb")){
	saveAsName="资产负债表"+saveAsName;
}
else  if(report.contains("zz")){
	saveAsName="总账"+saveAsName;
}
else  if(report.contains("mxz")){
	saveAsName="明细账"+saveAsName;
}
else  if(report.contains("xjrjz")){
	saveAsName="现金日记账"+saveAsName;
}

report=HiConfigHolder.getProperty("hi.report.url")+report;
	StringBuffer param=new StringBuffer();
	
	//保证报表名称的完整性
	int iTmp = 0;
	if( (iTmp = report.lastIndexOf(".raq")) <= 0 ){
		report = report + ".raq";
		iTmp = 0;
	}
	
	Enumeration paramNames = request.getParameterNames();
	if(paramNames!=null){
		while(paramNames.hasMoreElements()){
			String paramName = (String) paramNames.nextElement();
			String paramValue=request.getParameter(paramName);
			if(paramValue!=null){
				//把参数拼成name=value;name2=value2;.....的形式java.net.URLDecoder.decode(request.getParameter("gsid"),"UTF-8")
				param.append(paramName).append("=").append(java.net.URLDecoder.decode(paramValue,"UTF-8")).append(";");
			}
		}
	}
	//System.out.println(param.toString());
	String appmap = request.getContextPath();
	String printImage = "<img src='" + appmap + "/common/sysimage/file/print.png' border=no style='vertical-align:middle' alt='打印'>";
	String excelImage = "<img src='" + appmap + "/common/sysimage/file/xls.gif' border=no style='vertical-align:middle' alt='存为Excel'>";
	String pdfImage = "<img src='" + appmap + "/common/sysimage/file/pdf.gif' border=no style='vertical-align:middle' alt='存为Pdf'>";
%>
<div id="functionBar">
			<%--<a href="javaScript:void(0)"  onClick="report1_print();return false;"><%=printImage%></a>
			--%><a href="javaScript:void(0)"  onClick="report1_saveAsExcel();return false;"><%=excelImage%></a>
			<a href="javaScript:void(0)"  onClick="report1_saveAsPdf();return false;"><%=pdfImage%></a>
		</div>
		<report:html name="report1" reportFileName="<%=report%>"
			height="-1"
			width="-1"
			saveAsName="<%=saveAsName %>"
			excelPageStyle="0"
			pdfExportStyle="graph,0"
			params="<%=param.toString()%>"
		/>

<script language="javascript">
	size();
	//generateParamForm="yes"
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	}
</script>
</body>
</html>
