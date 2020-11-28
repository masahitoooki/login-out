<%@ page language="java" contentType="text/html;charset=Windows-31J"%>
<%@page import="java.sql.*"%>

<html>
<head>
<title>一覧</title>
</head>
<body>
	<br>

	<%
		ResultSet rset = (ResultSet) request.getAttribute("kekka");
	%>
	<h2>一覧</h2>
	<table border="1">
		<tr bgcolor="#CBFFD3">
			<td><b>登録時刻</b></td>
			<td><b>ID</b></td>
			<td><b>名前</b></td>
			<td><b>性別</b></td>
			<td><b>生まれた年</b></td>
			<td><b>住所</b></td>
			<td><b>削除</b></td>
			<td><b>変更</b></td>
		</tr>
		<%
		while (rset.next()) {
		%>

		<tr>
			<td><%=rset.getString(1)%></td>
			<td><%=rset.getString(2)%></td>
			<td><%=rset.getString(3)%></td>
			<td><%=rset.getString(4)%></td>
			<td><%=rset.getString(5)%></td>
			<td><%=rset.getString(6)%></td>
			<td><a href="Edit?&mode=delete&id=<%=rset.getString(2)%>"><input type="submit" value="削除"></a></td>
			<td>
				<form action="/test_janne/Edit" method="POST">
					<input type="hidden" name="mode" value="change"> 
					<input type="hidden" name="updated_at" value="<%=rset.getString(1)%>"> 
					<input type="hidden" name="id" value="<%=rset.getString(2)%>"> 
					<input type="hidden" name="name" value="<%=rset.getString(3)%>">
					<input type="hidden" name="sei" value="<%=rset.getString(4)%>">
					<input type="hidden" name="nen" value="<%=rset.getString(5)%>">
					<input type="hidden" name="address" value="<%=rset.getString(6)%>">
					<input type="submit" value="変更" >
				</form>
			</td>
			
		</tr>
		<%
			}
		%>
	</table>

	<br>

	<a href="./index.jsp">トップに戻る</a>

</body>
</html>
