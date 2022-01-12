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
<%
	int id=0;
	pstmt=conn.prepareStatement("select id from info0111 order by id desc");
	rs=pstmt.executeQuery();
	if(rs.next()){
		id=rs.getInt("id")+1;
	}
	
%>
<section>
<h1 id="h1">인사관리 사원등록 화면</h1><hr>
<form name="form" method="post" action="sawon_insert_process.jsp">
<table border=1 id="t1">
<tr>
<th id="th">사원번호(자동생성)</th>
<td><input id="in" type="text" name="id" value="<%=id %>">마지막번호+1</td>
</tr>

<tr>
<th id="th">성명</th>
<td><input id="in" type="text" name="name"></td>
</tr>

<tr>
<th id="th">소속부서</th>
<td>
	<select name="dept" id="sel">
		<option value="10">인사부</option>
		<option value="20">기획부</option>
		<option value="30">홍보부</option>
		<option value="40">영업부</option>
		<option value="50">경리부</option>
	</select>
</td>
</tr>

<tr>
<th id="th">직급</th>
<td>
	<input type="radio" name="position" value="1"> 1급
	<input type="radio" name="position" value="2"> 2급
	<input type="radio" name="position" value="3"> 3급
	<input type="radio" name="position" value="4"> 4급
	<input type="radio" name="position" value="5"> 5급
</td>
</tr>

<tr>
<th id="th">직책</th>
<td><input id="in" type="text" name="duty"></td>
</tr>

<tr>
<th id="th">연락처</th>
<td><input id="in" type="text" name="phone"></td>
</tr>

<tr>
<th id="th">주소</th>
<td><input id="in" type="text" name="address"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b" type="button" value="등록" onclick="check()">
	<input id="b" type="reset" value="취소">
</td>
</tr>
</table><hr>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
<script>
function check(){
	var cnt=0;
	var position=document.getElementsByName("position");
	for(var i=0; i<position.length; i++){
		if(position[i].checked == true){
			cnt++;
		}
	}	
	
	if(document.form.name.value==""){
		alert("이름이 입력되지 않았습니다.");
		document.form.name.focus();		
	}else if(cnt == 0){
		alert("직급을 체크해주세요.");			
	}else{
		document.form.submit();
	}
}
</script>
</html>