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
	String gajok=request.getParameter("gajok");
	String jikchak=request.getParameter("jikchak");
	String gunsok=request.getParameter("gunsok");
	String gitasudang=request.getParameter("gitasudang");	
	
	pstmt=conn.prepareStatement("select name from info0111 where id=?");
	pstmt.setString(1, id);
	rs=pstmt.executeQuery();
	if(rs.next()){
		String name2=rs.getString("name");
		
		if(name.equals(name2)){
			pstmt=conn.prepareStatement("insert into sudang0111 values(?,?,?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, gajok);
			pstmt.setString(3, jikchak);
			pstmt.setString(4, gunsok);
			pstmt.setString(5, gitasudang);
			pstmt.executeUpdate();
			%>
				<script>
					alert("등록 완료");
					location.href="sudang_select.jsp";
				</script>
			<%
			
		}else{
			%>
				<script>
					alert("사원번호와 이름이 일치하지 않습니다.");
					history.back(-1);
				</script>
			<%
		}
		
	}else{
		%>
			<script>
				alert("사원번호를 잘못 입력하셨습니다.")
				history.back(-1);
			</script>
		<%
	}
	
	

%>
</body>
</html>