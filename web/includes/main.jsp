<%@ taglib uri="http://acegisecurity.org/authz" prefix="authz" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="/struts-tags" prefix="ws" %>
<%@ taglib uri="/WEB-INF/tld/struts-menu.tld" prefix="menu" %>
<%@ taglib uri="/WEB-INF/tld/hi.tld" prefix="hi" %>
<%
	String path = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath();
%>
<%// 是否已发布的开关,其目的是如果为true则关闭那些对终端用户不可见的功能按钮 %>
<ws:set name="published" value="@org.hi.framework.HiConfigHolder@getPublished()" />
<%// 是否已开启帮助功能,如果为tre则显示帮助功能 %>
<ws:set name="isHelper" value="@org.hi.framework.HiConfigHolder@getHelper()" />
<%// 超级管理员类型的值,有些功能只对超级管理员开放 %>
<ws:set name="administratorType" value="@org.hi.base.organization.model.UserType@USERTYPE_ADMINISTRATOR" />

<ws:set name="companyId" value="@com.huolong.cache.HuolongContextHelper@getCompanyId()" />

<%// 当前用户的所有信息,可以通过该变量获取 %>
<ws:set name="currentUser" value="@org.hi.framework.security.context.UserContextHelper@getUser()" />
<%// 当前用户是否是超级管理员,有些功能只对超级管理员开放 %>
<ws:set name="isSupperManager" value="#currentUser.isSupperManager()" />
<ws:set name="contextName" value="@org.hi.framework.HiConfigHolder@getWebContextName()" />
<%// 当前用户的ID值,可以通过该变量获取 %>
<ws:set name="currentId" value="@org.hi.framework.security.context.UserContextHelper@getUserId()" />
<script type="text/javascript">
<!--
	var contextName = '<ws:property value="contextName" />';
	var hi_helper = false;

	//取3个数字中最大的
	function getBiggest(a,  b, c){
		if(isNaN(a)) a = 0;
		if(isNaN(b)) b = 0;
		if(isNaN(c)) c = 0 ;
		var tmp = Number(a) > Number(b)? a:b;
		tmp =Number(c) > Number(tmp)? c:tmp;
		//console.log(tmp);
		tmp=tmp>=750?750:tmp;
		return tmp;
	}
	//取clientHeight, scrollHeight, offsetHeight 中最大的的
	function getBiggestForBodyHeight(myIfrBody){
		if(myIfrBody != null){
			return getBiggest(myIfrBody.clientHeight, myIfrBody.scrollHeight, myIfrBody.offsetHeight) ;
		}else return 0;
	}
	/*为对象添加事件, 兼容IE6, firefox, 这里不对参数进行验证,
	  不覆盖原来的事件方法, 而是在原来的事件方法后面再添加事件方法
	  obj 元素对象
	  type 事件名称, 不带on, 如load, click
	  fn 方法对象
	  auto 布尔值, 表示是否用最后一种方法
	*/
	var addEvent = function(obj, type, fn, auto){   
		if(!obj)return obj;
		if (!auto &&obj.addEventListener){ //firefox
			//alert('ff: addEventListener');
			obj.addEventListener(type, fn, false);//这个不先执行   
		}
	    else if(!auto && obj.attachEvent){   //IE
			//alert('ie: attachEvent ');
	        obj.attachEvent('on' + type, fn);   
	    }else{ //other, 在firefox 无法执行
			//alert('auto');
			var oldEvent = eval('obj.document.body.on' + type);
			//alert(oldEvent);
			//alert(Object.prototype.toString.call(oldEvent));
			eval('obj.document.body.on'+type+' = function(){ '+
				'if(oldEvent && typeof oldEvent == "function"){ '+
				'	oldEvent(); '+
				'} ' +
				'fn() ' + 
			'} ');
		}
	    return obj;   
	}   
	//自适应高度, 用clientHeight, scrollHeight, offsetHeight 中最大的的
	function suitSelf(myIfrObj, trycount){
		if(myIfrObj == null) alert(' suitSelf myIfrObj is null');
		if(!trycount) trycount = 15;
		try{
			//debugger;
			if(myIfrObj.timeHandle) 
				clearTimeout(timeHandle);
			var myIfrBody = myIfrObj.contentWindow.document.body;       //contentWindow是为了适应ff 
			//getAttribute 不是取属性兼容性最好的写法
			if(document.all && myIfrObj.getAttribute('frameborder') == '1'){
			    //有边框, 在IE 中会出现滚动条, 所以加一个大于边框宽度的数字, 
				//由于offsetHeight是只读的, 并且每次会等于 myIfrObj.style.height, 所以抛弃不进行比较
				myIfrObj.style.height = getBiggest(myIfrBody.clientHeight, myIfrBody.scrollHeight, myIfrObj.height) + 5 ;
			}else
				myIfrObj.style.height = getBiggestForBodyHeight(myIfrBody);
			//添加滚动条事件, 不会覆盖iframe里面的页面的相关方法
			//这里要避免重复执行, IE也可以是myIfrObj.contentWindow.document.body, ff不行
			 //addEvent(myIfrObj.contentWindow,'scroll',function(){ suitSelf(myIfrObj); });
	        //附带一个iframe内容的点击事件, 如果不需要可以去掉
			//addEvent(myIfrObj.contentWindow.document.body,'click',function(){ alert('onclick event');});
														
		}catch(e){//页面还没加载完成或跨域都会抛异常
			//alert(e);
			if(!myIfrObj.timeHandleCount) 
				myIfrObj.timeHandleCount = 1;
			else 
				++myIfrObj.timeHandleCount;
			if(myIfrObj.timeHandleCount <= trycount){
				myIfrObj.timeHandle = setTimeout(function(){
												suitSelf(myIfrObj)
											 },
											 200);  //如果加载事件很长, 建议把等待时间加大
			}
		}
	}
	//-->

</script>