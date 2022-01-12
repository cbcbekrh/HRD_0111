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
	String a=request.getParameter("dunggub");
	String b=request.getParameter("salary");
	
	pstmt=conn.prepareStatement("insert into hobong0111 values(?,?)");
	pstmt.setString(1, a);
	pstmt.setString(2, b);
	pstmt.executeUpdate();

	
%>

</body>
<script>
	alert("등록 완료");
	location.href="hobong_insert.jsp";
</script>
</html>