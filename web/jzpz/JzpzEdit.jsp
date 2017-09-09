<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>

 <jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<style type="text/css">
.inputsize{ width:99%; height:100%; }
</style>
<script src="styles/dwz/js/dwz.ltw.numeral.js" type="text/javascript"></script>
  
<script language="javascript">
   $(".numeral").numeral();
	function pzzh(json){
		var ksrq=$("#jzpz\\.pzrq").val();
		if(ksrq==""){
			 alertMsg.error('先选日期');
			 return false;
		}
		$("#pzzlz").val(json.sname);
		$.post("jzpzgetjzpzh.action",{"jzpz.pzbh":json.sname,"jzpz.pzrq": ksrq},
		 function(data){
			$("#pzzlh").val(data);
			$("#jzpz\\.pzbh").val(json.sname+"-"+data);
		});
		    
	}
	function validateCallbackss(form, callback) {
		var jfjehj=$("#jfjehj").val();
		var dfjehj=$("#dfjehj").val();
		if(jfjehj<=0||dfjehj<=0){
			alertMsg.error("借方贷方金额必须填写!");
			return false;
		}
		else if(jfjehj!=dfjehj){
			alertMsg.error("借方贷方金额必须相等!");
			return false;
		}
		var $form = $(form);
		if (!$form.valid()) {
			return false;
		}
		var len="${fn:length(jzpz.pzmxs)}";
		var obj={};
		for ( var i = 0; i < len; i++) {
			var kmid="jzpz\\.pzmxs\\["+i+"\\]\\.kjkm\\.id";
			var value=$("#"+kmid).val();
			if(value!=""){
				 if(obj[value]){
					 alertMsg.error("科目不能相同!");
					 return false;
				 }
				 else{
					 obj[value]=value;
				 }
			}
		}
		
		
		
		$.ajax({
			type: form.method || 'POST',
			url:$form.attr("action"),
			data:$form.serializeArray(),
			dataType:"json",
			cache: false,
			success: callback || DWZ.ajaxDone,
			error: DWZ.ajaxError
		});
		return false;
	}
