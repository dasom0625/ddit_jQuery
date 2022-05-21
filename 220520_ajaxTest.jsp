<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
p{
font-size: 2.0em;
font-weight: bold;
}
span{
color : red;
}
</style>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");	//한글깨지지않게 설정하기
	//담아낼 ID와 Name
	String userId = request.getParameter("id");
	String userName = request.getParameter("name");
	
	//CRUD처리한 결과 응답 => text형식으로 만들기

%>
<%=userId %>님 환영합니다.<p>
<%=userName %>님<span>건강하고 행복하세요.</span></p>

</body>
</html>
