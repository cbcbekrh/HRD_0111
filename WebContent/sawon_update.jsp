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
	String id=request.getParameter("id");
	pstmt=conn.prepareStatement("select name,dept,position,duty,phone,address from info0111 where id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String name=rs.getString("name");
		String dept=rs.getString("dept");
		String position=rs.getString("position");
		String duty=rs.getString("duty");
		String phone=rs.getString("phone");
		String address=rs.getString("address");
%>
<section>
<h1 id="h1">인사관리 사원수정 화면</h1><hr>
<form name="form" method="post" action="sawon_update_process.jsp">
<table border=1 id="t1">
<tr>
<th id="th">사원번호(자동생성)</th>
<td><input id="in" type="text" name="id" value="<%=id %>"></td>
</tr>

<tr>
<th id="th">성명</th>
<td><input id="in" type="text" name="name" value="<%=name %>"></td>
</tr>

<tr>
<th id="th">소속부서</th>
<td>
	<select name="dept" id="sel">
		<option value="10" <%= dept.equals("10") ? "selected" : "" %>>인사부</option>
		<option value="20" <%= dept.equals("20") ? "selected" : "" %>>기획부</option>
		<option value="30" <%= dept.equals("30") ? "selected" : "" %>>홍보부</option>
		<option value="40" <%= dept.equals("40") ? "selected" : "" %>>영업부</option>
		<option value="50" <%= dept.equals("50") ? "selected" : "" %>>경리부</option>
	</select>
</td>
</tr>

<tr>
<th id="th">직급</th>
<td>
	<input type="radio" name="position" value="1" <%= position.equals("1") ? "checked" : "" %>> 1급
	<input type="radio" name="position" value="2" <%= position.equals("2") ? "checked" : "" %>> 2급
	<input type="radio" name="position" value="3" <%= position.equals("3") ? "checked" : "" %>> 3급
	<input type="radio" name="position" value="4" <%= position.equals("4") ? "checked" : "" %>> 4급
	<input type="radio" name="position" value="5" <%= position.equals("5") ? "checked" : "" %>> 5급
</td>
</tr>

<tr>
<th id="th">직책</th>
<td><input id="in" type="text" name="duty" value="<%=duty %>"></td>
</tr>

<tr>
<th id="th">연락처</th>
<td><input id="in" type="text" name="phone" value="<%=phone %>"></td>
</tr>

<tr>
<th id="th">주소</th>
<td><input id="in" type="text" name="address" value="<%=address %>"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b" type="button" value="수정" onclick="check()">
	<input id="b" type="reset" value="취소" onclick="location.href='sawon_select.jsp'">
</td>
</tr>
<%} %>
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