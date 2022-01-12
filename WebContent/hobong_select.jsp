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
<h1 id="h1">호봉 정보 조회</h1><hr>
<table border=1 id="t0">
<tr>
<th id="th">no</th>
<th id="th">등급</th>
<th id="th">급여</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select * from hobong0111");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String dunggub=rs.getString("dunggub"); 
		String salary=rs.getString("salary");		
		no++;
	

%>
<tr>
<td id="td"><%=no %></td>
<td id="td"><a href="#"><%=dunggub+"급" %></a></td>
<td id="td"><%=salary %></td>
</tr>



<%} %>
</table><hr>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>