<%@ page language="java" contentType="text/html;charset=Windows-31J"%>

<html>
<title>������</title>
<body>

	<br> �ȉ�����o�^�ł��܂��B
	<br>
	<br>

	<form action="/test_janne/Edit" method="POST">

		ID: <input type="text" name="id"> 
		
		���O: <input type="text" name="name"> 
		
		����:<SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="�j">�j</OPTION>
			<OPTION VALUE="��">��</OPTION>
		</SELECT> 
		
		���܂ꂽ�N�F<input type="text" name="nen">
		<!--  <SELECT NAME="nen">
			  <OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="1990">1990</OPTION>
			<OPTION VALUE="1991">1991</OPTION>
			<OPTION VALUE="1993">1993</OPTION>
			<OPTION VALUE="2001">2001</OPTION>
			<OPTION VALUE="1965">1965</OPTION>
		</SELECT> -->
		
		�Z��: <input type="text" name="address"> 
		<br>
		<br>
		<input type="hidden" name="mode" value="add"> 
		<br>
		<input type="submit" value="�o�^">
		<br>
		<br>
		<br>
		<input type="reset" value="���͓��e�����Z�b�g����">
	</form>
	

	<!-- -------------------- -->
	<br>
	<br>
	<br>
	
	<br> ������������͂��Ă��������B
	<br>�i�������͂��Ȃ��ƑS�����o���܂��j
	<br>
	<br>

	<form action="/test_janne/Search" method="POST">

		ID: <input type="text" name="id"> 
		
		���O: <input type="text" name="name"> 
		
		���ʁF
		 <SELECT NAME="sei">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="�j">�j</OPTION>
			<OPTION VALUE="��">��</OPTION>
		</SELECT> 
		
		���܂ꂽ�N�F<input type="text" name="nen"> 
		<!--  <SELECT NAME="nen">
			<OPTION VALUE="" selected></OPTION>
			<OPTION VALUE="1990">1990</OPTION>
			<OPTION VALUE="1991">1991</OPTION>
			<OPTION VALUE="1993">1993</OPTION>
			<OPTION VALUE="2001">2001</OPTION>
			<OPTION VALUE="1965">1965</OPTION>
		</SELECT> -->
		
		 �Z��:<input type="text" name="address">
		<!--   <SELECT NAME="address">
		 	<OPTION VALUE="" selected></OPTION>
		 	<OPTION VALUE="��ʌ��������܎s">��ʌ��������܎s</OPTION>
		 	<OPTION VALUE="�����s���n��">�����s���n��</OPTION>
		 	<OPTION VALUE="�����s������s">�����s������s</OPTION>
		 	<OPTION VALUE="�_�ސ쌧���q">�_�ސ쌧���q</OPTION>
		 	<OPTION VALUE="���ꌧ�_��S���c��">���ꌧ�_��S���c��</OPTION>
		 </SELECT>-->
		<br>
		<br>
		<br>
		<input type="submit" value="����">
		<br>
		<br>
		<br>
		<input type="reset" value="���͓��e�����Z�b�g����">
	</form>
	
	