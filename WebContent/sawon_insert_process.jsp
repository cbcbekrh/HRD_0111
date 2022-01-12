<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBConn.jsp" %>
<%
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String dept=request.getParameter("dept");
	String position=request.getParameter("position");
	String duty=request.getParameter("duty");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	
	pstmt=conn.prepareStatement("insert into info0111 values(?,?,?,?,?,?,?)");
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, dept);
	pstmt.setString(4, position);
	pstmt.setString(5, duty);
	pstmt.setString(6, phone);
	pstmt.setString(7, address);
	pstmt.executeUpdate();

	
%>

</body>
<script>
	alert("등록 완료");
	location.href="sawon_select.jsp";
</script>
</html>