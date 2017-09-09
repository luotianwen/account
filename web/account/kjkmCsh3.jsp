<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

<h2 class="contentTitle"><hi:text key="编辑页面" parameterLanguageKeys="科目初始化"/></h2>
<form action="kmyebSave2.action?navTabId=kjkmList&callbackType=closeCurrent&ajax=1" method="post" class="pageForm required-validate" onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent" layoutH="97">
	<table>
	<tr>
	<td  width="20%">	<hi:text key="科目名称" entity="Kjkm"/>：<input type="text" name="kmyeb.kmmclookup.kmmc" class="textInput" readonly="readonly" value="${kmyeb.kmmclookup.kmmc}" />
		
	</td>
	<td  width="10%">	<hi:text key="科目方向" entity="Kjkm"/>：<hi:select emu="kmfx" name="kmyeb.kmmclookup.kmfx" isLabel="true"/>
		
	</td>
	<c:if test="${kmyeb.fzhs!=''&&kmyeb.fzhs!=null}">
		<td width="20%">
			<input type="hidden" id="kmyeb.fzhs" name="kmyeb.fzhs" class="textInput" value="${kmyeb.fzhs}" />
		
			<hi:text key="${kmyeb.fzhs}" entity="Kmyeb"/>：
			<input type="hidden" name="kmyeb.fzhsnr"  id="kmyeb.fzhsnr" value="${kmyeb.fzhsnr}" />
			     <input callback="fzhs" type="text" class="textInput required" name="kmyeb.hi_fzhs.name" value="${kmyeb.fzhsnr}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="fzhs" suggestClass="${kmyeb.kmmclookup.fzhs.class2}" searchFields="name"/>
		</td>
		</c:if>
	<td width="20%">
			<hi:text key="币种名称" entity="Kmyeb"/>：
			
			<c:choose>
			<c:when test="${kmyeb.bzname!=''}">
			 <input type="hidden" id="kmyeb.bzname" name="kmyeb.bzname" value="${kmyeb.bzname}"/>
				<input type="hidden" lookupGroup="kmyeb" lookupName="bzname"  name="pageInfo.f_b_name" value="综合币种" />
		<input type="hidden" lookupGroup="kmyeb" lookupName="bzname"  name="pageInfo.f_b_name_op" value="&lt&gt" />					
	
				<input type="hidden" name="kmyeb.bwbbz.id" value=""/>
				<input type="text" callback="aa" class="textInput required" name="kmyeb.hi_bzname.b_name" value="${kmyeb.bzname}"
					autocomplete="off" lookupGroup="kmyeb" lookupName="bzname" suggestClass="com.huolong.jcsz.model.Bzsz" searchFields="b_name,b_huilv"/>
			</c:when>
			<c:otherwise>
			 <input type="text" id="kmyeb.bzname" readonly="readonly" name="kmyeb.bzname" value="人民币"/>
			
			</c:otherwise>
			</c:choose>
			
			
	</td>
	<td width="10%"><hi:text key="汇率" entity="Kmyeb"/>：
	<input type="text" name="huilv" id="huilv"  class="textInput" readonly="readonly" value="1.00" />
				
	</td>
	<c:if test="${kmyeb.kmmclookup.sljehs!=3201}">
	<td width="10%">
			<hi:text key="计量单位" entity="Kmyeb"/>：<input type="text" readonly="readonly" name="kmyeb.jldw" rclass="textInput" value="ss" />
		
	</td>
	</c:if>
	</tr>
	
	</table>
	<table>
		<tr align="center" height="20px">
			<td width="20%">
			</td>
			<td width="20%">年初余额
			</td>
			<c:if test="${condition.condition1!=''}"> 
			<td width="20%">本年累计借方
			</td>
			<td width="20%">本年累计贷方
			</td>
			<td width="20%">期初余额
			</td>
			</c:if>
		</tr>
		<tr>
		   <td width="20%" align="right">原币
			</td>
			<td width="20%"><input type="text" name="kmyeb.ncye" <c:if test="${condition.condition1!=''}"> readonly="readonly" </c:if> class="textInput required" value="${kmyeb.ncye}" />
			</td>
			<c:if test="${condition.condition1!=''}"> 
			<td width="20%"><input type="text" name="kmyeb.bnljjf" class="float required" value="${kmyeb.bnljjf}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.bnljdf" class="float required" value="${kmyeb.bnljdf}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.qcye" class="float required" value="${kmyeb.qcye}" />
			</td>
			</c:if>
		</tr>
		<tr>
		    <td width="20%" align="right">本位币
			</td>
			<td width="20%"><input type="text" name="kmyeb.ncyebwb"  <c:if test="${condition.condition1!=''}"> readonly="readonly" </c:if> class="textInput required" value="${kmyeb.ncyebwb}" />
			</td>
			<c:if test="${condition.condition1!=''}"> 
			<td width="20%"><input type="text" name="kmyeb.bnljjfbwb" readonly="readonly" class="textInput " value="${kmyeb.bnljjfbwb}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.bnljdfbwb" readonly="readonly" class="textInput " value="${kmyeb.bnljdfbwb}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.cshbwb"  readonly="readonly" class="textInput " value="${kmyeb.cshbwb}" />
			</td>
			</c:if>
		</tr>
		<c:if test="${kmyeb.kmmclookup.sljehs!=3201}">
		<tr>
		   <td width="20%" align="right">数量
			</td>
			<td width="20%"><input type="text" name="kmyeb.ncsl"   <c:if test="${condition.condition1!=''}"> readonly="readonly" </c:if> class="textInput required" value="${kmyeb.ncsl}" />
			</td>
			<c:if test="${condition.condition1!=''}"> 
			<td width="20%"><input type="text" name="kmyeb.slbnljjfsl" class="float required" value="${kmyeb.slbnljjfsl}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.slbnljdfsl" class="float required" value="${kmyeb.slbnljdfsl}" />
			</td>
			<td width="20%"><input type="text" name="kmyeb.slqcyesl" class="float required" value="${kmyeb.slqcyesl}" />
			</td>
			</c:if>
		</tr>
		</c:if>
	</table>
		
		<c:if test="${kmyeb.slqcyesl!=null&&kmyeb.slqcyesl!=''}">
		
		
		</c:if>
				<input type="hidden" name="kmyeb.kmmclookup.id" value="${kmyeb.kmmclookup.id}"/>
				<input type="hidden" name="kmfx" id="kmfx" value="${kmyeb.kmmclookup.kmfx}"/>
		    <div class="divider"></div>
			</div>
	<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  

