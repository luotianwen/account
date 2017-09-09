<%@page import="java.util.*" contentType="text/html; charset=GBk"%>
<%
  String root = request.getContextPath();
  String report = request.getParameter( "jsp" );
 
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=GBk">
	</head>
	<body>
		<iframe  src="<%=root%>/report/<%=report %>"  frameborder="0"  scrolling="no" width="100%" height="1000px"></iframe>
	</body>
	
	
</html>
