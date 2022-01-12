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
	pstmt=conn.prepareStatement("select a.name,b.gajok,b.jikchak,b.gunsok,b.gitasudang from info0111 a, sudang0111 b where a.id=b.id and a.id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String name=rs.getString(1);
		int gajok=rs.getInt(2);
		int jikchak=rs.getInt(3);
		int gunsok=rs.getInt(4);
		int gitasudang=rs.getInt(5);
	
%>
<section>
<h1 id="h1">수당 수정 화면</h1>
<form name="form" method="post" action="sudang_update_process.jsp">
<table border=1 id="t0">
<tr>
<th id="th">사원번호</th>
<td><input id="in" type="text" name="id" readonly="readonly" value="<%=id %>"></td>
</tr>

<tr>
<th id="th">이름</th>
<td><input id="in" type="text" name="name" readonly="readonly" value="<%=name %>"></td>
</tr>

<tr>
<th id="th">가족수당</th>
<td><input id="in" type="text" name="gajok" value="<%=gajok %>"></td>
</tr>

<tr>
<th id="th">직책수당</th>
<td><input id="in" type="text" name="jikchak" value="<%=jikchak %>"></td>
</tr>

<tr>
<th id="th">근속수당</th>
<td><input id="in" type="text" name="gunsok" value="<%=gunsok %>"></td>
</tr>

<tr>
<th id="th">기타수당</th>
<td><input id="in" type="text" name="gitasudang" value="<%=gitasudang %>"></td>
</tr>

<tr>
<td colspan=2 align=center>
	<input id="b" type="submit" value="수정">
	<input id="b" type="button" value="취소" onclick="location.href='sudang_select.jsp'">
</td>
</tr>

<%} %>
</table>
</form>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>