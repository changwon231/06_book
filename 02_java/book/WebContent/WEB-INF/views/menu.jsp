<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메뉴가 들어갈 위치 입니다.</title>
</head>
<body>
<!-- 메뉴가 들어갈 위치 입니다. -->
<ul>
<!-- 로그인 되지 않아서 세션이 없을 때 보여줄 메뉴 -->
<%-- 	<c:if test="${empty sessionscope.userId}">
		<li><a href="">로그인 하기</a></li>
	</c:if>
	
	<c:if test="${not empty sessionscope.userId}">	
 --%>		
 		<li><a href="${pageContext.request.contextPath}/main?action=select">책 목록 보기</a></li>
		<li><a href="${pageContext.request.contextPath}/main?action=insert">책 정보 등록</a></li>
	<%--<li><a href="">로그아웃</a></li>
	 		</c:if> --%>
</ul>


</body>
</html>