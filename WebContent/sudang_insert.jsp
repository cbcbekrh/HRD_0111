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
<section>
<h1 id="h1">수당 등록 화면</h1>
<form name="form" method="post" action="sudang_insert_process.jsp">
<table border=1 id="t0">
<tr>
<th id="th">사원번호</th>
<td><input id="in" type="text" name="id"></td>
</tr>

<tr>
<th id="th">이름</th>
<td><input id="in" type="text" name="name"></td>
</tr>

<tr>
<th id="th">가족수당</th>
<td><input id="in" type="text" name="gajok"></td>
</tr>

<tr>
<th id="th">직책수당</th>
<td><input id="in" type="text" name="jikchak"></td>
</tr>

<tr>
<th id="th">근속수당</th>
<td><input id="in" type="text" name="gunsok"></td>
</tr>

<tr>
<th id="th">기타수당</th>
<td><input id="in" type="text" name="gitasudang"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b" type="button" value="등록" onclick="check()">
	<input id="b" type="button" value="취소" onclick="location.href='sudang_select.jsp'">
</td>
</tr>

</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>
function check(){
	if(document.form.id.value==""){
		alert("사원번호를 입력하세요");
		document.form.id.focus();
	}else if(document.form.name.value==""){
		alert("이름을 입력하세요");
		document.form.name.focus();
	}else if(document.form.gajok.value==""){
		alert("가족수당을 입력하세요");
		document.form.gajok.focus();
	}else if(document.form.jikchak.value==""){
		alert("직책수당을 입력하세요");
		document.form.jikchak.focus();
	}else if(document.form.gunsok.value==""){
		alert("근속수당을 입력하세요");
		document.form.gunsok.focus();
	}else if(document.form.gitasudang.value==""){
		alert("기타수당을 입력하세요");
		document.form.gitasudang.focus();
	}else{
		document.form.submit();
	}
}
</script>
</html>