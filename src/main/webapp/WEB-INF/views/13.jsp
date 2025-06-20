
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
	
		<h2>jstl(반복문)</h2>
	
		<h3>스클립틀릿</h3>
		
		<%@ page import="java.util.List" %>
		<%@ page import="com.javaex.vo.UserVo" %>
		<%
			List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
		%>
		
		<table border="1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
				</tr>
			</thead>
			<tbody>
				
				<%for(UserVo userVO : userList){%>
					<tr>
						<td><%=userVO.getNo()%></td>
						<td><%=userVO.getName()%></td>
						<td><%=userVO.getEmail()%></td>
						<td><%=userVO.getPassword()%></td>
						<td><%=userVO.getGender()%></td>
					</tr>
				<%}%>
				
				<!-- 
				<%for(int i=0; i<userList.size(); i++){%>
					<tr>
						<td><%=userList.get(i).getNo()%></td>
						<td><%=userList.get(i).getName()%></td>
						<td><%=userList.get(i).getEmail()%></td>
						<td><%=userList.get(i).getPassword()%></td>
						<td><%=userList.get(i).getGender()%></td>
					</tr>
				<%}%>
				-->
			</tbody>
		
		</table>
		
		
		
		
		<h3>jstl</h3>
		
		<table border = "1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach items="${userList}" var="userVO"> <!--  Scope 생략 -->
					<tr>
						<td>${userVO.no}</td>
						<td>${userVO.name}</td>
						<td>${userVO.email}</td>
						<td>${userVO.password}</td>
						<td>${userVO.gender}</td>
					</tr>
				</c:forEach>
				
				
			</tbody>
		</table>
		
		
		
		
		<h3>추가 기능</h3>
		
		<table border = "1">
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>이메일</th>
					<th>패스워드</th>
					<th>성별</th>
					<th>index</th>
					<th>count</th>
				</tr>
			</thead>
			
			<tbody>
			
				<c:forEach items="${userList}" var="userVO" begin="2" end="5" varStatus="status"> <!--  Scope 생략 -->
					<tr>
						<td>${userVO.no}</td>
						<td>${userVO.name}</td>
						<td>${userVO.email}</td>
						<td>${userVO.password}</td>
						<td>${userVO.gender}</td>
						<td>${status.index}</td>
						<td>${status.count}</td>
					</tr>
				</c:forEach>
				
				
			</tbody>
		</table>
	
	
	</body>
</html>
