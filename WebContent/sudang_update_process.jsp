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
	String gajok=request.getParameter("gajok");
	String jikchak=request.getParameter("jikchak");
	String gunsok=request.getParameter("gunsok");
	String gitasudang=request.getParameter("gitasudang");
	
	pstmt=conn.prepareStatement("update sudang0111 set gajok=?,jikchak=?,gunsok=?,gitasudang=? where id=?");
	pstmt.setString(1, gajok);
	pstmt.setString(2, jikchak);
	pstmt.setString(3, gunsok);
	pstmt.setString(4, gitasudang);
	pstmt.setString(5, id);
	pstmt.executeUpdate();
	

%>
</body>
<script>
	alert("수정 완료");
	location.href="sudang_select.jsp";
</script>
</html>