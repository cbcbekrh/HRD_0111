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
<h1 id="h1">수당 정보 조회</h1><hr>
<table border=1 id="t2">
<tr>
<th id="th">no</th>
<th id="th">사원번호</th>
<th id="th">이름</th>
<th id="th">가족수당</th>
<th id="th">직책수당</th>
<th id="th">근속수당</th>
<th id="th">기타수당</th>
<th id="th">수당합계</th>
<th id="th">구분</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select b.id,b.name,to_char(a.gajok,'999,999,999')as gajok,to_char(a.jikchak,'999,999,999')as jikchak,to_char(a.gunsok,'999,999,999') as gunsok,to_char(a.gitasudang,'999,999,999')as gitasudang,to_char((a.gajok+a.jikchak+a.gunsok+a.gitasudang),'999,999,999') as hab from sudang0111 a, info0111 b where a.id=b.id");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString("id"); 
		String name=rs.getString("name");	
		String gajok=rs.getString("gajok");
		String jikchak=rs.getString("jikchak");
		String gunsok=rs.getString("gunsok");
		String gitasudang=rs.getString("gitasudang");
		String hab=rs.getString("hab");		
		no++;		
%>
<tr>
<td id="td"><%=no %></td>
<td id="td"><%=id %></td>
<td id="td"><%=name %></td>
<td id="td1"><%=gajok %></td>
<td id="td1"><%=jikchak %></td>
<td id="td1"><%=gunsok %></td>
<td id="td1"><%=gitasudang %></td>
<td id="td1"><%=hab %></td>
<td id="td">
	<a href="sudang_update.jsp?id=<%=id %>">수정/</a>
	<a href="sudang_delete.jsp?id=<%=id %>">삭제</a>
</td>
</tr>
<%} %>
</table><hr>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>