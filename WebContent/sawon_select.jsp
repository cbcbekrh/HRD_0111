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
<h1 id="h1">사원 정보 조회</h1>
<table border=1 id="t2">
<tr>
<th id="th">no</th>
<th id="th">성명</th>
<th id="th">사번</th>
<th id="th">직급</th>
<th id="th">직책</th>
<th id="th">연락처</th>
<th id="th">소속부서</th>
<th id="th">주소</th>
</tr>

<%
	int no=0;
	pstmt=conn.prepareStatement("select * from info0111");
	rs=pstmt.executeQuery();
	while(rs.next()){
		String id=rs.getString("id"); 
		String name=rs.getString("name");
		String dept=rs.getString("dept");
		if(dept.equals("10")){
			dept="인사부";
		}else if(dept.equals("20")){
			dept="기획부";
		}else if(dept.equals("30")){
			dept="홍보부";
		}else if(dept.equals("40")){
			dept="영업부";
		}else{
			dept="경리부";
		}
		String position=rs.getString("position");
		String duty=rs.getString("duty");
		String phone=rs.getString("phone");
		String address=rs.getString("address");
		no++;
	

%>
<tr>
<td id="td"><%=no %></td>
<td id="td"><%=name %></td>
<td id="td"><a href="sawon_update.jsp?id=<%=id %>"><%=id %></a></td>
<td id="td"><%=position %></td>
<td id="td"><%=duty %></td>
<td id="td"><%=phone %></td>
<td id="td"><%=dept %></td>
<td id="td"><%=address %></td>
</tr>



<%} %>
</table>
</section>
<%@ include file="footer.jsp" %>
</body>
</html>