</script>
<h2 class="contentTitle" align="center" style="border:none; font-size:15px; margin-top:30px;"><hi:text key="记 账 凭 证" parameterLanguageKeys=""/></h2>
<form action="jzpzSave.action?navTabId=jzpzList&callbackType=forward&ajax=1&forwardUrl=jzpzEdit.action?jzpz.id=-1" method="post" class="pageForm required-validate" onsubmit="return validateCallbackss(this, navTabAjaxDone)">
<div class="pageContent">
	<div class="pageFormContent">
		<dl style="width:40%">
			<dt style="width:20%;"><hi:text key="日&nbsp;期" entity="Jzpz"/>:</dt>
			<dd style="width:40%;">
				<input  type="text" size="9" id="jzpz.pzrq" name="jzpz.pzrq" class="textInput date required" readonly="readonly"
					value="<fmt:formatDate value='${jzpz.pzrq}' pattern='yyyy-MM-dd'/>"/>
				<a href="javascript:void(0)" class="inputDateButton"><hi:text key="选择"/></a>
			</dd>
		</dl>
		<dl style="width:35%">
			<dt style="width:20%;"><hi:text key="编&nbsp;号" entity="Jzpz"/>:</dt>
			<dd style="width:35%;">
			  
				<input  size="1" callback="pzzh" type="text" class="textInput required" name="pzzlz" id="pzzlz" value="${fn:substringBefore(jzpz.pzbh,"-")}"
					autocomplete="off" lookupGroup="Jzpz" lookupName="kmmclookup" suggestClass="com.huolong.jcsz.model.Pzzl" searchFields="name,sname" style="border:none; background:none; border-bottom:1px dashed #ccc; width:25px;" />
			  <input type="text" size="3" name="pzzlh" readonly="readonly" id="pzzlh" value="${fn:substringAfter(jzpz.pzbh,"-")}" style="border:none; background:none; border-bottom:1px dashed #ccc; " />号
	  	      <input type="hidden" size="8" id="jzpz.pzbh" name="jzpz.pzbh" readonly="readonly"  class="textInput" value="${jzpz.pzbh}" />
			
			</dd>
		</dl>
		
		
		
		<dl style="width:22%">
			<dt style="width:30%;"><hi:text key="附件数" entity="Jzpz"/>:</dt>
			<dd style="width:30%;"><input type="text" name="jzpz.fjs" class="textInput integer" size="5" value="${jzpz.fjs}" style="border:none; background:none; border-bottom:1px dashed #ccc; " /></dd>
		</dl>	 
	</div>
	<input type="hidden" name="jzpz.ztai" value="200502"/>
	<input type="hidden" name="jzpz.id" value="${jzpz.id}"/>
	<input type="hidden" name="jzpz.creator.id" value="${jzpz.creator.id}"/>
	<input type="hidden" name="jzpz.version" value="${jzpz.version}"/>
		<div class="tabsContent" style="height:100%;" layoutH="157">
				<table class="list nowrap" width="100%" style="margin-top:0px;">
					<thead>
						<tr>
							<th type="lookup" class="required" style="font-weight:normal; text-align:center;" name="name" lookupName="zhaiyao" lookupUrl="<hi:url>zhaiyaoLookup.action?lookup=1</hi:url>" suggestClass="com.huolong.jzpz.model.Zhaiyao" searchFields="name" width="15%"><hi:text key="摘要内容" entity="Pzmx"/></th>
							<th type="lookup" class="required" style="font-weight:normal; text-align:center;" name="kmwz" lookupName="kjkm" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmwz" width="20%"><hi:text key="会计科目" entity="Pzmx"/></th>
							<th type="text" class=" number" style="font-weight:normal; text-align:center;" name="jfje" width="15%"><hi:text key="借方金额" entity="Pzmx"/></th>
							<th type="text" class=" number" style="font-weight:normal; text-align:center;" name="dfje" width="15%"><hi:text key="贷方金额" entity="Pzmx"/></th>
						</tr>
					</thead>
					<tbody> 
					    <input type="hidden" lookupGroup="jzpz.pzmxs" lookupName="kjkm"  name="pageInfo.f_kmmx" value="3200" />
					    <input type="hidden" lookupGroup="jzpz.pzmxs" lookupName="kjkm"  name="pageInfo.orgs.f_id" value="${jzpz.orgs.id}" />
						<input type="hidden" lookupGroup="jzpz.pzmxs" lookupName="zhaiyao"  name="pageInfo.orgs.f_id" value='${jzpz.orgs.id}' />
						<!-- {1,2,3,4,5} -->
						<c:forEach var="item" items="${jzpz.pzmxs}"  varStatus="s">
						<tr style="border-bottom:1px solid #000;" <c:if test="${s.index%2==0}"> class="trbg"</c:if>>
							<input type="hidden" name="jzpz.pzmxs[${s.index}].id" value="${item.id}"/>
							<td  width="15%" style="border-bottom:1px solid #f1f1f1;">
								<input type="hidden" name="jzpz.pzmxs[${s.index}].zhaiyao.id" value=""/>
								<input type="hidden" id="jzpz.pzmxs[${s.index}].zhaiyao" name="jzpz.pzmxs[${s.index}].zhaiyao" value="${item.zhaiyao}" />
								<input class="inputsize"   type="text" callback="zhaiyao" onchange="changezhaiyao(${s.index})"  name="jzpz.pzmxs[${s.index}].hi_zhaiyao.name" value="${item.zhaiyao}" 
										suggestwidth="17%" autocomplete="off" lookupGroup="jzpz.pzmxs" lookupName="zhaiyao" index="${s.index}" suggestClass="com.huolong.jzpz.model.Zhaiyao" searchFields="name" style="border:none; background:none;" />
									 
							</td>
							<td width="20%" style="border-bottom:1px solid #f1f1f1;">
									 
									<input   type="hidden" id="jzpz.pzmxs[${s.index}].kjkm.id" name="jzpz.pzmxs[${s.index}].kjkm.id" value="${item.kjkm.id}"/>
									
									<input  suggestwidth="23%"  type="text"  class="inputsize" name="jzpz.pzmxs[${s.index}].hi_kjkm.kmwz" value="${item.kjkm.kmwz}"  width="100%" size=40
									 callback="chioce"	autocomplete="off" lookupGroup="jzpz.pzmxs" lookupName="kjkm" index="${s.index}" suggestClass="com.huolong.xtsz.model.Kjkm" searchFields="kmbh,kmwz" style="border:none; background:none;" />
									 
							</td>
							
								 
							 
							<td style="text-align:right; border-bottom:1px solid #f1f1f1;">
									<input type="text" onchange="sum(this)"  class="inputsize numeral" index="${s.index}" comptoid="dfje" id="jzpz.pzmxs[${s.index}].jfje" name="jzpz.pzmxs[${s.index}].jfje" value="${item.jfje}" size="15" style="border:none; background:none; text-align:right;" />
							</td>
							<td style="text-align:right; border-bottom:1px solid #f1f1f1;">
									<input type="text" onchange="sum(this)" class=" inputsize numeral" index="${s.index}" comptoid="jfje" id="jzpz.pzmxs[${s.index}].dfje"  name="jzpz.pzmxs[${s.index}].dfje" value="${item.dfje}" size="15" style="border:none; background:none; text-align:right;" />
							</td>
						</tr>
						</c:forEach>
						<tr>
							<td style="text-align:center; border-bottom:1px solid #f1f1f1;">合计</td>
							<td style="border-bottom:1px solid #f1f1f1;"></td>
						 
							<td style="text-align:right; border-bottom:1px solid #f1f1f1;"><input type="text" class=" float  "  name="jzpz.zje" value="${jzpz.zje}" id="jfjehj" readonly="readonly" size="15" style="border:none; background:none; text-align:right;" /></td>
							<td style="text-align:right; border-bottom:1px solid #f1f1f1;"><input type="text" class=" float  "             value="${jzpz.zje}" id="dfjehj" readonly="readonly"  size="15" style="border:none; background:none; text-align:right;" /></td>
						</tr>
					</tbody>
				</table>
				<table class="list nowrap" width="100%" style="border:none;">	
					<tr>
						<td width="30%" style="border:none;"></td>
						<td width="20%" style="text-align:right; border:none;">记账:
						 <input type="hidden" id="jzpz.jzr" name="jzpz.jzr" value="${jzpz.jzr}"/>
					    <input type="hidden" name="hiOrg.manager.id" value="" />
				        <input callback=manager type="text" class="textInput" name="hiOrg.hi_manager.fullName" value="${jzpz.jzr}" size=10
					     lookupGroup="hiOrg" lookupName="manager" suggestClass="org.hi.base.organization.model.HiUser" searchFields="fullName"/>
			
						</td>
						<td width="5%" style="text-align:right; border:none;">审核:</td><td style="text-align:left; border:none; width: 10%"><input  name="jzpz.shr" type="text" readonly="readonly" size="10" value="${jzpz.shr }"></td>
						<td width="5%" style="text-align:right; border:none;">制单:</td><td style="text-align:left; border:none; width: 10%"><input  name="jzpz.zdr" type="text" size="10" value="${jzpz.zdr}"></td>
					</tr>
				</table>					
		</div>
