<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="info_Daarc.AbcdBeans"%>

<html>
<title>変更画面</title>
<body>

	<%
		AbcdBeans abc = (AbcdBeans) request.getAttribute("abc");
	%>

	<br> 以下から変更できます。
	<br>
	<br>
	<form action="/test_janne/Edit" method="POST">

		ID: <%=abc.getId()%>（変更不可） <input type="hidden" name="id" value="<%=abc.getId()%>"> 
		
			名前: <input type="text" name="name" value="<%=abc.getName()%>"> 
			
			性別：<SELECT NAME="sei">
					<OPTION VALUE="<%=abc.getSei()%>" selected><%=abc.getSei()%></OPTION>
					<OPTION VALUE="男">男</OPTION>
					<OPTION VALUE="女">女</OPTION>
				</SELECT> 
		生まれた年：<input type="text" name="nen" value="<%=abc.getNen()%>">
		
	<!--  	  <SELECT NAME="nen">
				    <OPTION VALUE="<%=abc.getNen()%>" selected><%=abc.getNen()%></OPTION>
					  <OPTION VALUE="1990">1990</OPTION>
					<OPTION VALUE="1991">1991</OPTION>
					<OPTION VALUE="1992">1992</OPTION>
					<OPTION VALUE="1993">1993</OPTION>
					<OPTION VALUE="1965">1965</OPTION> 
			     </SELECT> -->
			    
		住所: <input type="text" name="address" value="<%=abc.getAddress()%>"> 
		<br>
		<br> <input type="hidden" name="mode" value="del_add">
		 <input	type="submit" value="変更確定">
	</form>


	<br>


	<a href="./index.jsp">トップに戻る</a>

</body>
</html>