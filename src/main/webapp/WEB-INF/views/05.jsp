<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	
	<body>
		<h1>el-jstl</h1>
		<h2>el</h2>
		
		<h3>리퀘스트의 파라미터 영역</h3>
		파라미터의 이효리 출력 name = ${param.name } <br> <!-- 파라미터값을 출력할 때는 requestScope처럼 줄일 수 없고 안된다 안돼 -->
		
		
		
		<h3>리퀘스트의 어트리뷰트 영역</h3>
		리퀘스트의 정성찬 출력 name = ${requestScope.userVO.name } <br>
		<%-- 리퀘스트의 정성찬 출력 name = ${userVO.name } <br> --%>
		
		
		
		<h3>세션의 어트리뷰트 영역</h3>
		<%-- 세션의 박명수 출력 name = ${sessionScope.userVO.name } <br> --%>
		<%-- 세션의 박명수 출력 name = ${userVO.name } <br> 
		=> 정성찬 출력됨. Scope 생략 시 별명이 같은 request로 나옴. 순서대로 출력--%>
		<!-- 같은 이름이면 앞에서부터 찾는다 -->
		<!-- page -> request -> session -> application Scope생략 시 우선 순위 -->
		
		
		세션의 박명수 출력 name = ${sessionScope.authUser.name } <br>
		세션의 박명수 출력 name = ${authUser.name } <br>
		
		
		
		
	</body>

</html>