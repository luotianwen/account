<%@ page contentType="text/html;charset=GBK" %>
<%	String appmap = request.getContextPath();
	String printImage = "´òÓ¡";
	String excelImage = "EXCEL";
	String pdfImage = "PDF";
	String wordImage = "WORD";
	String firstPageImage = "firstPageImage";
	String lastPageImage = "lastPageImage";
	String nextPageImage = "nextPageImage";
	String prevPageImage = "prevPageImage";
	String submitImage = "submitImage";%>

<table id=titleTable width=100% cellspacing=0 cellpadding=0 border=0 ><tr>
	<td height="22" width=100% valign="middle"  style="font-size:13px" background="../images/ta51top.jpg">
		<table width="100%">
			<tr >
				<td width=53% align="right"  style="font-size:13px" >&nbsp;&nbsp;&nbsp;&nbsp;</td>
				<td width="47%" align="center" valign="middle"   style="font-size:12px" >¹²<span id="t_page_span"></span>Ò³/µÚ<span id="c_page_span"></span>Ò³&nbsp;&nbsp;
				<a href="javaScript:void(0)" onClick="report1_print();return false;"><%=printImage%></a>
				<a href="javaScript:void(0)" onClick="report1_saveAsExcel();return false;"><%=excelImage%></a>
				<a href="javaScript:void(0)" onClick="report1_saveAsPdf();return false;"><%=pdfImage%></a>
				<a href="javaScript:void(0)" onClick="report1_saveAsWord();return false;"><%=wordImage%></a>
				<!--  <a href="javaScript:void(0)" onClick="_submitTable( report1 );return false;"><%=submitImage%></a>
				<a href="javaScript:void(0)" onClick="try{report1_toPage( 1 );}catch(e){}return false;"><%=firstPageImage%></a>
				<a href="javaScript:void(0)" onClick="try{report1_toPage(report1_getCurrPage()-1);}catch(e){}return false;"><%=prevPageImage%></a>
				<a href="javaScript:void(0)" onClick="try{report1_toPage(report1_getCurrPage()+1);}catch(e){}return false;"><%=nextPageImage%></a>
				<a href="javaScript:void(0)" onClick="try{report1_toPage(report1_getTotalPage());}catch(e){}return false;"><%=lastPageImage%></a>
			  -->
			  </td>
			</tr>
	  </table>
	</td>
</table>