<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
<%@ include file="nav.jsp" %>
<%@ include file="DBConn.jsp" %>
<section>
<h1 id="h1">인사관리 호봉 등록 화면</h1><hr>
<form name="form" method="post" action="hobong_insert_process.jsp">
<table border=1 id="t0">

<tr>
<th id="th">직급</th>
<td>
	<select name="dunggub" id="sel1">
		<option value="1">1급</option>
		<option value="2">2급</option>
		<option value="3">3급</option>
		<option value="4">4급</option>
		<option value="5">5급</option>
	</select>
</td>
</tr>

<tr>
<th id="th">급여</th>
<td><input id="in" type="text" name="salary"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b" type="submit" value="등록">
	<input id="b" type="button" value="취소" onclick="location.href='index.jsp'">
</td>
</tr>
</table><hr>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>