<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ include file="/includes/main.jsp"%>
<div class="pageFormContent" align="center" layoutH="1200">
	<div style="margin: 15px 100px 0px" align="center" >
		<dt>
			<hi:text key="当前期间" />
			：
		</dt>
		<dd id="qj">${condition.condition1}</dd>
	</div>
</div>
<div class="pageHeader">

	<div class="searchBar" style="margin-left:  200px;">
		<div>
			<div class="buttonActive">
				<div class="buttonContent">
					<button type="button" onclick="scsypz()">
						<hi:text key="生成损益凭证" />
					</button>
				</div>
			</div>
		</div>

		<div>
			<div class="buttonActive">
				<div class="buttonContent">
					<button type="button" onclick="jz()">
						<hi:text key="结账到下期" />
					</button>
				</div>
			</div>
		</div>
		<div>
			<div class="buttonActive">
				<div class="buttonContent">
					<button type="button" onclick="fjz()">
						<hi:text key="结账到上期" />
					</button>
				</div>
			</div>
		</div>
	</div>
</div>

<script language="javascript">
	function tz(url) {
		$.ajax({
			type : 'POST',
			url : url,
			dataType : 'json',
			cache : false,
			data : "",
			success : callback,
			error : DWZ.ajaxError
		});
	}
	function callback(json) {
		if (json.statusCode == DWZ.statusCode.error) {
			if (json.message)
				alertMsg.error(json.message);
		} else {
			$("#qj").html(json.qj);
			alertMsg.correct(json.message);
		}
	}
	function jz() {
		tz("jzview.action?ajax=1");
	}
	function scsypz() {
		tz("scsypzview.action?ajax=1");
	}
	function fjz() {
		tz("fjzview.action?ajax=1");
	}
</script>