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
			funcBarLocation="top"
			needPageMark="yes"
			generateParamForm="no"
			params="<%=param.toString()%>"
			height="-1"
			width="-1"
			insertRowLabel=""
			 submit="保存"  
			exceptionPage="/reportJsp/myError2.jsp"
		/>

<script language="javascript">
	//设置分页显示值
	size();
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	}
	function xz(num){

		window.returnValue=num;
		window.close(); 
		}
</script>
</body>
</html>
