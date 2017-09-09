<%@ page contentType="text/html;charset=utf-8" %>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>

<html>
<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>
<%
	request.setCharacterEncoding( "utf-8" );
	String report =request.getParameter( "raq" );
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
			
			params="<%=param.toString()%>"
			height="-1"
			width="-1"
             submit=""   excelPageStyle="0"
			pdfExportStyle="graph,0" 
			saveAsName="银行对账单"
		/>

<script language="javascript">
	size();
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	}
	
</script>
</body>
</html>
<script language="javascript"> 
<!-- 
function openChild(addr) 
{ 
var url="/report/show3.jsp?raq=zhaiyao.raq";
var k = window.showModalDialog(url,window,"dialogWidth:335px;status:no;dialogHeight:300px"); 
if(k!=null){
var tempId = "report1_C"+addr; 
var tab=document.getElementById(tempId);
tab.value=k;
tab.innerHTML=k;
}
} 
//--> 
</script> 