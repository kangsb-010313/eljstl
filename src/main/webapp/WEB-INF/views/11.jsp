<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<h1>el-jstl</h1>
		<h2>jstl(문법)</h2>
		<h3>스클립틀릿(if else)</h3>
		
		<%
			String no = request.getParameter("color");
		%>
		
		
		<% if("1".equals(no)){ %>
				<span style="color: red">빨강</span> 
				
		<% }else if("2".equals(no)){ %>
				<span style="color: green">초록</span>
				
		<% }else if("3".equals(no)){ %>
				<span style="color: blue">파랑</span> 
				
		<% }else { %>
				<span>잘못된 color 값</span>
				
		<% } %>
		
		<!-- 
		if(1이면){
			<span style="color: red">빨강</span>
			
		}else if(2이면){
			<span style="color: green">초록</span>
			
		}else if(3이면){
			<span style="color: blue">파랑</span>
		}else {
		 	<span>잘못된 파라미터</span>
		}
		-->
		
		
		<br>
		---------------------------------------------------
		<h3>jstl(if else --> choose when : switch case 모양)</h3>
		
		<c:choose>
			<c:when test="${param.color == 1 }">
				<span style="color: red">빨강</span>
			</c:when>
			<c:when test="${param.color == 2 }">
				<span style="color: green">초록</span>
			</c:when>
			<c:when test="${param.color == 3 }">
				<span style="color: blue">파랑</span>
			</c:when>
			<c:otherwise>
				<span>잘못된 파라미터</span>
			</c:otherwise>
		</c:choose>
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	</body>
</html>