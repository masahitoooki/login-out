<%@ page language="java" contentType="text/html;charset=Windows-31J"%>

<html>
<title>お試し</title>
<body>

	<br> 以下から登録できます。
	<br>
	<br>

	<form action="/test_janne/Edit" method="POST">

		ID: <input type="text" name="id"> 
		
		名前: <input type="text" name="name"> 
		
		性別:<SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="男">男</OPTION>
			<OPTION VALUE="女">女</OPTION>
		</SELECT> 
		
		生まれた年：<input type="text" name="nen">
		<!--  <SELECT NAME="nen">
			  <OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="1990">1990</OPTION>
			<OPTION VALUE="1991">1991</OPTION>
			<OPTION VALUE="1993">1993</OPTION>
			<OPTION VALUE="2001">2001</OPTION>
			<OPTION VALUE="1965">1965</OPTION>
		</SELECT> -->
		
		住所: <input type="text" name="address"> 
		<br>
		<br>
		<input type="hidden" name="mode" value="add"> 
		<br>
		<input type="submit" value="登録">
		<br>
		<br>
		<br>
		<input type="reset" value="入力内容をリセットする">
	</form>
	

	<!-- -------------------- -->
	<br>
	<br>
	<br>
	
	<br> 検索条件を入力してください。
	<br>（何も入力しないと全件抽出します）
	<br>
	<br>

	<form action="/test_janne/Search" method="POST">

		ID: <input type="text" name="id"> 
		
		名前: <input type="text" name="name"> 
		
		性別：
		 <SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="男">男</OPTION>
			<OPTION VALUE="女">女</OPTION>
		</SELECT> 
		
		生まれた年：<input type="text" name="nen"> 
		<!--  <SELECT NAME="nen">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="1990">1990</OPTION>
			<OPTION VALUE="1991">1991</OPTION>
			<OPTION VALUE="1993">1993</OPTION>
			<OPTION VALUE="2001">2001</OPTION>
			<OPTION VALUE="1965">1965</OPTION>
		</SELECT> -->
		
		 住所:<input type="text" name="address">
		<!--   <SELECT NAME="address">
		 	<OPTION VALUE="" selected></OPTION>
		 	<OPTION VALUE="埼玉県さいたま市">埼玉県さいたま市</OPTION>
		 	<OPTION VALUE="東京都練馬区">東京都練馬区</OPTION>
		 	<OPTION VALUE="東京都小金井市">東京都小金井市</OPTION>
		 	<OPTION VALUE="神奈川県鎌倉">神奈川県鎌倉</OPTION>
		 	<OPTION VALUE="佐賀県神埼郡千代田町">佐賀県神埼郡千代田町</OPTION>
		 </SELECT>-->
		<br>
		<br>
		<br>
		<input type="submit" value="検索">
		<br>
		<br>
		<br>
		<input type="reset" value="入力内容をリセットする">
	</form>
	
	