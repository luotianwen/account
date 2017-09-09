<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<!--<hi:text key="编辑页面" parameterLanguageKeys="科目初始化" />
navTabId=viewkjkm&callbackType=closeCurrent&ajax=1

-->
<form
	action="kmyebSave2.action?navTabId=kjkmCsh&callbackType=closeCurrent&ajax=1"
	method="post" class="pageForm required-validate"
	onsubmit="return validateCallback(this, navTabAjaxDone)">
<div class="pageContent">
<div class="pageFormContent pageHeader kmcsh">
<dl>
	<dt><hi:text key="科目名称" entity="Kjkm" />：</dt>
	<dd><input type="text" name="kmyeb.kmmclookup.kmmc"
		class="textInput" readonly="readonly" value="${kmyeb.kmmclookup.kmmc}" />
	</dd>
</dl>
<dl>
	<dt><hi:text key="科目方向" entity="Kjkm" />：</dt>
	<dd><hi:select emu="kmfx" name="kmyeb.kmmclookup.kmfx"
		isLabel="true" /></dd>
</dl>
  
  </div>
<div class="formBar">
		<ul>
			<li><div class="buttonActive"><div class="buttonContent"><button type="submit"><hi:text key="保存"/></button></div></div></li>
			<li><div class="button"><div class="buttonContent"><button class="close" type="button"><hi:text key="关闭"/></button></div></div></li>
		</ul>
	</div>  
</div>

<div class="grid">
<div class="gridHeader">
<div class="gridThead">
<table style="width: 1041px;">
	<thead>
		<tr>
			<th class="left" style="width: 37px; cursor: default;"></th>
			<th class="left" style="width: 95px;">
			<div title="" class="gridCol">年初余额</div>
			</th>
			<c:if test="${orderIndexs}">
				<th class="left" style="width: 167px; cursor: default;">
				<div class="gridCol">本年累计借方</div>
				</th>
				<th class="left" style="width: 145px;">
				<div title="本年累计贷方" class="gridCol">本年累计贷方</div>
				</th>
				<th class="left" style="width: 195px;">
				<div title="期初余额" class="gridCol">期初余额</div>
				</th>
			</c:if>
		</tr>
	</thead>
</table>
</div>
</div>

<div style="width: 1061px; height: 81px; overflow: auto;" 
	class="gridScroller">
<div class="gridTbody">
<table style="width: 1041px;">
	<tbody>

		<tr class="">
			<td class="left" style="width: 37px;">
			<div>原币</div>
			</td>
			<td class="left" style="width: 95px;">
			<div><input type="text" name="kmyeb.ncye"
				<c:if test="${orderIndexs}"> readonly="readonly" </c:if>
				class="float required" value="${kmyeb.ncye}" /></div>
			</td>
			<c:if test="${orderIndexs}">
				<td class="left" style="width: 167px;">
				<div><input type="text" name="kmyeb.bnljjf"
					class="float required" value="${kmyeb.bnljjf}" /></div>
				</td>
				<td class="left" style="width: 145px;">
				<div><input type="text" name="kmyeb.bnljdf"
					class="float required" value="${kmyeb.bnljdf}" /></div>
				</td>
				<td class="left" style="width: 195px;">
				<div><input type="text" name="kmyeb.qcye"
					class="float required" value="${kmyeb.qcye}" /></div>
				</td>
			</c:if>
		</tr>
		  
	</tbody>
</table>
</div>
 </div>

 <input type="hidden" name="kmyeb.kmmclookup.id"
	value="${kmyeb.kmmclookup.id}" /> <input type="hidden" name="kmfx"
	id="kmfx" value="${kmyeb.kmmclookup.kmfx}" />
</div>


</form>

<script language="javascript">
     var bnljjf="kmyeb\\.bnljjf";
     var bnljdf="kmyeb\\.bnljdf";
     var qcye="kmyeb\\.qcye";
     var ncye="kmyeb\\.ncye";
   
     var kmfx=$("#kmfx").val();
     $("input[name='"+bnljjf+"']").change( function() {
		   jenum();
	  	});
     $("input[name='"+bnljdf+"']").change( function() {
 	    jenum();
	  	});
     $("input[name='"+qcye+"']").change( function() {
 	    jenum();
	  	});
		function jenum(){
			 var hl=$("#huilv").val();
			 var bnljjfbnum= $("input[name='"+bnljjf+"']").val();
		     var qcyenum=$("input[name='"+qcye+"']").val();
			 var bnljdfnum=$("input[name='"+bnljdf+"']").val();
		     var jg=(Number(qcyenum)+Number(bnljdfnum)-Number(bnljjfbnum)).toFixed(2);
		     if(kmfx==101401){
		    	 jg=(Number(qcyenum)-Number(bnljdfnum)+Number(bnljjfbnum)).toFixed(2);
		     }
			  $("input[name='"+ncye+"']").val(jg);
		}
  
 
</script>