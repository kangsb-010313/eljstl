<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!-- localhost:8080/eljstl/03?id=you&pw=1111&name=재석&num1=100&num2=200 -->
 
 
    
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
	
		<h1>el-jstl</h1>
		<h2>el(파라미터)</h2>
		
		<h3>스클립틀릿</h3>
		id = <%= request.getParameter("id") %> <br>
		pw = <%= request.getParameter("pw") %> <br>
		name = <%= request.getParameter("name") %> <br>
		num1 = <%= request.getParameter("num1") %> <br>
		num2 = <%= request.getParameter("num2") %> <br>
	
		<h3>el-파라미터값 표현</h3>
		id = ${param.id} <br>
		pw = ${param.pw} <br>
		name = ${param.name} <br>
		num1 = ${param.num1} <br>
		num2 = ${param.num2} <br>
	
		
	
	
	
	
	
	</body>
	
</html>