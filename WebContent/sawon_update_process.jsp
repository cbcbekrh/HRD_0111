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
	
	pstmt=conn.prepareStatement("update info0111 set name=?,dept=?,position=?,duty=?,phone=?,address=? where id=?");
	pstmt.setString(7, id);
	pstmt.setString(1, name);
	pstmt.setString(2, dept);
	pstmt.setString(3, position);
	pstmt.setString(4, duty);
	pstmt.setString(5, phone);
	pstmt.setString(6, address);
	pstmt.executeUpdate();

	
%>

</body>
<script>
	alert("수정 완료");
	location.href="sawon_select.jsp";
</script>
</html>