</div>
</form>

<script language="javascript">
     var bnljjf="kmyeb\\.bnljjf";
     var bnljdf="kmyeb\\.bnljdf";
     var qcye="kmyeb\\.qcye";
     var ncye="kmyeb\\.ncye";
     
     var bnljjfbwb="kmyeb\\.bnljjfbwb";
     var bnljdfbwb="kmyeb\\.bnljdfbwb";
     var cshbwb="kmyeb\\.cshbwb";
     var ncyebwb="kmyeb\\.ncyebwb";
     var kmfx=$("#kmfx").val();
     $("input[name='"+bnljjf+"']").change( function() {
		 var bnljjfbnum= $("input[name='"+bnljjf+"']").val();
		   jenum(bnljjfbwb,bnljjfbnum);
	  	});
     $("input[name='"+bnljdf+"']").change( function() {
 	     var bnljdfnum=$("input[name='"+bnljdf+"']").val();
 	    jenum(bnljdfbwb,bnljdfnum);
	  	});
     $("input[name='"+qcye+"']").change( function() {
         var qcyenum=$("input[name='"+qcye+"']").val();
 	    jenum(cshbwb,qcyenum);
	  	});
		function jenum(str1,str2){
			 var hl=$("#huilv").val();
			 var bnljjfbnum= $("input[name='"+bnljjf+"']").val();
		     var qcyenum=$("input[name='"+qcye+"']").val();
			 var bnljdfnum=$("input[name='"+bnljdf+"']").val();
			 $("input[name='"+str1+"']").val((str2*hl).toFixed(2));
			 var bnljjfbwbnum= $("input[name='"+bnljjfbwb+"']").val();
		     var bnljdfbwbnum=$("input[name='"+bnljdfbwb+"']").val();
		     var cshbwbnum=$("input[name='"+cshbwb+"']").val();
		     var jg=(Number(qcyenum)+Number(bnljdfnum)-Number(bnljjfbnum)).toFixed(2);
		     var cshjg=(Number(cshbwbnum)+Number(bnljdfbwbnum)-Number(bnljjfbwbnum)).toFixed(2);
		     if(kmfx==101401){
		    	 jg=(Number(qcyenum)-Number(bnljdfnum)+Number(bnljjfbnum)).toFixed(2);
		    	 cshjg=(Number(cshbwbnum)-Number(bnljdfbwbnum)+Number(bnljjfbwbnum)).toFixed(2);
		     }
			  $("input[name='"+ncye+"']").val(jg);
		     $("input[name='"+ncyebwb+"']").val(cshjg);
		}


     var slbnljjfsl="kmyeb\\.slbnljjfsl";
     var slbnljdfsl="kmyeb\\.slbnljdfsl";
     var slqcyesl="kmyeb\\.slqcyesl";
     var ncsl="kmyeb\\.ncsl";
     
     $("input[name='"+slqcyesl+"']").change( function() {
    	sl();
	  	});

     $("input[name='"+slbnljdfsl+"']").change( function() {
     	sl()
	  	});

     $("input[name='"+slbnljjfsl+"']").change( function() {
     sl();
	  	});
     function sl(){
    		
 	     var bnljjfbwbnum= $("input[name='"+slbnljjfsl+"']").val();
         var bnljdfbwbnum=$("input[name='"+slbnljdfsl+"']").val();
	     var cshbwbnum=$("input[name='"+slqcyesl+"']").val();
	     
	     var jg=(Number(cshbwbnum)+Number(bnljdfbwbnum)-Number(bnljjfbwbnum)).toFixed(2);
         if(kmfx==101401){
        	 jg=(Number(cshbwbnum)-Number(bnljdfbwbnum)+Number(bnljjfbwbnum)).toFixed(2);
         }

		  $("input[name='"+ncsl+"']").val(jg);
         }
	  	
	function aa(json){
		var bz=json.b_name;
	    if(bz!=""){
	    	    $("#kmyeb\\.bzname").val(bz);
				$("#huilv").val(json.b_huilv);
				getnum();
			}
	   
	}
	function fzhs(json){
		var nr=json.name;
		if(nr!="")
		$("#kmyeb\\.fzhsnr").val(nr);
		getnum();
	}

	function getnum(){
		var  kmid="${kmyeb.kmmclookup.id}";
		var bz=$("#kmyeb\\.bzname").val();
		var fzhs=$("#kmyeb\\.fzhs").val();
		var nr=$("#kmyeb\\.fzhsnr").val();
		if(fzhs==undefined){
			fzhs=null;
			nr=null;
		}
		$.get("kmyebGetye.action?kmyeb.kmmclookup.id="+kmid+"&kmyeb.fzhs="+(encodeURI(fzhs))+"&kmyeb.fzhsnr="+(encodeURI(nr))+"&kmyeb.bzname="+(encodeURI(bz)),
				function(data){
				  var num=data.split("-");
				  if(num[0]=='null')
					for(var i=0;i<num.length;i++)
					{
	                   num[i]=0;
					}
				 $("input[name='"+ncye+"']").val(num[0]);
				 if($("input[name='"+bnljjf+"']").val()!=undefined)
				 {
					 $("input[name='"+bnljjf+"']").val(num[1]);
					 $("input[name='"+bnljdf+"']").val(num[2]);
					 $("input[name='"+qcye+"']").val(num[3]);
				 }
				 $("input[name='"+ncyebwb+"']").val(num[4]);
				 if($("input[name='"+bnljjf+"']").val()!=undefined)
				 {
					 $("input[name='"+bnljjfbwb+"']").val(num[5]);
					 $("input[name='"+bnljdfbwb+"']").val(num[6]);
					 $("input[name='"+cshbwb+"']").val(num[7]);
				 }
				 if( $("input[name='"+ncsl+"']").val()!=undefined){
					 $("input[name='"+ncsl+"']").val(num[8]);
				     $("input[name='"+slbnljjfsl+"']").val(num[9]);
				     $("input[name='"+slbnljdfsl+"']").val(num[10]);
					 $("input[name='"+slqcyesl+"']").val(num[11]);
				 }
			
			
			
			});
		}
</script>