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
<h1 id="h1">급여 정보 조회</h1><hr>
<table border=1 id="t2">
<tr>
<th id="th">no</th>
<th id="th">사원번호</th>
<th id="th">이름</th>
<th id="th">급여</th>
<th id="th">가족수당</th>
<th id="th">직책수당</th>
<th id="th">근속수당</th>
<th id="th">기타수당</th>
<th id="th">급여합계</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select a.id,b.name,to_char(c.salary,'999,999,999'),to_char(a.gajok,'999,999,999'),to_char(a.jikchak,'999,999,999'),to_char(a.gunsok,'999,999,999'),to_char(a.gitasudang,'999,999,999'),to_char((a.gajok+a.jikchak+a.gunsok+a.gitasudang+c.salary),'999,999,999') from sudang0111 a, info0111 b, hobong0111 c where a.id=b.id and b.position=c.dunggub");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString(1);
		String name=rs.getString(2);
		String salary=rs.getString(3);
		String gajok=rs.getString(4);
		String jikchak=rs.getString(5);
		String gunsok=rs.getString(6);
		String gita=rs.getString(7);
		String hab=rs.getString(8);
		no++;		

%>
<tr>
<td id="td"><%=no %></td>
<td id="td"><%=id %></td>
<td id="td"><%=name %></td>
<td id="td1"><%=salary %></td>
<td id="td1"><%=gajok %></td>
<td id="td1"><%=jikchak %></td>
<td id="td1"><%=gunsok %></td>
<td id="td1"><%=gita %></td>
<td id="td1"><%=hab %></td>
</tr>
<%} %>
</table><hr>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>