<%@ page contentType="text/html;charset=GBK" %>
<%@ taglib uri="/WEB-INF/report.tld" prefix="report" %>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.runqian.report4.usermodel.Context"%>

<html>
<body topmargin=0 leftmargin=0 rightmargin=0 bottomMargin=0>
<%
	request.setCharacterEncoding( "GBK" );
	String report =request.getParameter( "raq" );
	String reportFileHome=Context.getInitCtx().getMainDir();
	StringBuffer param=new StringBuffer();
	
	//��֤�������Ƶ�������
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
				//�Ѳ���ƴ��name=value;name2=value2;.....����ʽ
				param.append(paramName).append("=").append(paramValue).append(";");
			}
		}
	}

	//���´����Ǽ����������Ƿ�����Ӧ�Ĳ���ģ��
	String paramFile = report.substring(0,iTmp)+"_arg.raq";
	File f=new File(application.getRealPath(reportFileHome+ File.separator +paramFile));

%>
<jsp:include page="toolbar.jsp" flush="false" />


<table align=center width="100%" height="100%">
	<tr><td>
		<report:html name="report1" reportFileName="<%=report%>"
			funcBarLocation="top"
			needPageMark="yes"
			generateParamForm="no"
			params="<%=param.toString()%>"
			height="-1"
			width="-1"
                        needImportExcel="yes"
                        importExcelLabel="����"
			exceptionPage="/commmon/error.jsp"
		/>
	</td></tr>
</table>

<script language="javascript">
	//���÷�ҳ��ʾֵ
	//document.getElementById( "t_page_span" ).innerHTML=report1_getTotalPage();
	//document.getElementById( "c_page_span" ).innerHTML=report1_getCurrPage();
	size();
	function size(){
	  var tab=document.getElementById( "report1" )
	  tab.style.width="100%";
	}
</script>
</body>
</html>
