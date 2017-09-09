<%@ page language="java" import="java.util.*,com.huolong.birt.pojo.*" pageEncoding="GBK"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
Ckyetjb ckyetjb=(Ckyetjb)request.getAttribute("ckyetjb");
String getkjqj=(String)request.getAttribute("kjqj");
String getbz=(String)request.getAttribute("bz");
String getyh=(String)request.getAttribute("yh");

if(getkjqj==null)getkjqj="";if(getbz==null)getbz="";if(getyh==null)getyh="";
%>
<%String xtqysj = ((Gsdmb)request.getSession().getAttribute("gs")).getXtqysj(); %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>期末处理</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="../css/style.css" rel="stylesheet" type="text/css">
<link href="../css/yybs.css" rel="stylesheet" type="text/css">
<script language="javascript" src="../js/EventJavaScript.js"></script>
<script language="javascript" src="../date2/calendar.js"></script>
<script language="javascript" src="../date2/config.js"></script>
<script language="javascript" src="../date2/WdatePicker.js"></script>
<DIV id="yhDiv" style="z-index: 999; display: none; position: absolute; left: 200; top: 300; width: 280; height: 83">
  <iframe name="yhFrame" id="yhFrame" src="" width="125" HEIGHT="83" frameborder=0></iframe>
</DIV>
<DIV id="bzDiv" style="z-index: 999; display: none; position: absolute; left: 200; top: 300; width: 280; height: 83">
  <iframe name="bzFrame" id="bzFrame" src="" width="125" HEIGHT="83" frameborder=0></iframe>
</DIV>
</head>

<body leftmargin="0" topmargin="0">
<form name="actionSubmitForm">
<input name="id" value="<%=ckyetjb.getId()%>" type="hidden"/>

<table width="98%" border="0" cellspacing="0" cellpadding="0">
	<tr> 
		<td><img src="../../images/style1/white.gif" width="4" height="4"></td>
	</tr>
</table>
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr> 
		<td>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="titlebg">
          		<tr> 
            		<td>&nbsp;&nbsp;<span class="title12big">期末处理</span></td>
          		</tr>
        	</table>
        	<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="list-line">
				<input type="hidden" name="csid" id="csid" value="" />
				<input type="hidden" name="cs" id="cs" value="" />
          		<tr class="listbg"> 
            		<td height="22" colspan="3">
						<div align="center"><p>存款余额调节表</p></div>
					</td>
          		</tr>
				<tr class="listbg">
					<td width="44%" align="center">会计期间：从 <input name="kjqj" value="<%=getkjqj%>" readonly class="Wdate" onfocus="WdatePicker({dateFmt:'yyyy-MM'} ) " size="15" /> </td>
					<td width="34%" align="center">开户银行：<input onClick="show(1)" name="yh" id="yh" type="text" class="textfield" value="<%=getyh%>" readonly size="19" /><img class="select" src="../images/select.gif" align="absmiddle" onClick="document.all['yh'].focus();document.all['yh'].click();" style="cursor:hand;"></td>
					<td width="22%" align="center">币种：<input name="bz" id="bz" onClick="show(2)" type="text" value="<%=getbz%>" class="textfield"  readonly size="19" /><img class="select" src="../images/select.gif" align="absmiddle" onClick="document.all['bz'].focus();document.all['bz'].click();" style="cursor:hand;"></td>
				</tr>
				<tr class="listbg" height="25">
					<td width="22%" align="right" colspan="3" style="padding-right:48px;">
					<input class="btn02" type="button"  value="查询" onclick="query()" /> 
					<input class="btn02" type="button" value="保存" onclick="bc()" /> 
					<input class="btn02" type="button" value="打印" onclick="exportOrPrint(2);" /> 
					<input class="btn02" type="button"  value="导出" onClick="exportOrPrint(1);" /></td>
				</tr>
				<tr class="listbg">
					<td colspan="3">&nbsp;</td>
				</tr>
        	</table>
			<table width="100%" border="0" align="center" cellpadding="2" cellspacing="1" class="list-line" style="margin-top:-1px;">
				<tr class="barbg">
					<td width="25%" align="center">项目</td>
					<td width="25%" align="center">金额</td>
            		<td width="25%" align="center">项目</td>
					<td width="25%" align="center">金额</td>
          		</tr>
          		<%if(ckyetjb!=null){ %>
          		<tr class="listbg">
					<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="企业银行存款日记账余额" readonly size="30" /></td>
					<td width="25%" align="right"><input type="text" class="input_Center3" onblur="getyhye()" value="<%=ckyetjb.getQeckrj() %>" name="q1" id="q1" readonly size="20" /></td>
            		<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="银行对账单余额" readonly size="20" /></td>
					<td width="25%" align="right"><input type="text" class="input_Center3" value="<%=ckyetjb.getYhdzd() %>" onblur="getqyyhye()" name="q2" id="q2" readonly size="20" /></td>
          		</tr>
          		<tr class="listbg">
					<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="加：银行已收款入账，而企业未入账的款项" readonly size="40" /></td>
					<td width="25%" align="right"><input value="<%=ckyetjb.getYhysr()%>" onblur="getyhye()" name="q3" id="q3" type="text" class="input_Center3" value="0.00"  size="20" /></td>
            		<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="加：企业已收款入账，而银行未入账的款项" readonly size="40" /></td>
					<td width="25%" align="right"><input name="q4" id="q4"  type="text" class="input_Center3" value="<%=ckyetjb.getQeysr()%>"  onblur="getqyyhye()"  size="20" /></td>
          		</tr>
          		<tr class="listbg">
					<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="减：银行已付款入账，而企业未入账的款项" readonly size="40" /></td>
					<td width="25%" align="right"><input name="q5" id="q5" value="<%=ckyetjb.getYhyfr() %>" onblur="getyhye()" type="text" class="input_Center3" value="0.00"  size="20" /></td>
            		<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="减：企业已付款入账，而银行未入账的款项" readonly size="40" /></td>
					<td width="25%" align="right"><input name="q6" id="q6" value="<%=ckyetjb.getQeyfr() %>" onblur="getqyyhye()" type="text" class="input_Center3" value="0.00"  size="20" /></td>
          		</tr>
				<tr class="listbg">
					<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="调节后的余额" readonly size="20" style="font-weight:bold;" /></td>
					<td width="25%" align="right"><input name="q7" id="q7" value="<%=ckyetjb.getYhye()%>" onblur="getyhye()" type="text" class="input_Center3" value="0.00" readonly size="20" style="font-weight:bold;"/></td>
					<td width="25%" align="left"><input name="" type="text" class="input_Center2" value="调节后的余额" readonly size="20" style="font-weight:bold;" /></td>
            		<td width="25%" align="right"><input name="q8" id="q8" value="<%=ckyetjb.getQeye() %>"  onblur="getqyyhye()" type="text" class="input_Center3" value="0.00" readonly size="20" style="font-weight:bold;"/></td>
          		</tr>
				 <%} %>	
			</table>
		</td>
		<td width="4" valign="top" class="shadow"><img src="../images/style0/white.gif" width="4" height="4"></td>
	</tr>
	<tr> 
		<td colspan="2" class="shadow"><img src="../images/style0/white.gif" width="4" height="4"></td>
	</tr>
