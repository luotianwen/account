<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*,org.hi.framework.HiConfigHolder"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>
<%@ include file="/includes/main.jsp"%>
<script language="javascript"> 
	   var _calendarMainBackColor = "#EDF8FF"; 
	   var _calendarWeekColor = "#000000"; 
	   var _calendarDayColor = "#000000"; 
	   var _calendarDayBackColor = "#FFFFFF";
	   </script>
<html>
<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>
<%
	request.setCharacterEncoding( "utf-8" );
	String report =request.getParameter( "raq" );
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
				//把参数拼成name=value;name2=value2;.....的形式
				param.append(paramName).append("=").append(paramValue).append(";");
			}
		}
	}


%>

		<report:html name="report1" reportFileName="<%=report%>"
			needImportExcel="no,0"
			params="<%=param.toString()%>"
			height="-1"
			width="-1" submit=""
			saveAsName="yhdzd"
			exceptionPage="/commmon/error.jsp"
		/>

<script language="javascript">
	size();
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	}
	var _editorBorderLeft = "black thin inset";
    var _editorBorderTop = "black thin inset";
	var _editorBorderRight = "cadetblue thin inset";
	var _editorBorderBottom = "cadetblue thin inset";
	var _editingRowBackColor = "#7CC5E5";
	var _editingColBackColor = "";
</script>
</body>
</html>

