<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="info_Daarc.AbcdBeans"%>

<html>
<title>�ύX���</title>
<body>

	<%
		AbcdBeans abc = (AbcdBeans) request.getAttribute("abc");
	%>

	<br> �ȉ�����ύX�ł��܂��B
	<br>
	<br>
	<form action="/test_janne/Edit" method="POST">

		ID: <%=abc.getId()%>�i�ύX�s�j <input type="hidden" name="id" value="<%=abc.getId()%>"> 
		
			���O: <input type="text" name="name" value="<%=abc.getName()%>"> 
			
			���ʁF<SELECT NAME="sei">
					<OPTION VALUE="<%=abc.getSei()%>" selected><%=abc.getSei()%></OPTION>
					<OPTION VALUE="�j">�j</OPTION>
					<OPTION VALUE="��">��</OPTION>
				</SELECT> 
		���܂ꂽ�N�F<input type="text" name="nen" value="<%=abc.getNen()%>">
		
	<!--  	  <SELECT NAME="nen">
				    <OPTION VALUE="<%=abc.getNen()%>" selected><%=abc.getNen()%></OPTION>
					  <OPTION VALUE="1990">1990</OPTION>
					<OPTION VALUE="1991">1991</OPTION>
					<OPTION VALUE="1992">1992</OPTION>
					<OPTION VALUE="1993">1993</OPTION>
					<OPTION VALUE="1965">1965</OPTION> 
			     </SELECT> -->
			    
		�Z��: <input type="text" name="address" value="<%=abc.getAddress()%>"> 
		<br>
		<br> <input type="hidden" name="mode" value="del_add">
		 <input	type="submit" value="�ύX�m��">
	</form>


	<br>


	<a href="./index.jsp">�g�b�v�ɖ߂�</a>

</body>
</html>