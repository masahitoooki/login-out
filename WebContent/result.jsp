<%@ page language="java" contentType="text/html;charset=Windows-31J"%>

<html>
<head>
<title>確認画面</title>
</head>
<body>
	<br>

	<%
		String status = (String) request.getAttribute("status");
	%>

	<br>
	<br>
	<%=status%>
	<br>
	<br>

	<a href="./index.jsp">トップページに戻る</a>


</body>
</html>