</table>
<table width="98%" border="0" cellspacing="0" cellpadding="0">
	<tr> 
		<td><img src="../../images/style0/white.gif" width="4" height="4"></td>
	</tr>
</table>
<script type="text/javascript">
function query(){
   document.all['actionSubmitForm'].method="post";
   document.all['actionSubmitForm'].action="../accountprocess/ckyetjbAction.do?method=query";
   document.all['actionSubmitForm'].submit();
}
function bc(){
   document.all['actionSubmitForm'].method="post";
   document.all['actionSubmitForm'].action="<%=basePath%>accountprocess/ckyetjbAction.do?method=add";
   document.all['actionSubmitForm'].submit();
}
document.onmousedown=HideObj  
function HideObj()
{
 document.getElementById("yhDiv").style.display="none";
 document.getElementById("bzDiv").style.display="none";
}
function show(cs){
  document.getElementById("cs").value=cs;
  document.getElementById("csid").value=event.srcElement.id;
  var DIVVIEW="";
  if(cs==1)DIVVIEW=document.getElementById("yhDiv");
  if(cs==2)DIVVIEW=document.getElementById("bzDiv");
  var obj=event.srcElement ;
  var m_top=getctrlPosition(obj,"offsetTop");
  var m_left=getctrlPosition(obj,"offsetLeft");
  DIVVIEW.style.left=m_left-0 ;
  DIVVIEW.style.top=m_top+22 ;  
  DIVVIEW.style.width=125;
  DIVVIEW.style.display=""; 
  if(cs==1)document.all["yhFrame"].src="../accountprocess/ckyetjbAction.do?method=queryyh" ;
  if(cs==2)document.all["bzFrame"].src="../accountprocess/ckyetjbAction.do?method=querybz" ;
}

function  getyhye(){
   re = /^\d+\.?\d*$/
   var the_obj = event.srcElement;
   if(the_obj.value =="") {
         the_obj.value = "0.00";
   }
   va=the_obj.value ;
   if(va!=the_obj.defaultValue){
	   if(!re.test(va))
		{
		  alert("只能输入数字,请重新输入");
		  document.getElementById(the_obj.id).value="";
		  return;    
		}       
    var q1=document.all["q1"].value.replace(/,/g," ");
    var q3=document.all["q3"].value.replace(/,/g," "); 
    var q5=document.all["q5"].value.replace(/,/g," "); 
   document.all["q7"].value=((Number(q1)+Number(q3)-Number(q5))).toFixed(2);
    } 
}
function getqyyhye(){
   re = /^\d+\.?\d*$/
   var the_obj = event.srcElement;
   if(the_obj.value =="") {
          the_obj.value = "0.00";
   }
   va=the_obj.value ;
   if(va!=the_obj.defaultValue){
	   if(!re.test(va))
		{
		  alert("只能输入数字,请重新输入");
		  document.getElementById(the_obj.id).value="";
		  return;    
		}       
     } 
   var q1=document.all["q2"].value.replace(/,/g," ");
    var q3=document.all["q4"].value.replace(/,/g,""); 
    var q5=document.all["q6"].value.replace(/,/g," ");
    document.all["q8"].value=((Number(q1)+Number(q3)-Number(q5))).toFixed(2);
}
</script>

		<script language="JavaScript">
	//打印
	 function exportOrPrint(type){
	    kjqj=document.getElementById("kjqj").value;
	    yh=document.getElementById("yh").value;
	    bz=document.getElementById("bz").value;
	 	var loaction_left = screen.availWidth-10;
		var loaction_right = screen.availHeight-50;
		var url = "<%=basePath%>accountprocess/ckyetjbAction.do?method=Printckyet&kjqj="+kjqj+"&yh="+yh+"&bz="+bz+"&type="+type;
		window.open(url, "aaa", "fullscreen=2,menubar=0,toolbar=0,location=0,scrollbars=0,status=1,left=0,top=0,width="+loaction_left+",height="+loaction_right);
	 }
	</script>
</form>
</body>
</html>