</div>
<div class="formBar">
	<ul>
		<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
		<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
	</ul>
</div>  
</form>

<script language="javascript">
   function chioce(args,index){
	   var len="${fn:length(jzpz.pzmxs)}";
		var obj={};
		for ( var i = 0; i < len; i++) {
			var kmid="jzpz\\.pzmxs\\["+i+"\\]\\.kjkm\\.id";
			var value=$("#"+kmid).val();
			if(value!=""){
				 if(obj[value]){
					 $("#"+kmid).val("");
					  alertMsg.error("科目不能相同!");
					 return false;
				 }
				 else{
					 obj[value]=value;
				 }
			}
		}
   }
   function zhaiyao(json,index){
	 $("#jzpz\\.pzmxs\\["+index+"\\]\\.zhaiyao").val(json.name);
	}
   function manager(json,index){
		 $("#jzpz\\.jzr").val(json.fullName);
	}
   function changezhaiyao(index){
		 var fzhsname="jzpz\\.pzmxs\\["+index+"\\]\\.hi_zhaiyao\\.name";
		 $("#jzpz\\.pzmxs\\["+index+"\\]\\.zhaiyao").val($("input[name='"+fzhsname+"']").val());
	}
	function sum($this){
		var index=$($this).attr("index");
		var km="jzpz\\.pzmxs\\["+index+"\\]\\.kjkm\\.id";
		if(""==$("#"+km).val()){
			alertMsg.error("请先选择科目!");
			$($this).val("");
			$("#"+km.replace("id","kmwz")).focus();
			return false;
		}
		
		
		var dfjehj=0,jfjehj=0;
		var compToid=$($this).attr("comptoid");
		
		var sourevalue=$("#jzpz\\.pzmxs\\["+index+"\\]\\."+compToid).val();
		if(sourevalue>0){
			$($this).val("");
		}
		for ( var i = 0; i <"${orderIndexs}"; i++) {
			jfjehj+=Number($("#jzpz\\.pzmxs\\["+i+"\\]\\.jfje").val());
			dfjehj+=Number($("#jzpz\\.pzmxs\\["+i+"\\]\\.dfje").val());
		}
		$("#jfjehj").val(jfjehj);
		$("#dfjehj").val(dfjehj);
	} 
	 
</script>